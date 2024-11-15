//
//  ContentView.swift
//  GHHG Envision Hartford Draft
//
//  Created by Rachel Fearon on 9/6/24.
//

import SwiftUI

// HOME PAGE
struct ContentView: View {
    
    @State private var showBanner = true
    
    let facts = [
        "A blink lasts 1/10th of a second",
        "Brown is the most common eye color",
        "Staring at a computer can tire your eyes",
        "Most vision problems are curable or avoidable",
        "Shark eyes are sometimes used for human surgeries",
        "Eyes detect 36,000 pieces of info an hour",
        "Scientists don't know why we cry when upset",
        "There is such thing as the perfect amount of eye contact",
        "You can only see 1/6th of your eye",
        "The eye has blind spots",
        "Eyes are our second most complex organ"
    ]
    
    // Computed property to get today's word
    var todayFact: String {
        let calendar = Calendar.current
        let dayOfYear = calendar.ordinality(of: .day, in: .year, for: Date()) ?? 1
        return facts[(dayOfYear - 1) % facts.count] // Ensure index is within bounds
    }
    
    var body: some View {
        
        ZStack{
            LinearGradient(
                gradient: Gradient(colors:[
                    Color(.white),
                    Color(.white),
                    Color(.white),
                    Color(red:196/255, green: 73/255, blue:0/255)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack{
                
                if showBanner {
                    VStack {
                        HStack {
                            Text("Eye Fact of the Day 👁️")
                                .font(.custom("Avenir Next", size: 16))
                                .foregroundColor(.white)
                                .padding()
                            Text(todayFact)
                                .font(.custom("Avenir Next", size: 16))
                                .foregroundColor(.white)
                                .padding()
                            
                            Spacer()
                            
                            // Close Button
                            Button(action: {
                                withAnimation {
                                    showBanner = false // Hide the banner
                                }
                            }) {
                                Image(systemName: "xmark")
                                    .foregroundColor(.white)
                                    .padding(.trailing, 10)
                            }
                        }
                        .background(Color(red: 239/255, green: 214/255, blue: 172/255))
                        .cornerRadius(10)
                        .shadow(radius: 5)
                        .padding(.horizontal)
                        .padding(.top, 20) // Add some spacing from the top
                    }
                    .transition(.move(edge: .top).combined(with: .opacity)) // Smooth animation
                }
                
                VStack{
                    Spacer().frame(height: 40)
                    
                    Text("Welcome!")
                        .font(.custom("Avenir Next", size:24))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(Color(red:67/255, green: 37/255, blue:52/255))
                    
                    Image("browneye")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 120)
                        .clipShape(Circle())
                        .overlay {
                            Circle().stroke(.white, lineWidth: 4)
                        }
                        .shadow(radius: 7)
                    
                    Text("Envision Hartford")
                        .font(.custom("Avenir Next", size:24))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(Color(red:67/255, green: 37/255, blue:52/255))
                    
                    Spacer().frame(height: 50)
                }
                
                VStack(spacing: 10) {
                    
                    NavigationLink(destination: HealthEducation() ) {
                        Text("Health Education")
                            .font(.custom("Avenir Next", size:20))
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color(red: 24/255, green: 58/255, blue: 55/255))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    NavigationLink(destination: VisionCare() ) {
                        Text("Vision Care & Financial Assistance Programs")
                            .font(.custom("Avenir Next", size:20))
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color(red: 24/255, green: 58/255, blue: 55/255))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    NavigationLink(destination: HartfordEyecareProvider() ) {
                        Text("Hartford Eyecare Provider")
                            .font(.custom("Avenir Next", size:20))
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color(red: 24/255, green: 58/255, blue: 55/255))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .padding(.bottom, 20)
                .frame(maxWidth:300)
                
                Spacer().frame(height:20)
            }
            .padding(.top, 30)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}

    
    
//#Preview {
//    ContentView()
//}
