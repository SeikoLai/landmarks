//
//  RectangleImage.swift
//  Landmarks
//
//  Created by Sam Lai on 2022/1/25.
//

import SwiftUI

struct RectangleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Rectangle())
            .overlay(Rectangle().stroke(Color.white, lineWidth: 10))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        RectangleImage()
    }
}
