//
//  MainTabView.swift
//  UIPractice
//
//  Created by 陳泓齊 on 2025/5/12.
//


import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ArtistListView()
                .tabItem {
                    Label("Artists", systemImage: "person.3.fill")
                }

            AlbumListView()
                .tabItem {
                    Label("Albums", systemImage: "rectangle.stack.fill")
                }

            SongListView()
                .tabItem {
                    Label("Songs", systemImage: "music.note.list")
                }
        }
    }
}
