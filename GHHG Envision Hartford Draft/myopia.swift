//
//  myopia.swift
//  GHHG Envision Hartford Draft
//
//  Created by Rachel Fearon on 11/6/24.
//

import SwiftUI


struct myopia: View {
    var body: some View {
        Image("myopia")
            .clipShape(Rectangle())
            .overlay {
                Rectangle().stroke(.white, lineWidth: 4)
                        }
            .shadow(radius: 1)
    }
}


#Preview {
    myopia()
}
