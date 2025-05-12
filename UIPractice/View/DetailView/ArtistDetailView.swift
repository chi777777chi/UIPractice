//
//  ContentView.swift
//  UIPractice
//
//  Created by 陳泓齊 on 2025/5/5.
//

import SwiftUI

struct ArtistDetailView: View {
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()

            VStack {
                Text("Eminem")
                    .font(.largeTitle)
                    .bold()
                ScrollView {
                    HStack {
                        Image("Eminem")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                            .clipShape(Circle())
                        EminemIntroduction
                    }
                    IntroductionView()
                }
                .font(.title)
                .bold()
                .padding()
            }
        }
    }
}

var EminemIntroduction: some View {
    Text("Eminem is a rapper, songwriter, and record producer. He is known for his rapid-fire delivery and controversial lyrics.")
        .font(.headline)
        
        
}

#Preview {
    ArtistDetailView()
}

struct IntroductionView: View {
    var body: some View {
        ScrollView(.vertical) {
            EminemAlbum()
            EminemPictureView()
        }
    }
}

struct EminemAlbum: View {
    var body: some View {
        HStack{
            Text("Eminem's Albums")
            Image(systemName: "music.note")
        }
        ScrollView(.horizontal) {
            HStack {
                Image("Premonition")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("images")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
    }
}
struct EminemPictureView: View {
    var body: some View {
        HStack{
            Text("Eminem's Pictures")
            Image(systemName: "photo")
            
        }
        ScrollView(.horizontal) {
            HStack{
                Image("Proof-eminem")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("Lose_Yourself")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
    }
}

