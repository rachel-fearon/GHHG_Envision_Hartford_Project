//
//  HealthEducation.swift
//  GHHG Envision Hartford Draft
//
//  Created by Rachel Fearon on 11/3/24.
//

import SwiftUI

// Data model for Health Education items
struct HealthEdItem: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let destination: AnyView
}

// Reusable view for a health education topic
struct HealthTopic: View {
    let title: String
    let items: [HealthEdItem]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(title)
                .font(.custom("Avenir Next", size: 24))
                .foregroundColor(Color(red: 67 / 255, green: 37 / 255, blue: 52 / 255))
                .padding(.top)
                .frame(maxWidth: .infinity)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(items) { item in
                        NavigationLink(destination: item.destination) {
                            VStack(spacing: 0) {
                                Image(item.imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 300, height: 300)
                                    .clipShape(
                                        RoundedRectangle(cornerRadius: 10)
                                    )
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.white, lineWidth: 2)
                                    }
                                Text(item.title)
                                    .font(.caption)
                                        .multilineTextAlignment(.center)
                                        .padding(.vertical, 6)
                                        .padding(.horizontal, 12)
                                        .background(
                                            RoundedRectangle(cornerRadius: 8)
                                                .fill(Color(red: 67 / 255, green: 37 / 255, blue: 52 / 255))
                                        )
                                        .foregroundColor(.white)
                                        .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)
                            }
                        }
                    }
                }
            }
        }
        .padding(.horizontal)
    }
}

// Main view
struct HealthEducation: View {
    // Sample data for each topic
    let myopiaItems = [
        HealthEdItem(imageName: "myopia", title: "What is Myopia?", destination: AnyView(MyopiaInfo())),
        HealthEdItem(imageName: "myopia2", title: "Causes of Myopia", destination: AnyView(MyopiaInfo2()))
    ]
    
    let astigmatismItems = [
        HealthEdItem(imageName: "astigmatism", title: "What is Astigmatism?", destination: AnyView(AstigmatismInfo())),
        HealthEdItem(imageName: "astigmatism2", title: "Correcting Astigmatism", destination: AnyView(AstigmatismInfo2()))
    ]
    
    let amblyopiaItems = [
        HealthEdItem(imageName: "amblyopia", title: "What is Amblyopia?", destination: AnyView(AmblyopiaInfo())),
        HealthEdItem(imageName: "amblyopia2", title: "Managing Amblyopia", destination: AnyView(AmblyopiaInfo2()))
    ]
    
    let vtItems = [
        HealthEdItem(imageName: "vt", title: "What is Vision Therapy?", destination: AnyView(VTInfo())),
        HealthEdItem(imageName: "vt2", title: "Benefits of Vision Therapy", destination: AnyView(VTInfo2()))
    ]
    
    var body: some View {
            NavigationView {
                ZStack{
                    LinearGradient(
                        gradient: Gradient(colors:[
                            Color(red:24/255, green: 58/255, blue:55/255),
                            Color(.white),
                            Color(.white),
                            Color(.white)
                        ]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                    .ignoresSafeArea()
                    
                    
                ScrollView {
                    VStack(alignment: .leading, spacing: 20) {
                        Spacer().frame(height: 20)
                        
                        Text("Health Education")
                            .font(.custom("Avenir Next", size: 32))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity)
                            .foregroundColor(Color(red: 67 / 255, green: 37 / 255, blue: 52 / 255))
                            .padding(.bottom, 10)
                        
                        HealthTopic(title: "Myopia", items: myopiaItems)
                        Spacer().frame(height:5)
                        HealthTopic(title: "Astigmatism", items: astigmatismItems)
                        HealthTopic(title: "Amblyopia", items: amblyopiaItems)
                        HealthTopic(title: "Vision Therapy", items: vtItems)
                    }
                    .padding(.bottom)
                }
            }
            .navigationTitle("Health Education")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

// Preview
struct HealthEducation_Previews: PreviewProvider {
    static var previews: some View {
        HealthEducation()
    }
}
