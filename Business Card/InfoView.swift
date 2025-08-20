//
//  InfoView.swift
//  Business Card
//
//  Created by Lidiia Diachkovskaia on 8/20/25.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(.green)
                    Text(text)
                })
            .padding(.horizontal)
            .font(.system(size: 20))
    }
}

#Preview {
    InfoView(text: "text", imageName: "phone.fill")
        .previewLayout(.sizeThatFits)
}
