//
//  ContentView.swift
//  Simple Todo
//
//  Created by Bethuel Dela Cruz on 3/21/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("swift-logo")
            Text("The quick brown fox jumps over the lazy dog").bold().padding(Edge.Set.top, 3)
        }.padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
