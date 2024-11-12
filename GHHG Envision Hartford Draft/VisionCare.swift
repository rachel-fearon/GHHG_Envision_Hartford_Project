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
        Link(destination: URL(string: url)!) {
            HStack {
                Image(systemName: iconName)
                    .font(.title)
                    .foregroundColor(Color(red: 108/255, green: 140/255, blue: 191/255))
                    .padding(.trailing, 10)
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.custom("Avenir Next", size:20))
                        .foregroundColor((Color(red:108/255, green:140/255, blue:191/255)))
                    
                    Text(description)
                        .font(.custom("Avenir Next", size:18))
                        .foregroundColor(.white)
                }
            }
            .padding(.horizontal)
        }
    }
}

struct VisionCare: View {
    var body: some View {
        ZStack{
            LinearGradient(
                gradient: Gradient(colors:[
                    Color(red:226/255, green:211/255, blue:107/255),
                    Color(red:209/255, green:194/255, blue:99/255),
                    Color(red:209/255, green:99/255, blue:114/255)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack {
                Text("Vision Care and Finanical Assistance Programs")
                    .font(.custom("Avenir Next",size:24))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(alignment: .leading, spacing:10){
                    ProgramEntry(title: "InfantSEE", description: "Free eyecare exam for infants between 6 - 12 months", url: "https://www.infantsee.org", iconName: "eyeglasses")
                    
                    ProgramEntry(title: "Lions Club International", description: "Financial assistance for affording eye exams/visits", url: "https://www.lionsclubs.org/en/start-our-global-impact/lions-eye-health-programs", iconName: "lion")
                    
                    ProgramEntry(title: "New Eyes", description: "Prescription eyeglasses for those in need", url: "https://www.new-eyes.org", iconName: "eyeglasses")
                    
                    ProgramEntry(title: "Mission Cataract USA", description: "Free cataract surgery", url: "https://missioncataractusa.org", iconName: "circle.righthalf.fill")
                    
                    ProgramEntry(title: "Operation Sight", description: "Supports low-income patients to get cataract surgery", url: "https://operationsight.org", iconName: "suit.heart.fill")
                    
                    ProgramEntry(title: "American Glaucoma Society", description: "Supports low-income patients and patients without insurance to get glaucoma surgery", url: "https://www.americanglaucomasociety.net", iconName: "eye")
                    
                    ProgramEntry(title: "National Federation of the Blind", description: "Free white cane", url: "https://nfb.org", iconName: "circle.grid.2x2.fill")
                    
                    ProgramEntry(title: "Vision to Learn", description: "Hartford in-school free eye exams", url: "https://www.visiontolearn.org", iconName: "school")
                }
                .padding()
            }
        }
        .navigationTitle("VisionCare")
        .navigationBarTitleDisplayMode(.inline)
    }
}
struct VisionCare_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VisionCare()
        }
    }
}

