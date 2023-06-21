//
//  ArtistList.swift
//  List_Detail
//
//  Created by Pavankumar Arepu on 21/06/23.
//

import SwiftUI

struct ArtistListScreen: View {
    let artists: [Artist]
    
    var body: some View {
        NavigationView {
            List(artists) { artist in
                NavigationLink(destination: ArtistDetailScreen(artist: artist, artists: artists)) {
                    ArtistListRow(artist: artist)
                }
            }
            .navigationBarTitle("Artists")
        }
    }
}

struct ArtistListRow: View {
    let artist: Artist

    var body: some View {
        HStack {
            // Display artist icon
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 50, height: 50)
            
            VStack(alignment: .leading) {
                Text(artist.name)
                    .font(.headline)
                Text(artist.shortDesc)
                    .font(.subheadline)
            }
        }
    }
}
