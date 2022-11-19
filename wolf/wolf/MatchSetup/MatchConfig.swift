//
//  MatchConfig.swift
//  wolf
//
//  Created by Griffin Reding on 11/18/22.
//

import SwiftUI

struct MatchConfig: View {
    
    let viewModel: GolferModel
    
    @State private var wagerAmount: String = ""
    @State private var holes = 1
    @FocusState var isInputActive: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    //Write a function that takes in a golfer, and then saves that somehow for the round. Then call that function for each row here.
                    ForEach(viewModel.golfers) { golfer in
                        
                        GolferRowView(golferModel: .init(golfer: golfer))
                        
                        if golfer == viewModel.golfers[0] {
                            
                        }
                    }
                }
                .scrollDisabled(true)
                
                Picker("How many holes are you playing?", selection: $holes) {
                    Text("9 Holes").tag(0)
                    Text("18 Holes").tag(1)
                }
                .pickerStyle(SegmentedPickerStyle())
                
                HStack {
                    Text("Wager Per Point")
                    TextField("$$$", text: $wagerAmount)
                        .frame(
                            width: 200
                        )
                        .textFieldStyle(.roundedBorder)
                        .focused($isInputActive)
                        .keyboardType(.decimalPad)
                        .toolbar {
                            ToolbarItem(placement: .keyboard) {
                                Button("Save Wager") {
                                    isInputActive = false
                                    //Add a function here to update a variable to hold the amount
                                }
                            }
                        }
                        
                }
                .padding(.bottom, 30)
                VStack {
                    Button("Start Round") {
                        //Probably captures final order of golfers and holes played
                    }
                    .buttonStyle(RoundedRectangleButtonStyle())
                    .padding(.bottom, -10)
                }
            }
            .navigationTitle("Match Setup")
        }
    }
}

struct MatchConfig_Previews: PreviewProvider {
    static var previews: some View {
        MatchConfig(viewModel: .init())
    }
}
