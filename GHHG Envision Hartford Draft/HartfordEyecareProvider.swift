//
//  HartfordEyecareProvider.swift
//  GHHG Envision Hartford Draft
//
//  Created by Rachel Fearon on 11/3/24.
//

import SwiftUI
import MapKit

struct HartfordEyecareProvider: View {
    var body: some View {
        VStack {
            Text("rachel")
            Text("Welcome to Hartford Eyecare Providers")
                .font(.custom("Avenir Next", size:10))
                .padding()
        }
        .navigationTitle("HartfordEyecareProvider")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct HartfordEyecareProvider_Previews: PreviewProvider {
    static var previews: some View {
        HartfordEyecareProvider()
    }
}
