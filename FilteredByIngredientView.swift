//
//  FilteredByIngredientView.swift
//  Mon Frigo
//
//  Created by Joséphine Delobel on 24/03/2020.
//  Copyright © 2020 Joséphine Delobel. All rights reserved.
//

import SwiftUI

struct FilteredByIngredientView: View {
    
    var ing1 : String = ""
    var ing2 : String = ""
   
    var body: some View {
        VStack{
            //NavigationView {
                List {
                    ForEach(filteringByIngredients()) { currentRecette in
                        NavigationLink(destination : DetailRecetteView(recipe : currentRecette)){
                            RecettesRow(recipe : currentRecette)
                        }
                    }
                    
                    
                }.navigationBarTitle(Text("Recettes avec vos ingrédients"), displayMode : .inline)
                    
                
            //}
            
        }
    }
    func filteringByIngredients() -> [Recette] {
        return recettes.filter({$0.ingredients.contains{ingredient in
            ingredient.name == ing1 || ingredient.name == ing2
            }})
        
    }
}





struct FilteredByIngredientView_Previews: PreviewProvider {
    static var previews: some View {
        FilteredByIngredientView(ing1 : "", ing2: "")
    }
}
