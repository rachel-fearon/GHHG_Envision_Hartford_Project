//
//  ContentView.swift
//  GHHG Envision Hartford Draft
//
//  Created by Rachel Fearon on 9/6/24.
//

import SwiftUI

// HOME PAGE
struct ContentView: View {
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    VStack(alignment: .leading) {
                        Spacer().frame(height: 40)
                        Text("Welcome!")
                            .font(.custom("Avenir Next", size:24))
                            .multilineTextAlignment(.leading)
                            .foregroundStyle(Color(hue: 0.802, saturation: 0.307, brightness: 0.912))
                        
                        Image("eyeimage")
                            .clipShape(Circle())
                            .overlay {
                                Circle().stroke(.white, lineWidth: 4)
                            }
                            .shadow(radius: 7)
                        
                        Text("Envision Hartford")
                            .font(.custom("Avenir Next", size:24))
                            .multilineTextAlignment(.center)
                            .foregroundStyle(Color(hue: 0.802, saturation: 0.307, brightness: 0.912))
                        
                    }
                    .padding(.leading, 20)
                    
                    Spacer()
                    
                    VStack(alignment: .trailing) {
                        Spacer().frame(height: 40)
                        EyeFactDaily()
                    }
                    .padding(.trailing,20)
                }
                .frame(maxWidth: .infinity)
                
                Spacer()
                
                VStack(spacing: 10) {
                    
                    NavigationLink(destination: HealthEducation() ) {
                        Text("Health Education")
                            .font(.custom("Avenir Next", size:20))
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    NavigationLink(destination: VisionCare() ) {
                        Text("Vision Care & Financial Assistance Programs")
                            .font(.custom("Avenir Next", size:20))
                            .padding()
                            .background(Color.purple)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    NavigationLink(destination: HartfordEyecareProvider() ) {
                        Text("Hartford Eyecare Provider")
                            .font(.custom("Avenir Next", size:20))
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .padding(.bottom, 20)
                .frame(maxWidth: .infinity, alignment: .center)
            }
            .padding()
        }
            .edgesIgnoringSafeArea(.all)
        }
    }
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView { // Wrap in NavigationView for preview
            ContentView()
        }
    }
}

    
    
//#Preview {
//    ContentView()
//}
