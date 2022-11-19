//
//  GolferRowModel.swift
//  wolf
//
//  Created by Griffin Reding on 11/18/22.
//

import Foundation
import SwiftUI

class GolferRowModel: ObservableObject {
    
    let name: String
    let pp: String
    
    init(golfer: Golfer) {
        self.name = golfer.name
        self.pp = golfer.pp
    }
    
}
