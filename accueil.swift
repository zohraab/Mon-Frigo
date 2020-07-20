//
//  accueil.swift
//  Mon Frigo
//
//  Created by Joséphine Delobel on 19/03/2020.
//  Copyright © 2020 Joséphine Delobel. All rights reserved.
//

import SwiftUI

struct accueil: View {
    @State private var login = ""
    @State private var password = ""
    @State private var isvalid = false
    var body: some View {
        NavigationView {
            VStack{
                Spacer()
                Image(systemName:"person.crop.circle")
                    .resizable()
                    .foregroundColor(.pink)
                    .frame(width:150, height:150 )
                
                
                VStack {
                    TextField("login", text: $login)
                    SecureField("password",text: $password){
                        self.ispasswordvalid()
                    }
                    if !isvalid {
                        Text("").foregroundColor(.blue)
                    }
                    Spacer().frame(height:50)
                    
                    NavigationLink(destination: ProfilView(),  label: {
                        ZStack{
                            Rectangle().frame(width: 350, height: 50).cornerRadius(30).foregroundColor(.pink)
                            Text("Connexion").font(Font.title).foregroundColor(.white)
                        }
                        
                    })
                    
                    Spacer().frame(height:200)
                    
                    NavigationLink(destination: CreateProfileView(pseudo: "",email: "", password: ""),  label: {
                        ZStack{
                            Rectangle().frame(width: 150, height: 50).cornerRadius(30).foregroundColor(.pink)
                            Text("Inscription").foregroundColor(.white)
                        }
                        
                    })
                    
                    Spacer()
                    
                }.padding()
                
            }
        }
    }
    
    
    func ispasswordvalid() {
        if self.password.count > 8 {
            self.isvalid = true
        }else{
            self.isvalid = false
        }
    }
    struct accueil_Previews: PreviewProvider {
        static var previews: some View {
            accueil()
        }
    }
}

