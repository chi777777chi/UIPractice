import SwiftUI

struct SongListView: View {
    var body: some View {
        NavigationStack {
            List(Artist.allArtists.flatMap { $0.albums.flatMap { $0.songs } }) { song in
                NavigationLink(destination: SongDetailView(song: song)) {
                    HStack {
                        Image(song.albumCoverName)
                            .resizable()
                            .frame(width: 60, height: 60)
                            .cornerRadius(8)
                        VStack(alignment: .leading) {
                            Text(song.title)
                                .font(.headline)
                            Text(song.artist)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        .padding(.leading, 8)
                    }
                    .padding(.vertical, 8)
                }
            }
            .navigationTitle("Songs")
        }
    }
}

#Preview {
    SongListView()
}