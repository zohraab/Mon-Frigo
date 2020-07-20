//
//  TestContentView.swift
//  Mon Frigo
//
//  Created by Joséphine Delobel on 23/03/2020.
//  Copyright © 2020 Joséphine Delobel. All rights reserved.
//

import SwiftUI

struct TestContentView: View {
    @State var isToggleOn: Bool = false
    var body: some View {
        NavigationView {
             VStack{
                Text("Ceci est une page test")
                 Toggle(isOn: $isToggleOn, label: {Text("Test toggle")})
                     
                 
                 if isToggleOn {
                                    Text("toggle1 is ON")
                     
                                } else {
                                    Text("toggle1 is OFF")
                                }
                  }
         }
}
}

struct TestContentView_Previews: PreviewProvider {
    static var previews: some View {
        TestContentView()
    }
}
