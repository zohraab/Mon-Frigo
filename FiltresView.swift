//
//  FiltresView.swift
//  Mon Frigo
//
//  Created by Joséphine Delobel on 16/03/2020.
//  Copyright © 2020 Joséphine Delobel. All rights reserved.
//

import SwiftUI

struct FiltresView: View {
    
    @Binding var isFilterToggleBreakfastOn: Bool
    @Binding var isFilterToggleLunchOn: Bool
    @Binding var isFilterToggleSnackOn: Bool
    
    
    var body: some View {
        VStack{
            
                Form {
                      Section(header: Text("Quel repas voulez-vous?")) {
                          Toggle(isOn: $isFilterToggleBreakfastOn, label: {
                              Text("Petit déjeuner")
                          })
                        Toggle(isOn: $isFilterToggleLunchOn, label: {
                            Text("Déjeuner ou Dîner")
                        })
//                        Toggle(isOn: $isFilterToggleDinnerOn, label: {
//                            Text("Dîner")
//                        })
                        Toggle(isOn: $isFilterToggleSnackOn, label: {
                            Text("Snack")
                        })
                      }
                    
                   
                }
                .navigationBarTitle(Text("Filtres"), displayMode : .inline)
            
            
        }
        
        
    }
}

struct FiltresView_Previews: PreviewProvider {
    @State static var isOn1: Bool = true
    @State static var isOn2: Bool = true

    @State static var isOn4: Bool = true
    static var previews: some View {
        FiltresView(
            isFilterToggleBreakfastOn: $isOn1,
            isFilterToggleLunchOn: $isOn2,
            isFilterToggleSnackOn: $isOn4
            
        )
    }
}
