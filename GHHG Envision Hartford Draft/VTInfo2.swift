//
//  VTInfo2.swift
//  GHHG Envision Hartford Draft
//
//  Created by Rachel Fearon on 11/18/24.
//

import SwiftUI

struct VTInfo2: View {
    var body: some View {
        VStack {
            Text("title")
                .font(.largeTitle)
                .padding()

            Text("text")
                .padding()
        }
        .navigationTitle("VT Information")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct VTInfo2_Previews: PreviewProvider {
    static var previews: some View {
        VTInfo2()
    }
}
