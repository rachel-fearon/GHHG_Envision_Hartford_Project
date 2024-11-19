//
//  amblyopia2.swift
//  GHHG Envision Hartford Draft
//
//  Created by Rachel Fearon on 11/17/24.
//

import SwiftUI


struct amblyopia2: View {
    var body: some View {
        Image("amblyopia2")
            .clipShape(Rectangle())
            .overlay {
                Rectangle().stroke(.white, lineWidth: 4)
                        }
            .shadow(radius: 1)
    }
}


#Preview {
    amblyopia2()
}
