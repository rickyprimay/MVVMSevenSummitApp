//
//  LocationsPreviewView.swift
//  SevenSummitMountainCentralJava
//
//  Created by Ricky Primayuda Putra on 18/10/24.
//

import SwiftUI

struct LocationsPreviewView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    let location: Location
    
    var body: some View {
        HStack(alignment: .bottom) {
            VStack(alignment: .leading, spacing: 16) {
                
                imageSection
                
                titleSection
                
            }
            
            VStack(spacing: 8) {
                buttonLearnMore
                buttonNext
            }
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.ultraThinMaterial)
                .offset(y: 65)
        )
        .clipped()
        .cornerRadius(10)
        
    }
}

#Preview {
    ZStack {
        Color.gray.ignoresSafeArea()
        
        LocationsPreviewView(location: LocationsDataService.location.first!)
            .padding()
    }
    .environmentObject(LocationsViewModel())
}


extension LocationsPreviewView {
    
    private var imageSection: some View {
        ZStack {
            if let imageName = location.imagesName.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
            }
        }
        .padding(6)
        .background(Color.white)
        .cornerRadius(10)
    }
    
    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(location.name)
                .font(.title2)
                .fontWeight(.bold)
            
            Text("\(location.height) Mdpl")
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var buttonLearnMore: some View {
        
            Button {
                vm.sheetLocation = location
            } label : {
                Text("Learn More")
                    .font(.headline)
                    .frame(width: 125, height: 30)
            }
            .buttonStyle(.borderedProminent)
            
    }
    
    private var buttonNext: some View {
        Button {
            vm.nextButtonPressed()
        } label : {
            Text("Next")
                .font(.headline)
                .frame(width: 125, height: 30)
        }
        .buttonStyle(.bordered)
    }
    
}
