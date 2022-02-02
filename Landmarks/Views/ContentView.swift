//
//  ContentView.swift
//  Landmarks
//
//  Created by Sam Lai on 2022/1/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            /**
             When you specify only the height parameter, the view automatically sizes to the width of its content. In this case, MapView expands to fill the available space.
             */
            MapView()
            /**
             To allow the map content to extend to the top edge of the screen, add the ignoresSafeArea(edges: .top) modifier to the map view.
             */
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            /**
             These adjustments make room for the text by moving the image upwards.
             */
            RectangleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock”")
                    .font(.title)
                
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                /**
                 When you apply a modifier to a layout view like a stack, SwiftUI applies the modifier to all the elements contained in the group.
                 */
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here")
            }
            .padding()
            
            /**
             Add a spacer at the bottom of the outer VStack to push the content to the top of the screen.
             */
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
