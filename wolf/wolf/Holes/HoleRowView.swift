//
//  HoleRowView.swift
//  wolf
//
//  Created by Griffin Reding on 11/19/22.
//

import SwiftUI

struct HoleRowView: View {
    
    @State private var score: String = ""
    
    var body: some View {
        
        HStack {
            HStack {
                Image("pp")
                    .resizable()
                    .frame(
                        width: 60,
                        height: 60
                    )
                Text("Griffin Reding")
            }
            
            HStack {
                Image("wolf")
                    .resizable()
                    .frame(
                        width: 25,
                        height: 25
                    )
                
                TextField("Score", text: $score)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.decimalPad)
                    .frame(
                        width: 60
                    )
                    .toolbar {
                        ToolbarItem(placement: .keyboard) {
                            Button("Save Wager") {

                                
                            }
                        }
                    }
            }
            .padding(.leading, 140)
        }
        
    }
}

struct HoleRowView_Previews: PreviewProvider {
    static var previews: some View {
        HoleRowView()
    }
}
