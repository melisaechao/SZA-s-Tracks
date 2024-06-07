//
//  DetailView.swift
//  SZA Tracks
//
//  Created by Melissa Saechao on 6/6/24.
//

import SwiftUI

struct DetailView: View {
    var track: Tracks
    
    var body: some View {
        
        
        VStack(alignment: .leading) {
            
            DetailHeader(track: track)
            
            VStack(alignment: .leading) {
                
                DetailRow(title: "ARTIST", detail: track.artistName)
                DetailRow(title: "ALBUM", detail: track.collectionName)
                DetailRow(title: "GENRE", detail: track.primaryGenreName)
                DetailRow(title: "RELEASE DATE", detail: track.releaseDate)
                DetailRow(title: "DURATION", detail: track.trackTime)
            }
            .padding(.top)
        }
        
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.horizontal)
        Spacer()
        
    }
}

#Preview {
    DetailView(track: Tracks(trackName: "Kill Bill", artistName: "SZA", artwork: "ctrl", collectionName: "Ctrl", primaryGenreName: "R&B/Soul", releaseDate: "Apr 28, 2017", trackTime: "4:35"))
}
