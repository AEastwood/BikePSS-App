//
//  Controls.swift
//  BikePSS
//
//  Created by Adam Eastwood on 04/03/2023.
//

import SwiftUI
import AVFoundation

struct ControlsView: View {
    
    var body: some View {
        
        ZStack {
            VStack {
                Button {
                    Alert(title: Text("howdy"))
                } label: {
                    Text("Click Me")
                }
                    .font(.title)
                    .foregroundColor(.purple)
                    .padding()
                
                Text("Controls")
                    .padding()
                
            }
        }
    }
    
    struct Controls_Previews: PreviewProvider {
        static var previews: some View {
            ControlsView()
        }
    }
}
