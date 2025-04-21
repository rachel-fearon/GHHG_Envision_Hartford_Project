//
//  AmblyopiaInfo.swift
//  GHHG Envision Hartford Draft
//
//  Created by Rachel Fearon on 11/18/24.
//

import SwiftUI

struct AmblyopiaInfo: View {
    var body: some View {
        ZStack{
            LinearGradient(
                gradient: Gradient(colors:[
                    Color(.white),
                    Color(.white),
                    Color(.white),
                    Color(red:24/255, green: 58/255, blue:55/255)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack {
                Text("title")
                    .font(.largeTitle)
                    .padding()
                
                Text("text")
                    .padding()
            }
        }
        .navigationTitle("Amblyopia Information")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AmblyopiaInfo_Previews: PreviewProvider {
    static var previews: some View {
        AmblyopiaInfo()
    }
}
