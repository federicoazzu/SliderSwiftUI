//
//  ContentView.swift
//  SliderProject
//
//  Created by Federico on 01/11/2021.
//

import SwiftUI

struct ContentView: View {
    @State var width: Double = 110
    @State var height: Double = 110
    
    var body: some View {
        VStack() {
            
            Spacer()
            Rectangle()
                .frame(width: width, height: height)
                .foregroundColor(.blue)
            
                
            Spacer()
            Text("Width:")
            Slider(value: $width, in: 20...200)
                .accentColor(.green) // Use .tint for iOS 15+
            Text("Height:")
            Slider(value: $height, in: 20...200)
           
            Button("Reset") {
                self.width = 110
                self.height = 110
            }
            
        }.padding()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
