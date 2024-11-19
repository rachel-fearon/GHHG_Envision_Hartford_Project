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
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(items) { item in
                        NavigationLink(destination: item.destination) {
                            VStack {
                                Image(item.imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 120, height: 120)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.white, lineWidth: 2)
                                    }
                                Text(item.title)
                                    .font(.caption)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.primary)
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
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Spacer().frame(height: 20)
                    
                    Text("Health Education")
                        .font(.custom("Avenir Next", size: 32))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 67 / 255, green: 37 / 255, blue: 52 / 255))
                        .padding(.bottom)
                    
                    // Each topic section
                    HealthTopic(title: "Myopia", items: myopiaItems)
                    HealthTopic(title: "Astigmatism", items: astigmatismItems)
                    HealthTopic(title: "Amblyopia", items: amblyopiaItems)
                    HealthTopic(title: "Vision Therapy", items: vtItems)
                }
                .padding(.bottom)
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
