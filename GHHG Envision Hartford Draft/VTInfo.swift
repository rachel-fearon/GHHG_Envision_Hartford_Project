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
                
                Text("Vision is the ability to interpret and understand visual input. In other words, vision is a learned skill that allows us to use what we see and feel, and how we move to understand the world around us.")
                    .font(.custom("Avenir Next", size:18))
                    .padding()
                
                Text("Vision therapy or rehab treats problems with the eye muscles, eye movement, how the eyes work together, and how the brain understands what we see. It can help many people, like school-aged children, traumatic brain injury (TBI) patients, and low vision patients.")
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
