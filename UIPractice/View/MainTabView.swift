import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ArtistListView()
                .tabItem {
                    Label("Artists", systemImage: "person.3.fill")
                }

            Text("Albums")
                .tabItem {
                    Label("Albums", systemImage: "rectangle.stack.fill")
                }

            Text("Gallery")
                .tabItem {
                    Label("Gallery", systemImage: "photo.fill")
                }
        }
    }
}