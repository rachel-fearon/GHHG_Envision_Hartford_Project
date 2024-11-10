//
//  HealthEducation.swift
//  GHHG Envision Hartford Draft
//
//  Created by Rachel Fearon on 11/3/24.
//

import SwiftUI

struct HealthEducation: View {
    var body: some View {
        VStack {
            Text("my name is rachel im a black woman now etc")
            Text("Welcome to the Health Education Page")
                .font(.largeTitle)
                .padding()
            Spacer()
            
            NavigationLink(destination: MyopiaInfo()) {
                Image("myopia")
                    .clipShape(Rectangle())
                    .overlay {
                        Rectangle().stroke(.white, lineWidth: 4)
                    }
                    .shadow(radius: 1)
                    .padding()
            }
            .buttonStyle(PlainButtonStyle())
            
            Spacer()
        }
        .navigationTitle("HealthEducation")
        .navigationBarTitleDisplayMode(.inline)

        }
    }
