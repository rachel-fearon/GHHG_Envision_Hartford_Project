//
//  AstigmatismInfo2.swift
//  GHHG Envision Hartford Draft
//
//  Created by Rachel Fearon on 11/18/24.
//

import SwiftUI

struct AstigmatismInfo2: View {
    var body: some View {
        ZStack{
            LinearGradient(
                gradient: Gradient(colors:[
                    Color(.white),
                    Color(.white),
                    Color(.white),
                    Color(red:67/255, green: 37/255, blue:52/255)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack {
                Text("title")
                    .font(.largeTitle)
                    .padding()
                
                Text("text")
                    .padding()
            }
        }
        .navigationTitle("Astigmatism Information")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AstigmatismInfo2_Previews: PreviewProvider {
    static var previews: some View {
        AstigmatismInfo2()
    }
}
