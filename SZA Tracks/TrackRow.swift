//
//  TrackRow.swift
//  SZA Tracks
//
//  Created by Melissa Saechao on 6/6/24.
//

import SwiftUI

struct TrackRow: View {
    var track: Tracks
    
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .background(content:  {
                    Image(track.artwork)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                })
                .foregroundColor(.clear)
                .cornerRadius(10)
            
            
            Rectangle()
                .foregroundColor(.black)
                .opacity(0.5)
                .cornerRadius(10)
            HStack {
                
                VStack (alignment: .leading) {
                    Spacer()
                    Text(track.trackName)
                        .multilineTextAlignment(.leading)
                        .padding(.trailing)
                        .font(.title)
                        .bold()
                    HStack{
                        Text(track.artistName)
                        Spacer()
                        Image(systemName: "arrowshape.turn.up.forward")
                    }
                    
                }
                .padding()
                .foregroundColor(.white)
                Spacer()
                
            }
            
            
        }
        .frame(height: 150)
    }
}

#Preview {
    TrackRow(track: Tracks(trackName: "Kill Bill", artistName: "SZA", artwork: "ctrl", collectionName: "Ctrl", primaryGenreName: "R&B/Soul", releaseDate: "Apr 28, 2017", trackTime: "4:35"))
}
