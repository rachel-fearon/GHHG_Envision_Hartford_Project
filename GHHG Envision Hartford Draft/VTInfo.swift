//
//  VTInfo.swift
//  GHHG Envision Hartford Draft
//
//  Created by Rachel Fearon on 11/18/24.
//

import SwiftUI

struct VTInfo: View {
    var body: some View {
        ZStack{
            LinearGradient(
                gradient: Gradient(colors:[
                    Color(red:196/255, green: 73/255, blue:0/255),
                    Color(.white),
                    Color(.white),
                    Color(.white)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack {
                Text("What is Vision Therapy?")
                    .font(.custom("Avenir Next", size:30))
                    .padding()
                
                Text("Vision therapy is an individualized program intended to improve visual skills, comfort and efficiency.")
                    .font(.custom("Avenir Next", size:18))
                    .padding()
                
                Text("Vision is the ability to interpret and understand visual input. In other words, vision is a learned skill that allows us to integrate sensory and motor information to help us navigate the world.")
                    .font(.custom("Avenir Next", size:18))
                    .padding()
                
                Text("Vision therapy or rehabilitation treats disorders related to ocular muscles, ocular motor, binocular, and visual perceptual skills. This is beneficial to a variety of populations including school-aged children, traumatic brain injury (TBI) patients, and low vision patients.")
                    .font(.custom("Avenir Next", size:18))
                    .padding()
            }
        }
        .navigationTitle("VT Information")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct VTInfo_Previews: PreviewProvider {
    static var previews: some View {
        VTInfo()
    }
}
