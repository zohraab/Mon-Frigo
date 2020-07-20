//
//  ModifyProfileView.swift
//  Mon Frigo
//
//  Created by Joséphine Delobel on 23/03/2020.
//  Copyright © 2020 Joséphine Delobel. All rights reserved.
//

import SwiftUI

struct ModifyProfileView: View {
    @State var pseudo: String
    @State var email: String
    @State var password: String
    
    var body: some View {
        VStack {
            Text("Modifier le profil").font(.title).bold()
            Spacer().frame(height: 50)
            
            TextField("Pseudo", text: $pseudo).textFieldStyle(RoundedBorderTextFieldStyle())
            
            
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("Mot de passe", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            
            Spacer().frame(height: 100)
            
            Button(action: {
                
            }, label: {
                
                Text("Confirmer")
                    .padding()
                    .background(Color.pink)
                    .foregroundColor(.white)
                    .cornerRadius(25.0)
            })
        }.padding()
    }
}

struct ModifyProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ModifyProfileView(pseudo: "", email: "", password: "")
    }
}
