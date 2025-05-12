//
//  Album.swift
//  UIPractice
//
//  Created by 陳泓齊 on 2025/5/6.
//
import Foundation

struct Album: Identifiable {
    let id = UUID()
    let title: String
    let artist: String
    let releaseDate: String
    let albumCoverName: String
    let songs: [Song]
    

}
