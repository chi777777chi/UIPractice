//
//  ArtistListView.swift
//  UIPractice
//
//  Created by 陳泓齊 on 2025/5/12.
//


import SwiftUI

struct ArtistListView: View {
    var body: some View {
        NavigationStack {
            List(Artist.allArtists) { artist in
                NavigationLink(destination: ArtistDetailView(artist: artist)) {
                    HStack {
                        Image(artist.imageName)
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                        Text(artist.name)
                            .font(.headline)
                            .padding(.leading, 8)
                    }
                    .padding(.vertical, 8)
                }
            }
            .navigationTitle("Artists")
        }
    }
}

#Preview {
    ArtistListView()
}
