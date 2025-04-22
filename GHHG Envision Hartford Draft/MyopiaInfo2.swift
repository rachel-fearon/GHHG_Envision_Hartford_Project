//
//  MyopiaInfo2.swift
//  GHHG Envision Hartford Draft
//
//  Created by Rachel Fearon on 11/18/24.
//

import SwiftUI

struct MyopiaInfo2: View {
    var body: some View {
        ZStack{
            LinearGradient(
                gradient: Gradient(colors:[
                    Color(.white),
                    Color(.white),
                    Color(.white),
                    Color(red:239/255, green: 214/255, blue:172/255)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            VStack {
                ScrollView{
                    Text("What Causes Myopia?")
                        .font(.custom("Avenir Next", size:30))
                        .padding()
                    
                    Text("Myopia can be due to differences in eye length or lens power.")
                        .font(.custom("Avenir Next", size:18))
                        .padding()
                    
                    Text("The eyeball is shaped like a soccer ball, a perfect sphere. In people with axial myopia, the eye is slightly stretched, and is shaped more like a rugby ball. This makes the eyeball longer, but the image still focuses ahead of the retina, which makes things look blurry.")
                        .font(.custom("Avenir Next", size:18))
                        .padding()
                    
                    Text("Sometimes, the lens of the eye may be too powerful. We know eyeglass lenses have a certain strength that allows us to see better when we use them. This is called refractive power because it changes the way the light bends (or refracts) so we can see more clearly and without a blur. Our eyes also have a lens at the front, with its own refractive power. But sometimes, the lens has is too strong, and it bends the light more than is needed. This makes the image forms in front of the retina, causing a blurry picture.")
                        .font(.custom("Avenir Next", size:18))
                        .padding()
                }
            }
        }
        .navigationTitle("Myopia Information")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct MyopiaInfo2_Previews: PreviewProvider {
    static var previews: some View {
        MyopiaInfo2()
    }
}
