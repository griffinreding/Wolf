//
//  GolferRowView.swift
//  wolf
//
//  Created by Griffin Reding on 11/18/22.
//

import SwiftUI

struct GolferRowView: View {
    
    @ObservedObject var golferModel: GolferRowModel
    
    
    var body: some View {
        
        HStack {
            
            Image(golferModel.pp)
                .resizable()
                .frame(
                    width: 60,
                    height: 60
                )
            Text(golferModel.name)
            
            Spacer()
            
            Image("wolf")
                .resizable()
                .frame(
                    width: 25,
                    height: 25
                )
        }
    }
}

struct GolferRowView_Previews: PreviewProvider {
    static var previews: some View {
        GolferRowView(golferModel: .init(golfer: .init(name: "Griffin Reding", pp: "pp")))
    }
}
