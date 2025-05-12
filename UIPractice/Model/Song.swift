//
//  Song.swift
//  UIPractice
//
//  Created by 陳泓齊 on 2025/5/6.
//

import Foundation

struct Song: Identifiable {
    let id = UUID()
    let title: String
    let artist: String
    let albumCoverName: String
    let description: String
}
