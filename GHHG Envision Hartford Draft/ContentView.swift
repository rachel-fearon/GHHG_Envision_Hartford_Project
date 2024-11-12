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
            LinearGradient(
                gradient: Gradient(colors:[
                    Color(.white),
                    Color(.white),
                    Color(red:209/255, green:99/255, blue:114/255)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            VStack{
                HStack{
                    VStack(alignment: .leading) {
                        Spacer().frame(height: 40)
                        Text("Welcome!")
                            .font(.custom("Avenir Next", size:24))
                            .multilineTextAlignment(.leading)
                            .foregroundStyle(Color(red: 90/255, green: 167/255, blue: 167/255))
                        
                        Image("browneye")
                            .clipShape(Circle())
                            .overlay {
                                Circle().stroke(.white, lineWidth: 4)
                            }
                            .shadow(radius: 7)
                        
                        Text("Envision Hartford")
                            .font(.custom("Avenir Next", size:24))
                            .multilineTextAlignment(.center)
                            .foregroundStyle(Color(red: 90/255, green: 167/255, blue: 167/255))
                        
                    }
                    .padding(.leading, 20)
                    
                    Spacer()
                    
                    VStack(alignment: .trailing) {
                        Spacer().frame(height: 40)
                        NavigationLink(destination: EyeFactDaily()) {
                            Text("Eye Fact of the Day")
                                .font(.custom("Avenir Next", size: 18))
                                .padding()
                                .background(Color(red: 108/255, green: 140/255, blue: 191/255))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
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
                            .background(Color(red: 150/255, green: 215/255, blue: 198/255))
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
