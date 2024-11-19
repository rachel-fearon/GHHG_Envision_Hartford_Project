//
//  vt2.swift
//  GHHG Envision Hartford Draft
//
//  Created by Rachel Fearon on 11/18/24.
//

import SwiftUI


struct vt2: View {
    var body: some View {
        Image("vt2")
            .clipShape(Rectangle())
            .overlay {
                Rectangle().stroke(.white, lineWidth: 4)
                        }
            .shadow(radius: 1)
    }
}


#Preview {
    vt2()
}
