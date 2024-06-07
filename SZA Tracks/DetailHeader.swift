//
//  DetailHeader.swift
//  SZA Tracks
//
//  Created by Melissa Saechao on 6/6/24.
//

import SwiftUI

struct DetailHeader: View {
    
    var track: Tracks
    
    var body: some View {
        HStack {
            Image(track.artwork)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 150)
            Text(track.trackName)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .lineLimit(nil)
                .padding(.leading)
        }
    }
}

#Preview {
    DetailHeader(track: Tracks(trackName: "Kill Bill", artistName: "SZA", artwork: "ctrl", collectionName: "Ctrl", primaryGenreName: "R&B/Soul", releaseDate: "Apr 27, 2017", trackTime: "3:45"))
}
