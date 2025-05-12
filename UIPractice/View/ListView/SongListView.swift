//
//  SongListView.swift
//  UIPractice
//
//  Created by 陳泓齊 on 2025/5/12.
//


import SwiftUI

struct SongListView: View {
    let columns = [GridItem(.flexible()), GridItem(.flexible())]

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(Artist.allArtists.flatMap { $0.albums.flatMap { $0.songs } }) { song in
                        NavigationLink(destination: SongDetailView(song: song)) {
                            VStack {
                                Image(song.albumCoverName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 120)
                                    .cornerRadius(10)
                                Text(song.title)
                                    .font(.headline)
                                    .multilineTextAlignment(.center)
                                Text(song.artist)
                                    .font(.caption)
                                    .foregroundColor(.gray)
                                    .multilineTextAlignment(.center)
                            }
                            .padding()
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Songs")
        }
    }
}

#Preview {
    SongListView()
}
