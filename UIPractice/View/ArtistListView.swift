import SwiftUI

struct ArtistListView: View {
    var body: some View {
        NavigationStack {
            List(allArtists) { artist in
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
