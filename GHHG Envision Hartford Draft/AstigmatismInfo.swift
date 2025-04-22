//
//  AstigmatismInfo.swift
//  GHHG Envision Hartford Draft
//
//  Created by Rachel Fearon on 11/18/24.
//

import SwiftUI

struct AstigmatismInfo: View {
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
                Text("What is Astigmatism?")
                    .font(.custom("Avenir Next", size:30))
                    .padding()
                
                Text("Astigmatism is happens when the surface of the eye is not curved evenly. Normally, the eye is shaped like a soccer ball. When light hits the surface, it bends (refracts) onto an eye that has the same curvature on the cornea and the lens. An eyeball with an astigmatism has a cornea and lens with different curves, causing the eye to be shaped more like a football. This causes blurring because the light rays are not being bent the same way.")
                    .font(.custom("Avenir Next", size:20))
                    .padding()
            }
        }
        .navigationTitle("Astigmatism Information")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AstigmatismInfo_Previews: PreviewProvider {
    static var previews: some View {
        AstigmatismInfo()
    }
}
