//
//  ContentView.swift
//  CDCI
//
//  Created by Tiziano Cialfi on 21/05/25.
//

import SwiftUI

struct ContentView: View {
  @State private var value: Double = 0
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            .gesture(
              DragGesture()
                .onChanged({ value in
                  self.value = value.translation.width
                })
            )
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
