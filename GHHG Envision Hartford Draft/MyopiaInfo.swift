//
//  MyopiaInfo.swift
//  GHHG Envision Hartford Draft
//
//  Created by Rachel Fearon on 11/6/24.
//

import SwiftUI

struct MyopiaInfo: View {
    var body: some View {
        VStack {
            Text("What is Myopia (Near-sightedness)?")
                .font(.largeTitle)
                .padding()

            Text("Myopia, or near-sightedness, is an inability to see images clearly that are far away. Light rays travel through the front clear layers of the eye - the cornea and the lens. The light travels to the back of the eye, landing on the retina. The retina sends a signal from the eye to the brain, processing and integrating information to allow you to see. In near-sightedness (myopia), the image falls in front of the retina, meaning the light rays are out of focus. Consequently, the image you see is blurry.")
                .padding()
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
