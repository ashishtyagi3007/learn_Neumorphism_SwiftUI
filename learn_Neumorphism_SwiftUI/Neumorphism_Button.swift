//
//  Neumorphism_Button.swift
//  learn_Neumorphism_SwiftUI
//
//  Created by Ashish Tyagi on 04/09/20.
//  Copyright © 2020 Ashish Tyagi. All rights reserved.
//

//======================================================== https://medium.com/@addamb/neumorphism-swiftui-button-eba6a610c939 =========================================================//

import SwiftUI

struct Neumorphism_Button: View {
    var body: some View {
        ZStack {
                   Color(red: 224/255, green: 229/255, blue: 236/255).edgesIgnoringSafeArea(.all)
            
            Button(action: {}) {
                          Image(systemName: "heart.fill")
                          .resizable()
                          .frame(width: 80, height: 80)
                            .foregroundColor(Color(red: 224/255, green: 229/255, blue: 236/255))
                            .shadow(color: Color.white, radius: 8, x: -9, y: -9)
                                               .shadow(color: Color(red: 163/255, green: 177/255, blue: 198/255), radius: 8, x: 9, y: 9)
                            .padding(20)
                            .background(Color(red: 224/255, green: 229/255, blue: 236/255))
                            .cornerRadius(20)
                          
                      }
            .shadow(color: Color.white, radius: 8, x: -9, y: -9)
            .shadow(color: Color(red: 163/255, green: 177/255, blue: 198/255), radius: 8, x: 9, y: 9)
            
               }
        }
}

struct Neumorphism_Button_Previews: PreviewProvider {
    static var previews: some View {
        Neumorphism_Button()
    }
}
