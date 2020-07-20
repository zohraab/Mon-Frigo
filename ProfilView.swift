//
//  ProfilView.swift
//  Mon Frigo
//
//  Created by Joséphine Delobel on 19/03/2020.
//  Copyright © 2020 Joséphine Delobel. All rights reserved.
//

import SwiftUI

struct ProfilView: View {
    
   @State var favoriteRecipes = Defaults().allFavoritesRecipes
    
    var body: some View {
        
            VStack {
                
                Spacer()
                    .frame(width: 18.0, height: 104.0)
                
                Text("\(meUser.pseudo)")
                    .font(.largeTitle)
                
                Spacer().frame(height: 100)
                
                
                VStack(alignment:.leading) {
                    
                    Text("Mes recettes favorites:")
                        .font(.title)
                        .padding(34.0)
                    // variables favoris
                    
                    ForEach(favoriteRecipes) {recipe in
                        NavigationLink(destination: DetailRecetteView(recipe: recipe)){
                            Text("\(recipe.id):\t\(recipe.titre)")
                        }
                    }.padding(.trailing, 56.0)
                    
                }
                Spacer()
                
                NavigationLink(destination: accueil()) {
                    Text("Déconnexion").padding(.horizontal)
                                        .background(Color.pink)
                                        .foregroundColor(.white)
                                        .cornerRadius(25.0)
                }
                Spacer().frame(height: 10)
                                
            }.navigationBarTitle(Text("Profil"), displayMode : .inline)
                .navigationBarItems(trailing:
                    NavigationLink(destination: ModifyProfileView(pseudo: "", email: "", password: "")) {
                        Text("Modifier")
                    }
            )
                .onAppear(){self.favoriteRecipes = Defaults().allFavoritesRecipes}
        
    }
}


struct ProfilView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilView()
    }
}

