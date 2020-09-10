//
//  ContentView.swift
//  learn_Neumorphism_SwiftUI
//
//  Created by Ashish Tyagi on 03/09/20.
//  Copyright © 2020 Ashish Tyagi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("Background"))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            RoundedRectangle(cornerRadius: 20)
            .fill(Color("Background"))
            .frame(width: 300, height: 180)
                .shadow(color: Color("DarkModeColors"), radius: 15, x: 10, y: 10)
                .shadow(color: Color("LightModeColors"), radius: 8, x: -5, y: -5)
           
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
