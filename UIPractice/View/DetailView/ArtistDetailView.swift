//
//  ContentView.swift
//  UIPractice
//
//  Created by 陳泓齊 on 2025/5/5.
//

import SwiftUI

struct ArtistDetailView: View {
    let artist: Artist
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()

            VStack {
                Text(artist.name)
                    .font(.largeTitle)
                    .bold()
                ScrollView {
                    HStack {
                        Image(artist.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                            .clipShape(Circle())
                        Text(artist.bio)
                            .font(.headline)
                    }
                    IntroductionView(artist: artist)
                }
                .font(.title)
                .bold()
                .padding()
            }
        }
    }
}


struct IntroductionView: View {
    let artist: Artist
    var body: some View {
        ScrollView(.vertical) {
            ArtistAlbumView(albums: artist.albums)
//            ArtistPictureView(artist: artist)
        }
    }
}

struct ArtistAlbumView: View {
    let albums: [Album]
    var body: some View {
        HStack{
            Text("\(albums[0].artist)'s Albums")
            Image(systemName: "music.note")
        }
        ScrollView(.horizontal) {
            HStack {
                ForEach(albums, id: \.id) { album in
                    NavigationLink(destination: AlbumDetailView(album: album)) {
                        Image(album.albumCoverName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 180, height: 180)
                            .cornerRadius(10)
                    }
                }
            }
        }
    }
}
struct ArtistPictureView: View {
    let artist: Artist
    var body: some View {
        HStack{
            Text("\(artist.name)'s Pictures")
            Image(systemName: "photo")
            
        }
        ScrollView(.horizontal) {
            HStack{
                Image("Proof-eminem")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 180)
                    .cornerRadius(10)
                Image("Lose_Yourself")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 180)
                    .cornerRadius(10)
            }
        }
    }
}


#Preview {
    ArtistDetailView(artist: Artist.allArtists[1])
}
