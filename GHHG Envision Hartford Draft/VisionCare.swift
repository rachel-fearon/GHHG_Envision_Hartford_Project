//
//  Untitled.swift
//  GHHG Envision Hartford Draft
//
//  Created by Rachel Fearon on 11/3/24.
//

import SwiftUI

struct ProgramEntry: View {
    let title: String
    let description: String
    let url: String
    let iconName: String

    
    var body: some View {
        Button(action: {
            if let url = URL(string: url) {
                UIApplication.shared.open(url)
            }
        }) {
            HStack(alignment: .top, spacing:15) {
                VStack {
                    Spacer()
                    Image(systemName: iconName)
                        .font(.title)
                        .foregroundColor(Color(red:24/255, green: 58/255, blue:55/255))
                    Spacer()
                }
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(title)
                        .font(.custom("Avenir Next", size:20))
                        .foregroundColor((Color(red:24/255, green: 58/255, blue:55/255)))
                        .truncationMode(.tail)
                    Text(description)
                        .font(.custom("Avenir Next", size:15))
                        .foregroundColor(Color(.black))
                        .truncationMode(.tail)
                }
                .padding(.vertical,5)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color(red:67/255, green: 37/255, blue:52/255))
            )
            //.shadow(radius: 2)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct VisionCare: View {
    var body: some View {
        ZStack{
            LinearGradient(
                gradient: Gradient(colors:[
                    Color(red:239/255, green: 214/255, blue:172/255),
                    Color(.white),
                    Color(.white)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            ScrollView {
                VStack {
                    Text("Vision Care & Finanical Assistance Programs")
                        .font(.custom("Avenir Next",size:24))
                        .foregroundColor(Color(red:67/255, green: 37/255, blue:52/255))
                        .padding()
                        .multilineTextAlignment(.center)
                    
                    VStack(alignment: .leading, spacing:15){
                        ProgramEntry(title: "InfantSEE", description: "Free eyecare exam for infants between 6 - 12 months", url: "https://www.infantsee.org", iconName: "eyeglasses")
                        
                        ProgramEntry(title: "Lions Club International", description: "Financial assistance for affording eye exams/visits", url: "https://www.lionsclubs.org/en/start-our-global-impact/lions-eye-health-programs", iconName: "eyeglasses")
                        
                        ProgramEntry(title: "New Eyes", description: "Prescription eyeglasses for those in need", url: "https://www.new-eyes.org", iconName: "eyeglasses")
                        
                        ProgramEntry(title: "Mission Cataract USA", description: "Free cataract surgery", url: "https://missioncataractusa.org", iconName: "eyeglasses")
                        
                        ProgramEntry(title: "Operation Sight", description: "Supports low-income patients to get cataract surgery", url: "https://operationsight.org", iconName: "eyeglasses")
                        
                        ProgramEntry(title: "American Glaucoma Society", description: "Supports low-income patients and patients without insurance to get glaucoma surgery", url: "https://www.americanglaucomasociety.net", iconName: "eyeglasses")
                        
                        ProgramEntry(title: "National Federation of the Blind", description: "Free white cane", url: "https://nfb.org", iconName: "eyeglasses")
                        
                        ProgramEntry(title: "Vision to Learn", description: "Hartford in-school free eye exams", url: "https://www.visiontolearn.org", iconName: "eyeglasses")
                    }
                    .padding()
                }
            }
            .navigationTitle("VisionCare")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct VisionCare_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VisionCare()
        }
    }
}

