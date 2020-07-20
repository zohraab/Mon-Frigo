//
//  Test2ContentView.swift
//  Mon Frigo
//
//  Created by Joséphine Delobel on 23/03/2020.
//  Copyright © 2020 Joséphine Delobel. All rights reserved.
//

import SwiftUI

// test

struct Test2ContentView: View {
    let ingredients = ["Carotte", "Courgette", "Pomme de terre", "Creme fraiche",  "Mascarpone", "Poulet", "Saumon", "Beurre", "Oeuf"]
    
    @State var ingredient1 = ""
    @State var showIngredients = false
    @State private var showCancelButton: Bool = false
    
    var body: some View {
        VStack {
            Text("Recherche d'un ingrédient")
            HStack {
                TextField("Ingrédient 1",
                          text: $ingredient1,
                          onEditingChanged: { changing in self.showIngredients = true
                            self.showCancelButton = true
                }).textFieldStyle(RoundedBorderTextFieldStyle())
                
//                NavigationLink(destination: info(),  label: {
//                    Image(systemName: "questionmark.circle")
//                })
                
                if showCancelButton {
                    Button(action: {
                        UIApplication.shared.endEditing(force: true) // this must be placed before the other commands here
                        self.ingredient1 = ""
                        self.showCancelButton = false
                        self.showIngredients = false
                    }) {
                        Text("Fermer").opacity(showCancelButton == false ? 0 : 1)}
                }
                
               
            }
            
            
                if showIngredients {
                List {
                    //  display filtered list of names
                ForEach(ingredients.filter{$0.hasPrefix(ingredient1) || ingredient1 == ""}, id:\.self) {
                        ingredient1 in Text(ingredient1)
                    }
                }
            }
            
           
            
        }.padding()
        
    }
}

extension UIApplication {
    func endEditing(force: Bool) {
        self.windows
            .filter{$0.isKeyWindow}
            .first?
            .endEditing(force)
    }
}

struct Test2ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Test2ContentView()
    }
}
