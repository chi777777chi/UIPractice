import SwiftUI

struct AlbumListView: View {
    var body: some View {
        NavigationStack {
            List(Album.allAlbums) { album in
                NavigationLink(destination: AlbumDetailView(album: album)) {
                    HStack {
                        Image(album.albumCoverName)
                            .resizable()
                            .frame(width: 60, height: 60)
                            .cornerRadius(8)
                        VStack(alignment: .leading) {
                            Text(album.title)
                                .font(.headline)
                            Text(album.artist)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        .padding(.leading, 8)
                    }
                    .padding(.vertical, 8)
                }
            }
            .navigationTitle("Albums")
        }
    }
}

#Preview {
    AlbumListView()
}
