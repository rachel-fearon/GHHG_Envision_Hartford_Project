//
//  MyopiaInfo.swift
//  GHHG Envision Hartford Draft
//
//  Created by Rachel Fearon on 11/6/24.
//

import SwiftUI

struct MyopiaInfo: View {
    var body: some View {
        ZStack{
            LinearGradient(
                gradient: Gradient(colors:[
                    Color(.white),
                    Color(.white),
                    Color(.white),
                    Color(red:239/255, green: 214/255, blue:172/255)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            VStack {
                Text("What is Myopia (Near-sightedness)?")
                    .font(.custom("Avenir Next", size:30))
                    .padding()
                
                Text("Myopia, or near-sightedness, is an inability to see images clearly that are far away. Light rays travel through the front clear layers of the eye - the cornea and the lens. The light travels to the back of the eye, landing on the retina. The retina sends a signal from the eye to the brain, which allows you to see. In near-sightedness (myopia), the image falls in front of the retina, meaning the light rays are not focused properly. This makes things look blurry.")
                    .font(.custom("Avenir Next", size:18))
                    .padding()
            }
        }
        .navigationTitle("Myopia Information")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct MyopiaInfo_Previews: PreviewProvider {
    static var previews: some View {
        MyopiaInfo()
    }
}
