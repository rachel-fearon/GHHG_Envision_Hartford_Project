//
//  eyeimage.swift
//  GHHG Envision Hartford Draft
//
//  Created by Rachel Fearon on 11/5/24.
//

import SwiftUI


struct eyeimage: View {
    var body: some View {
        Image("eyeimage")
            .clipShape(Circle())
            .overlay {
                            Circle().stroke(.white, lineWidth: 4)
                        }
            .shadow(radius: 7)
    }
}


#Preview {
    eyeimage()
}
