//
//  DetailRecetteView.swift
//  Mon Frigo
//
//  Created by Joséphine Delobel on 19/03/2020.
//  Copyright © 2020 Joséphine Delobel. All rights reserved.
//

import SwiftUI

struct DetailRecetteView: View {
    
    @State var recipe : Recette
    @State var favoriteRecipes = false
    
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Text(recipe.titre).font(.system(size:40)).multilineTextAlignment(.center)
                    Spacer().frame(height: 20)
                    HStack {
                        Spacer()
                        Image(recipe.image).renderingMode(.original).resizable().frame(width:120, height: 120)
                        Spacer()
                        VStack {
                            Text("Note de la rédaction").font(.system(size:10)).padding(.bottom, -25.0)
                            HStack {
                                
                                RatioStars(starNumber: recipe.etoile)
                                
                            }.padding()
                            
                            Text("Temps de préparation :").font(.system(size:18))
                            
                            Text("\(recipe.tempsDePreparation)  mn").font(.system(size:14)).padding()
                            
                            Text("Temps de cuisson :").font(.system(size:18))
                            
                            Text("\(recipe.tempsDeCuisson) mn").font(.system(size:14)).padding()
                            
                            // met ou enlève la recette des favoris
                            Button(action:{
                                if (Defaults().isFavorite(id: self.recipe.id) == false){
                                    Defaults().addFavorites(id: self.recipe.id)} else {Defaults().removeAllFavorites(id: self.recipe.id)}
                                self.favoriteRecipes.toggle()
                            }, label:{ if favoriteRecipes == true {Image(systemName:"heart.fill")} else {Image(systemName:"heart")}
                                
                                
                            }
                            )
                            
                        }
                        Spacer()
                    }.onAppear(){self.favoriteRecipes = Defaults().isFavorite(id: self.recipe.id)}
                    
                    
                   VStack(alignment:.leading) {
                    Text("Liste des ingrédients (pour \(recipe.numberPersons)) :").font(.headline).padding()
                        ForEach(recipe.ingredients, id:\.id) {ingredient in
                            HStack{
                            Text("\(ingredient.name)")
                                .font(.system(size:14))
                                Spacer()
                                Text("\(ingredient.quantity)")
                                .font(.system(size:14))
                            }}
                    
                    Text("Préparation :").font(.headline).padding()
                    
                    
                        ForEach(recipe.etapes, id:\.id) {step in
                            Text("\(step.numEtape):\t\(step.descriptionEtape)").font(.system(size:14))
                            }
                        Spacer()
                    }
                
            }.padding()
       }
    }
}


struct RatioStars: View {
    var starNumber: Int
    
    var body: some View {
        HStack{
            if (starNumber == 0) {
                Image(systemName:"star")
                Image(systemName:"star")
                Image(systemName:"star")
                Image(systemName:"star")
                Image(systemName:"star")
            } else if (starNumber == 1){
                Image(systemName:"star.fill")
                Image(systemName:"star")
                Image(systemName:"star")
                Image(systemName:"star")
                Image(systemName:"star")
            } else if (starNumber == 2){
                Image(systemName:"star.fill")
                Image(systemName:"star.fill")
                Image(systemName:"star")
                Image(systemName:"star")
                Image(systemName:"star")
            } else if (starNumber == 3){
                Image(systemName:"star.fill")
                Image(systemName:"star.fill")
                Image(systemName:"star.fill")
                Image(systemName:"star")
                Image(systemName:"star")
            } else if (starNumber == 4){
                Image(systemName:"star.fill")
                Image(systemName:"star.fill")
                Image(systemName:"star.fill")
                Image(systemName:"star.fill")
                Image(systemName:"star")
            } else if (starNumber == 5){
                Image(systemName:"star.fill")
                Image(systemName:"star.fill")
                Image(systemName:"star.fill")
                Image(systemName:"star.fill")
                Image(systemName:"star.fill")
            }
        }
    }
}



struct DetailRecetteView_Previews: PreviewProvider {
    static var previews: some View {
        DetailRecetteView(recipe:recettes[1])
    }
}

