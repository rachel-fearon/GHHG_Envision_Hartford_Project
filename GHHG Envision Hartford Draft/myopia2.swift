//
//  myopia2.swift
//  GHHG Envision Hartford Draft
//
//  Created by Rachel Fearon on 11/16/24.
//
import SwiftUI


struct myopia2: View {
    var body: some View {
        Image("myopia2")
            .clipShape(Rectangle())
            .overlay {
                Rectangle().stroke(.white, lineWidth: 4)
                        }
            .shadow(radius: 1)
    }
}


#Preview {
    myopia2()
}

