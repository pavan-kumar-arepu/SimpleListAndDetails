//
//  ContentView.swift
//  List_Detail
//
//  Created by Pavankumar Arepu on 21/06/23.
//

import SwiftUI

struct ContentView: View {
    
    let artistData = [
        Artist(name: "Artist 1", age: 30, awards: ["Award 1", "Award 11"], shortDesc: "Short description 1", description: "Description 1", images: ["image1"]),
        Artist(name: "Artist 2", age: 35, awards: ["Award 2", "Award 22"], shortDesc: "Short description 2", description: "Description 2", images: ["image2"]),
        Artist(name: "Artist 3", age: 30, awards: ["Award 3", "Award 33"], shortDesc: "Short description 1", description: "Description 1", images: ["image1"]),
        Artist(name: "Artist 4", age: 35, awards: ["Award 4", "Award 44"], shortDesc: "Short description 2", description: "Description 2", images: ["image2"]),
        
        // Add more artists here...
    ]
    var body: some View {
        ArtistListScreen(artists: artistData)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
