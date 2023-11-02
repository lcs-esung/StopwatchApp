//
//  CircleButtonView.swift
//  StopwatchApp
//
//  Created by Edna Sung on 2023-10-30.
//

import SwiftUI

struct CircleButtonView: View {
    
    let buttonColour: Color
    let label: String
    let labelColour: Color
    
    var body: some View {
        
        ZStack {
            Circle()
                .foregroundColor(buttonColour)
                .frame(width: 100)
            
            Circle()
                .foregroundColor(.black)
                .frame(width: 93)
            
            Circle()
                .foregroundColor(buttonColour)
                .frame(width: 89)
            
            
            Text(label)
                .foregroundColor(labelColour)
                .font(.title2)
        }

    }
}

#Preview {
    CircleButtonView(buttonColour: .gray, label: "Reset", labelColour: .white)
}
