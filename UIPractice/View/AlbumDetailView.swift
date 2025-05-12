//
//  AlbumDetailView.swift
//  UIPractice
//
//  Created by 陳泓齊 on 2025/5/6.
//

import SwiftUI

struct AlbumDetailView: View {
    let album: Album

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Image(album.albumCoverName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .padding(.horizontal)

                Text(album.title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.horizontal)

                Text(album.artist)
                    .font(.title3)
                    .foregroundColor(.secondary)
                    .padding(.horizontal)

                Text("Released: \(album.releaseDate)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.horizontal)

                Text("Songs")
                    .font(.headline)
                    .padding([.top, .horizontal])

                ForEach(album.songs) { song in
                    VStack(alignment: .leading, spacing: 4) {
                        Text(song.title)
                            .font(.body)
                            .fontWeight(.medium)
                        Text(song.description)
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 8)
                }
            }
            .padding(.vertical)
        }
    }
}

#Preview {
    AlbumDetailView(album: Album(
        title: "The Eminem Show",
        artist: "Eminem",
        releaseDate: "2002",
        albumCoverName: Song.eminemSongs[0].albumCoverName,
        songs: Song.eminemSongs
    ))
}
