//
//  GolferModel.swift
//  wolf
//
//  Created by Griffin Reding on 11/18/22.
//

import Foundation
import SwiftUI

class GolferModel: ObservableObject {
    
    @Published var golfers: [Golfer] = []
    
    init() {
        let golfer = Golfer(name: "Testy Tester", pp: "pp")
        self.golfers = [golfer, golfer, golfer, golfer]
    }
    
}


public struct Golfer: Identifiable, Equatable {
    
    public let id = UUID().uuidString
    let name: String
    let pp: String
    
    
}
