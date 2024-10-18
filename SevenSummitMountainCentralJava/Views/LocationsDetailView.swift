//
//  LocationsDetailView.swift
//  SevenSummitMountainCentralJava
//
//  Created by Ricky Primayuda Putra on 18/10/24.
//

import SwiftUI
import MapKit

struct LocationsDetailView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    let location: Location
    
    var body: some View {
        ScrollView {
            VStack {
                imageSection
                    .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
                
                VStack(alignment: .leading, spacing: 16) {
                    titleSection
                    Divider()
                    descriptionSection
                    Divider()
                    mapLayer
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            }
        }
        .ignoresSafeArea()
        .background(.ultraThinMaterial)
        .overlay(backButton, alignment: .topLeading)
    }
}

#Preview {
    LocationsDetailView(location: LocationsDataService.location.first!)
        .environmentObject(LocationsViewModel())
}

extension LocationsDetailView {
    
    private var imageSection: some View {
        
            TabView{
                ForEach(location.imagesName, id: \.self) {
                    Image($0)
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width)
                        .clipped()
                }
            }
            .frame(height: 500)
            .tabViewStyle(PageTabViewStyle())
        }
    
    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(location.name)
                .font(.title)
                .fontWeight(.bold)
            
            Text("\(location.height) Mdpl")
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundColor(.secondary)
        }
    }
    
    private var descriptionSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(location.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            if let url = URL(string: location.link) {
                Link("Read More on Wikipedia", destination: url)
                    .font(.headline)
                    .tint(.blue)
            } else {
                Text("Invalid URL")
                    .foregroundColor(.red)
            }

        }
    }
    
    private var mapLayer: some View {
        Map(coordinateRegion: .constant(MKCoordinateRegion(
            center: location.coordinates,
            span: vm.mapSpan
        )),
            annotationItems: [location]) { location in
                MapAnnotation(coordinate: location.coordinates) {
                    LocationMapAnnotationView()
                        .shadow(radius: 10)
                }
            }
            .allowsHitTesting(false)
            .aspectRatio(1, contentMode: .fit)
            .cornerRadius(30)
    }
    private var backButton: some View {
        Button {
            vm.sheetLocation = nil
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
                .padding(16)
                .foregroundColor(.primary)
                .background(.thickMaterial)
                .cornerRadius(10)
                .shadow(radius: 4)
                .padding()
        }
    }
}
