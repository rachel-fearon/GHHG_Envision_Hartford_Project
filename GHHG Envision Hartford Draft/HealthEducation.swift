//
//  HealthEducation.swift
//  GHHG Envision Hartford Draft
//
//  Created by Rachel Fearon on 11/3/24.
//

import SwiftUI

struct HealthEdImage: Identifiable {
    let id = UUID()
    let imageName: String
    let label: String
}


struct HealthEducation: View {
    
    let items = [
        HealthEdImage(imageName: "browneye", label: "Image 1"),
        HealthEdImage(imageName: "browneye", label: "Image 2"),
        HealthEdImage(imageName: "browneye", label: "Image 3"),
        HealthEdImage(imageName: "browneye", label: "Image 4"),
        HealthEdImage(imageName: "browneye", label: "Image 5"),
        HealthEdImage(imageName: "browneye", label: "Image 6"),
        HealthEdImage(imageName: "browneye", label: "Image 7"),
        HealthEdImage(imageName: "browneye", label: "Image 8")
        ]
        
        let columns: [GridItem] = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]

    var body: some View {
        NavigationView{
            VStack {
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(items) { item in
                            NavigationLink(destination: getImageDetailView(for: item)) {
                                VStack {
                                    Image(item.imageName)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 80, height: 80) // Thumbnail size
                                        .cornerRadius(10)
                                        .onTapGesture {
                                            // Handle image tap here
                                            print("Tapped on \(item.label)")
                                        }
                                    
                                    Text(item.label)
                                        .font(.caption)
                                        .foregroundColor(.black)
                                        .padding(.top, 5)
                                }
                            }
                        }
                    }
                    .padding()
                }
            }
        }
        .navigationTitle("HealthEducation")
        .navigationBarTitleDisplayMode(.inline)

        }
    }

struct HealthEducation_Previews: PreviewProvider {
    static var previews: some View {
        HealthEducation()
    }
}
