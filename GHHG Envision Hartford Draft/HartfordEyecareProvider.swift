//
//  HartfordEyecareProvider.swift
//  GHHG Envision Hartford Draft
//
//  Created by Rachel Fearon on 11/3/24.
//

import SwiftUI

struct Provider: Identifiable {
    let id = UUID()
    let name: String
    let address: String
    let neighborhood: String
}

let providers = [
    Provider(name:"Hartford Eye Wellness", address:"419 Franklin Ave Suite 102, Hartford, CT 06114", neighborhood:"Hartford"),
    Provider(name:"Solinsky EyeCare, LLC", address:"19 Woodland St STE 41, Hartford, CT 06105", neighborhood:"Hartford"),
    Provider(name:"LA Vision", address:"112 S Whitney St #1, Hartford, CT 06105", neighborhood:"Hartford"),
    Provider(name:"Harvey & Lewis Opticians", address:"85 Seymour St #115a, Hartford, CT 06106", neighborhood:"Hartford"),
    Provider(name:"West End Eye Care", address:"553 Farmington Ave, Hartford, CT 06105", neighborhood:"Hartford"),
    Provider(name:"Serenity I Care", address:"19 Woodland St #21, Hartford, CT 06105", neighborhood:"Hartford"),
    Provider(name:"Hispana Vision", address:"86 Park St, Hartford, CT 06106", neighborhood:"Hartford"),
    Provider(name:"Eyes on Park", address:"262 Park Rd, West Hartford, CT 06119", neighborhood:"West Hartford"),
    Provider(name:"Solinsky EyeCare, LLC", address:"1013 Farmington Ave, West Hartford, CT 06107", neighborhood:"West Hartford"),
    Provider(name:"Optometric Specialty Group", address:"612 Quaker Ln S Ste B, West Hartford, CT 06110", neighborhood:"West Hartford"),
    Provider(name:"Kemp Eyecare", address:"1138 New Britain Ave, West Hartford, CT 06110", neighborhood:"West Hartford"),
    Provider(name:"Greloch Eyecare", address:"893 Main St #201, East Hartford, CT 06108", neighborhood:"East Hartford"),
    Provider(name:"Solinsky EyeCare, LLC", address:"800 Connecticut Blvd #300, East Hartford, CT 06108", neighborhood:"East Hartford"),
    Provider(name:"Dr. Cai EyeCare Center", address:"477 Connecticut Blvd #102, East Hartford, CT 06108", neighborhood:"East Hartford")
]

struct HartfordEyecareProvider: View {
    
    @State private var selectedNeighborhood: String=""
    
    let neighborhoods=["Hartford", "West Hartford", "East Hartford"]
    
    var filteredProvider: [Provider] {
        if selectedNeighborhood.isEmpty {
            return providers
        } else {
            return providers.filter {$0.neighborhood == selectedNeighborhood}
        }
    }
    
    var body: some View {
            VStack {
                Text("Hartford County Eyecare Providers")
                    .font(.custom("Avenir Next", size:30))
                    .foregroundColor(Color(red:67/255, green: 37/255, blue:52/255))
                    .padding()
                
                Picker("Select Neighborhood", selection:$selectedNeighborhood) {
                    Text("All").tag("")
                    ForEach(neighborhoods, id:\.self) { neighborhood in Text(neighborhood).tag(neighborhood)
                            .foregroundColor(Color(red:67/255, green: 37/255, blue:52/255))
                    }
                }
            }
        .pickerStyle(SegmentedPickerStyle())
        .padding()
        
        List(filteredProvider) { provider in
            VStack(alignment: .leading){
                Text(provider.name)
                    .font(.custom("Avenir Next", size:20))
                    .foregroundColor(Color(red:67/255, green: 37/255, blue:52/255))
                Text(provider.address)
                    .font(.custom("Avenir Next", size:15))
                    .foregroundColor(Color(red:24/255, green: 58/255, blue:55/255))
            }
            .padding(.vertical, 5)
        }
        .listStyle(InsetGroupedListStyle())
        .navigationTitle("Eyecare Providers")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct HartfordEyecareProvider_Previews: PreviewProvider {
    static var previews: some View {
        HartfordEyecareProvider()
    }
}
