//
//  Help.swift
//  BikePSS
//
//  Created by Adam Eastwood on 04/03/2023.
//

import SwiftUI

struct HelpView: View {
    @State private var isPresented = false
    
    var body: some View {
        Button("About", action: {
            isPresented = true
        })
        .alert(isPresented: $isPresented) {
            Alert(title: Text("About"),
                  message: Text("BikePSS - Version 1.0"),
                  dismissButton: .default(Text("OK")))
        }
    }
}

struct Help_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
