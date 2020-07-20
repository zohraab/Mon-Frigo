//
//  MenuTabBarView.swift
//  Mon Frigo
//
//  Created by Joséphine Delobel on 16/03/2020.
//  Copyright © 2020 Joséphine Delobel. All rights reserved.
//

import SwiftUI

struct MenuTabBarView: View {
    var body: some View {
        TabView {
            IngredientsView(ingredient1: "", ingredient2: "")
                .tabItem{Image(systemName: "magnifyingglass")
                    //.font(.system(size: 30))
                    Text("Recherche")
            }
            
            ListeRecettesView(breakfastRecipes: recettes, lunchRecipes: recettes, snackRecipes: recettes)
                .tabItem {
                    Image(systemName: "list.dash")
                        //.font(.system(size: 30))
                    Text("Recettes")
            }
            
            accueil()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                        //.font(.system(size: 30))
                    Text("Profil")
            }
        }.edgesIgnoringSafeArea(.top)
    }
}

struct MenuTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        MenuTabBarView()
    }
}
