//
//  browneye.swift
//  GHHG Envision Hartford Draft
//
//  Created by Rachel Fearon on 11/11/24.
//

import SwiftUI


struct browneye: View {
    var body: some View {
        Image("browneye")
            .clipShape(Circle())
            .overlay {
                            Circle().stroke(.white, lineWidth: 4)
                        }
            .shadow(radius: 7)
    }
}


#Preview {
    browneye()
}
