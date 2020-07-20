//
//  IngredientsView.swift
//  Mon Frigo
//
//  Created by Joséphine Delobel on 19/03/2020.
//  Copyright © 2020 Joséphine Delobel. All rights reserved.
//

import SwiftUI

struct IngredientsView: View {
    
    let ingredients = ["Potiron", "Carotte", "Aubergine", "Poivron",  "Artichaut", "Asperge", "Concombre", "Courgette", "Chou blanc", "Céleri", "Epinard", "Endive", "Echalote", "Betterave", "Avocat", "Tomate", "Ail", "Brocoli", "Fruit de la passion", "Banane", "Citron vert", "Navet", "Pomme de terre", "Papaye", "Haricot", "Noix de coco", "Melon", "Pasteque", "Fraise", "Laitue", "Raisin", "Framboise", "Abricot", "Prune", "Ananas", "Pomme", "Poire", "Cerise", "Cassis", "Myrtille", "Radis", "Amande", "Noix de cajou", "Orange", "Pamplemousse", "Kiwi", "Poireau", "Petit pois", "Pêche", "Fève", "Lentille", "Choux de Bruxelles", "Rhubarbe", "Chou-Fleur", "Patate douce", "Datte", "Figue", "Cèpe", "Clémentine", "Fenouil", "Groseille", "Mirabelle", "Coing", "Saumon", "Anchois", "Cabillaud", "Dorade", "Espadon", "Hareng", "Maquereau", "Merlan", "Morue", "Sardine", "Sole", "Thon", "Poulet", "Beurre", "Lait", "Crème fraiche", "Oeufs", "Mascarpone", "Farine", "Porc", "Veau", "Canard", "Dinde", "Lapin", "Agneau", "Mouton", "Boeuf", "Champignons de Paris", "Poids gourmands"]
    
    @State var ingredient1: String = ""
    @State var showIngredients = false
    @State private var showCancelButton: Bool = false
    
    @State var ingredient2: String = ""
    @State var showListIngredients = false
    @State private var showSecondCancelButton: Bool = false
    
       
    
    var body: some View {
        NavigationView{
            VStack {
                HStack{
                    TextField("Ingrédient 1", text: $ingredient1, onEditingChanged: { changing in self.showIngredients = true
                        self.showCancelButton = true
                    }).textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    
                    
                    if showCancelButton {
                        Button(action: {
                            UIApplication.shared.endEditing(force: true) // this must be placed before the other commands here
                            self.ingredient1 = ""
                            self.showCancelButton = false
                            self.showIngredients = false
                        }) {
                            Text("Fermer")}
                    }
                    
                }
                if showIngredients {
                    List {
                        //  display filtered list of ingredients
                        ForEach(ingredients.filter{$0.hasPrefix(ingredient1) || ingredient1 == ""}, id:\.self) {
                            ingredient1 in
                            Button(action: {
                                UIApplication.shared.endEditing(force: true)
                                self.ingredient1 = ingredient1
                                self.showCancelButton = false
                                self.showIngredients = false
                            }, label:{Text(ingredient1)})
                        }
                    }
                }
                else {
                    NavigationLink(destination: info(ingredient: whichIngredients(ingredientName : ingredient1)),  label: {
                                    HStack{
                                        Image(systemName: "questionmark.circle")
                                        Text("Informations nutritionnelles")
                                    }
                                    })
                }
                
                // 2eme ingrédient à rechercher
                HStack{
                    TextField("Ingrédient 2", text: $ingredient2, onEditingChanged: { changing in self.showListIngredients = true
                        self.showSecondCancelButton = true
                    }).textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    
                    
                    if showSecondCancelButton {
                        Button(action: {
                            UIApplication.shared.endEditing(force: true) // this must be placed before the other commands here
                            self.ingredient2 = ""
                            self.showSecondCancelButton = false
                            self.showListIngredients = false
                        }) {
                            Text("Fermer")}
                    }
                    
                }
                if showListIngredients {
                    List {
                        ForEach(ingredients.filter{$0.hasPrefix(ingredient2) || ingredient2 == ""}, id:\.self) {
                            ingredient2 in
                            Button(action: {
                                UIApplication.shared.endEditing(force: true)
                                self.ingredient2 = ingredient2
                                self.showSecondCancelButton = false
                                self.showListIngredients = false
                            }, label:{Text(ingredient2)})
                        }
                    }
                }
                else {
                    NavigationLink(destination: info(ingredient: whichIngredients(ingredientName : ingredient2)),  label: {
                        HStack{
                            Image(systemName: "questionmark.circle")
                            Text("Informations nutritionnelles")
                        }
                    })
                }
                
                if showIngredients == false && showListIngredients == false {
                    Spacer().frame(height: 100)
                    
                    NavigationLink(destination: FilteredByIngredientView(ing1 : ingredient1, ing2: ingredient2)){
                        Text("Recettes")
                            .padding()
                            .background(Color.pink)
                            .foregroundColor(.white)
                            .cornerRadius(100.0)
                    }
                }
                
            }.padding().navigationBarTitle(Text("Recherche par ingrédient"), displayMode : .inline)
        }
    }
    
    func whichIngredients(ingredientName : String) -> Ingredient {
        if let ingredient = listIngredients.filter({$0.name.contains(ingredientName)}
        ).first{
            return ingredient
        }
            return listIngredients[0]
    }
    
}


struct IngredientsView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientsView(ingredient1: "", ingredient2: "")
    }
}
