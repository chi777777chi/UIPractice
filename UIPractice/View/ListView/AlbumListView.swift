//
//  AlbumListView.swift
//  UIPractice
//
//  Created by 陳泓齊 on 2025/5/12.
//


import SwiftUI

struct AlbumListView: View {
    var body: some View {
        NavigationStack {
            TabView {
                ForEach(Artist.allArtists.flatMap { $0.albums }) { album in
                    NavigationLink(destination: AlbumDetailView(album: album)) {
                        VStack {
                            Image(album.albumCoverName)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 300)
                                .cornerRadius(12)
                            Text(album.title)
                                .font(.title2)
                                .bold()
                            Text(album.artist)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        .padding()
                    }
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            .navigationTitle("Albums")
        }
    }
}

#Preview {
    AlbumListView()
}
