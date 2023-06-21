//
//  ArtistList.swift
//  List_Detail
//
//  Created by Pavankumar Arepu on 21/06/23.
//

import SwiftUI

struct ArtistDetailScreen: View {
    let artist: Artist
    let artists: [Artist]
    @State private var selectedArtist: Artist?

    var selectedArtistDetails: Artist {
        selectedArtist ?? artist
    }

    var body: some View {
        VStack {
            ScrollView {
                // Display artist details
                VStack(alignment: .leading, spacing: 20) {
                    ForEach(selectedArtistDetails.images, id: \.self) { imageName in
                        Image(imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 200)
                    }

                    Text(selectedArtistDetails.description)
                        .font(.body)

                    Text("Awards:")
                        .font(.headline)

                    ForEach(selectedArtistDetails.awards, id: \.self) { award in
                        Text(award)
                            .font(.subheadline)
                    }
                }
                .padding()
            }

            // Display grid of artist icons
            HStack(spacing: 0) {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: 16) {
                        ForEach(artists) { artist in
                            Button(action: {
                                selectedArtist = artist
                            }) {
                                Image(systemName: "person.fill")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                            }
                        }
                    }
                    .padding(.horizontal)
                }
            }
            .frame(height: 50)
            .padding()
        }
        .navigationBarTitle(selectedArtistDetails.name)
    }
}
