//
//  MyopiaInfo2.swift
//  GHHG Envision Hartford Draft
//
//  Created by Rachel Fearon on 11/18/24.
//

import SwiftUI

struct MyopiaInfo2: View {
    var body: some View {
        VStack {
            Text("title")
                .font(.largeTitle)
                .padding()

            Text("text")
                .padding()
        }
        .navigationTitle("Myopia Information")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct MyopiaInfo2_Previews: PreviewProvider {
    static var previews: some View {
        MyopiaInfo2()
    }
}
