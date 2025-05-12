//
//  SongDetailView.swift
//  UIPractice
//
//  Created by 陳泓齊 on 2025/5/6.
//

import SwiftUI

struct SongDetailView: View {
    let song: Song
    
    var body: some View {
        VStack(spacing: 20) {
            List{
                Text(Song.eminemSongs[0].artist)
            }
            Image(song.albumCoverName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(12)
                .frame(height: 300)

            Text(song.title)
                .font(.title)
                .fontWeight(.bold)

            Text("Singer: \(song.artist)")
                .font(.subheadline)
                .foregroundColor(.gray)

            Text("Description: \(song.description)")
                .font(.body)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal)

            Button(action: {
                // Add your play logic here
                print("Playing \(song.title)")
            }) {
                Label("Play", systemImage: "play.fill")
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.horizontal)

            Spacer()
        }
        .padding()
        .navigationTitle("Now Playing")
    }
}
//
#Preview {
    let mockSong = Song(
        title: "Mockingbird Symphony",
        artist: "Eminem",
        albumCoverName: "sample_album",
        description: "a song for eminem's daughter"// Make sure you have an image named "sample_album" in Assets
    )
    SongDetailView(song: mockSong)
}
