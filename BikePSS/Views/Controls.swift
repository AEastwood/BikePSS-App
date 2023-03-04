//
//  Controls.swift
//  BikePSS
//
//  Created by Adam Eastwood on 04/03/2023.
//

import SwiftUI

struct Controls: View {
    var body: some View {
        ZStack {
            Color(.blue)
                .edgesIgnoringSafeArea(.all)
            Text("Controls")
        }
    }
}

struct Controls_Previews: PreviewProvider {
    static var previews: some View {
        Controls()
    }
}
