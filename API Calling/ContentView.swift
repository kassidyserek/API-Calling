//
//  ContentView.swift
//  API Calling
//
//  Created by KSerek on 2/17/22.
//

import SwiftUI

struct ContentView: View {
    @State private var inspires = [Inspire]()
    var body: some View {
        NavigationView {
            List(inspires) { inspire in
                NavigationLink(
                    destination: Text(inspire.author)
                        .padding(),
                    label: {
                        Text(inspire.quote)
                    })
            }
            .navigationTitle("Inspiring Quotes")
        }
        .onAppear(perform: {
            getInspired()
        })
    }
    func getInspired() {
        let apiKey = "?rapidapi-key=dcdeb11b82msh92bdd760de21315p1ddd5djsnd15d938d1e5b"
    }
}

struct Inspire: Identifiable {
    let id = UUID()
    var quote: String
    var author: String
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
