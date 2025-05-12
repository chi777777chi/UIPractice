//
//  MockArtist.swift
//  UIPractice
//
//  Created by 陳泓齊 on 2025/5/12.
//
extension Artist {
    static let allArtists = [eminem, kendrick, travisScott]
    
    static let eminem = Artist(
        name: "Eminem",
        bio: "Eminem is a rapper, songwriter, and record producer.",
        imageName: "Eminem",
        albums: [
            Album(
                title: "Kamikaze",
                artist: "Eminem",
                releaseDate: "2018",
                albumCoverName: "Kamikaze",
                songs: Song.eminemSongs.filter { $0.albumCoverName == "Kamikaze" }
            ),
            Album(
                title: "Music To Be Murdered By",
                artist: "Eminem",
                releaseDate: "2020",
                albumCoverName: "Music To Be Murdered By",
                songs: Song.eminemSongs.filter { $0.albumCoverName == "Music To Be Murdered By" }
            ),
            Album(
                title: "Recovery - Explicit Version",
                artist: "Eminem",
                releaseDate: "2010",
                albumCoverName: "Recovery - Explicit Version",
                songs: Song.eminemSongs.filter { $0.albumCoverName == "Recovery - Explicit Version" }
            ),
            Album(
                title: "Revival",
                artist: "Eminem",
                releaseDate: "2017",
                albumCoverName: "Revival",
                songs: Song.eminemSongs.filter { $0.albumCoverName == "Revival" }
            ),
            Album(
                title: "The Death of Slim Shady",
                artist: "Eminem",
                releaseDate: "2024",
                albumCoverName: "The Death of Slim Shady (Coup De Grâce)- Expanded Mourner’s Edition",
                songs: Song.eminemSongs.filter { $0.albumCoverName == "The Death of Slim Shady (Coup De Grâce)- Expanded Mourner’s Edition" }
            )
        ]
    )
    
    static let kendrick = Artist(
        name: "Kendrick Lamar",
        bio: "Kendrick Lamar is known for his poetic lyrics and impactful albums.",
        imageName: "kendricklamar",
        albums: [
            Album(
                title: "DAMN.",
                artist: "Kendrick Lamar",
                releaseDate: "2017",
                albumCoverName: "DAMN.",
                songs: Song.kendrickSongs.filter { $0.albumCoverName == "DAMN." }
            ),
            Album(
                title: "Mr. Morale & The Big Steppers",
                artist: "Kendrick Lamar",
                releaseDate: "2022",
                albumCoverName: "Mr. Morale & The Big Steppers",
                songs: Song.kendrickSongs.filter { $0.albumCoverName == "Mr. Morale & The Big Steppers" }
            ),
            Album(
                title: "Black Panther: The Album",
                artist: "Kendrick Lamar",
                releaseDate: "2018",
                albumCoverName: "Black Panther- The Album",
                songs: Song.kendrickSongs.filter { $0.albumCoverName == "Black Panther- The Album" }
            ),
            Album(
                title: "GNX",
                artist: "Kendrick Lamar",
                releaseDate: "2024",
                albumCoverName: "GNX",
                songs: Song.kendrickSongs.filter { $0.albumCoverName == "GNX" }
            )
        ]
    )
    
    static let travisScott = Artist(
        name: "Travis Scott",
        bio: "Travis Scott is a rapper and producer known for his psychedelic trap music.",
        imageName: "TravisScott",
        albums: [
            Album(
                title: "ASTROWORLD",
                artist: "Travis Scott",
                releaseDate: "2018",
                albumCoverName: "ASTROWORLD",
                songs: Song.travisSongs.filter { $0.albumCoverName == "ASTROWORLD" }
            ),
            Album(
                title: "Rodeo",
                artist: "Travis Scott",
                releaseDate: "2015",
                albumCoverName: "Rodeo",
                songs: Song.travisSongs.filter { $0.albumCoverName == "Rodeo" }
            ),
            Album(
                title: "UTOPIA",
                artist: "Travis Scott",
                releaseDate: "2023",
                albumCoverName: "UTOPIA",
                songs: Song.travisSongs.filter { $0.albumCoverName == "UTOPIA" }
            )
        ]
    )
    
  
    
}
