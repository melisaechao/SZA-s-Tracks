//
//  Tracks.swift
//  SZA Tracks
//
//  Created by Melissa Saechao on 6/6/24.
//

import Foundation

struct Tracks: Identifiable, Decodable {
    
    let id = UUID()
    var trackName: String
    var artistName: String
    var artwork: String
    var collectionName: String
    var primaryGenreName: String
    var releaseDate: String
    var trackTime: String
}
