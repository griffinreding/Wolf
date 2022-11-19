//
//  StartRoundButton.swift
//  wolf
//
//  Created by Griffin Reding on 11/18/22.
//

import SwiftUI

struct RoundedRectangleButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Spacer()
            configuration.label.foregroundColor(.black)
            Spacer()
        }
        .padding()
        .background(Color.blue.cornerRadius(8))
    }
}
