//
//  ContentView.swift
//  Business Card
//
//  Created by Lidiia Diachkovskaia on 8/19/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 200)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color.white, style: StrokeStyle(lineWidth: 4))
                    )
                Text("Lidiia Diachkovskaia")
                    .font(Font.custom("Pacifico-Regular", size: 35))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .font(.system(size: 25))
                    .bold()
                    .opacity(0.8)
                    .foregroundColor(.white)
                Divider()
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.white)
                    .frame(width: 250, height: 50)
                    .overlay(Text("+1 123 456 7890")
                        .foregroundColor(.black))
                    .font(.system(size: 20))
                Text("lidiiadevs@gmail.com")
            }
            
        }
    }
}

#Preview {
    ContentView()
}
