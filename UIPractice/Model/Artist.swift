//
//  Artist.swift
//  UIPractice
//
//  Created by 陳泓齊 on 2025/5/12.
//

import Foundation

struct Artist: Identifiable {
    let id = UUID()
    let name: String
    let bio: String
    let imageName: String
    let albums: [Album]
}
