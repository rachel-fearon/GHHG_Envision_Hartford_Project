//
//  astigmatism.swift
//  GHHG Envision Hartford Draft
//
//  Created by Rachel Fearon on 11/16/24.
//

import SwiftUI


struct astigmatism: View {
    var body: some View {
        Image("astigmatism")
            .clipShape(Rectangle())
            .overlay {
                Rectangle().stroke(.white, lineWidth: 4)
                        }
            .shadow(radius: 1)
    }
}


#Preview {
    astigmatism()
}
