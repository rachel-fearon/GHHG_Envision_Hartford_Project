//
//  AstigmatismInfo.swift
//  GHHG Envision Hartford Draft
//
//  Created by Rachel Fearon on 11/18/24.
//

import SwiftUI

struct AstigmatismInfo: View {
    var body: some View {
        VStack {
            Text("title")
                .font(.largeTitle)
                .padding()

            Text("text")
                .padding()
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
