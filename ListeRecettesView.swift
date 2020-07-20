//
//  ListeRecettesView.swift
//  Mon Frigo
//
//  Created by Joséphine Delobel on 16/03/2020.
//  Copyright © 2020 Joséphine Delobel. All rights reserved.
//

import SwiftUI

struct ListeRecettesView: View {
    
    @State var isToggleBreakfastOn: Bool = false
    @State var isToggleLunchOn: Bool = false
    @State var isToggleSnackOn: Bool = false
    @State var breakfastRecipes : [Recette]
    @State var lunchRecipes : [Recette]
    @State var snackRecipes : [Recette]
    
    var body: some View {
        VStack{
            NavigationView {
                List {
                    if isToggleBreakfastOn == false && isToggleLunchOn == false && isToggleSnackOn == false {
                        ForEach(recettes) { currentRecette in
                            NavigationLink(destination : DetailRecetteView(recipe : currentRecette)){
                                RecettesRow(recipe : currentRecette)
                            }
                        }
                    }
                    
                    if isToggleBreakfastOn == true {
                        ForEach(breakfastRecipes) { currentRecette in
                            NavigationLink(destination : DetailRecetteView(recipe : currentRecette)){
                                RecettesRow(recipe : currentRecette)
                            }
                        }
                    }
                    
                  if isToggleLunchOn == true {
                        ForEach(lunchRecipes) { currentRecette in
                            NavigationLink(destination : DetailRecetteView(recipe : currentRecette)){
                                RecettesRow(recipe : currentRecette)
                            }
                        }
                    }
                    
                    if isToggleSnackOn == true {
                        ForEach(snackRecipes) { currentRecette in
                            NavigationLink(destination : DetailRecetteView(recipe : currentRecette)){
                                RecettesRow(recipe : currentRecette)
                            }
                        }
                    }
                    
                }.navigationBarTitle(Text("Recettes"), displayMode : .inline)
                    .navigationBarItems(trailing:
                        NavigationLink(destination: FiltresView(
                            isFilterToggleBreakfastOn: $isToggleBreakfastOn,
                            isFilterToggleLunchOn: $isToggleLunchOn,
                            isFilterToggleSnackOn: $isToggleSnackOn
                        )) {
                            Text("Filtres")
                        }
                )
            }
            
        }.onAppear(){
            self.breakfastRecipes = recettes.filter({$0.dishType == .breakfast})
            self.lunchRecipes = recettes.filter({$0.dishType == .lunch})
            self.snackRecipes = recettes.filter({$0.dishType == .snack})
        }
        
        
    }
    mutating func filteringRecipes() {
        self.breakfastRecipes = recettes.filter({$0.dishType == .breakfast})
        self.lunchRecipes = recettes.filter({$0.dishType == .lunch})
        self.snackRecipes = recettes.filter({$0.dishType == .snack})
    }
   
}


struct RecettesRow : View{
    let recipe : Recette
    var body : some View{
        HStack{
            Image("\(recipe.image)").renderingMode(.original).resizable().frame(width:80, height: 80)
            VStack(alignment: .leading){
                Text("\(recipe.titre)").foregroundColor(.black).bold().font(.system(size:20))
                //RatioStars(starNumber: recipe.etoile)
                Text("Temps de préparation : \(recipe.tempsDePreparation) min").foregroundColor(.black)
                Text("Temps de cuisson : \(recipe.tempsDeCuisson) min").foregroundColor(.black)
                
            }
            
        }.padding()
    }
}




struct ListeRecettesView_Previews: PreviewProvider {
    static var previews: some View {
        ListeRecettesView(breakfastRecipes: recettes, lunchRecipes: recettes, snackRecipes: recettes)
    }
}

