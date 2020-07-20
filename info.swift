//
//  info.swift
//  Mon Frigo
//
//  Created by Joséphine Delobel on 19/03/2020.
//  Copyright © 2020 Joséphine Delobel. All rights reserved.
//

import SwiftUI

struct info: View{
    
    var ingredient: Ingredient
    
    var body: some View {
            VStack {
                
                Image("\(ingredient.image)").resizable().frame(width:200, height:200 )
                Spacer()
                Text("\(ingredient.name)").font(.largeTitle).padding()
                
                Text("Valeurs pour 100g")
                
                VStack(alignment:.leading) {
                    ForEach(ingredient.nutritiveValues) { nutritiveValue in
                        
                        HStack{
                        if (nutritiveValue.nutritiveQuality == .positive) {
                    
                            Text("\(nutritiveValue.name)").foregroundColor(.green)
                            Spacer()
                            Text("\(nutritiveValue.value)").foregroundColor(.green)
                        } else { Text("\(nutritiveValue.name)").foregroundColor(.red)
                            Spacer()
                        Text("\(nutritiveValue.value)").foregroundColor(.red)
                        }
                        }.padding()
                    }
                }
                Spacer()
            }
      
            }//.navigationBarTitle("Informations nutritionnelles")
            
        }

    struct info_Previews: PreviewProvider {
        static var previews: some View {
            info(ingredient: listIngredients[0])
        }
    }

