//
//  ContentView.swift
//  LunarZodiac
//
//  Created by Holt Boink on 1/30/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var imageNum = 3
    @State private var year = 2023

    
    var body: some View {
        VStack {
            Text(String(year))
                .foregroundColor(Color("LunarColor"))
                .fontWeight(.black)
                .font(.largeTitle)
            
            Image("image\(imageNum)")
                .resizable()
                .scaledToFit()
                .padding()
            
            
            Spacer()
            
            HStack{
                Button("<"){
                    year -= 1
                    
                    imageNum -= 1
                    if imageNum < 0{
                        imageNum = 11
                        year = 2031
                    }
                }
                
                Spacer()
                
                Button(">"){
                    year += 1
                    imageNum += 1
                    if imageNum > 11{
                        imageNum = 0
                        year = 2020
                    }
                }
            }
            .buttonStyle(.borderedProminent)
            .fontWeight(.black)
            .font(.largeTitle)
            .tint(Color("LunarColor"))
            .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
