//
//  Map.swift
//  BikePSS
//
//  Created by Adam Eastwood on 04/03/2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    @StateObject private var viewModel = MapViewModel()
    
    var body: some View {
        ZStack {
            Map(
                coordinateRegion: $viewModel.region,
                showsUserLocation: true
            )
            .accentColor(Color(.blue))
            .onAppear{
                viewModel.checkLocationServicesIsEnabled()
            }
            
            VStack(alignment:.trailing) {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        print("clicked locate button")
                    }) {
                        HStack {
                            Image(systemName: "location.north.fill")
                        }
                        .padding()
                        .background(Color.white)
                    }
                    .frame(width: 55, height: 55)
                    .cornerRadius(13)
                    .padding(.trailing, 3)
                    .padding(.bottom, 5)
                }
            }
            
        }
        .edgesIgnoringSafeArea(.top)
        .padding(.bottom, 10)
    }
}

struct Map_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

