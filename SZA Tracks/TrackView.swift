//
//  ContentView.swift
//  SZA Tracks
//
//  Created by Melissa Saechao on 6/6/24.
//

import SwiftUI

struct TrackView: View {
    
    @State var track = [Tracks]()
    var dataService = DataService()
    
    var body: some View {
        NavigationStack {
            ScrollView (showsIndicators: false) {
                VStack {
                    ForEach(track) { track in
                        NavigationLink {
                            DetailView(track: track)
                        } label: {
                            TrackRow(track: track)
                                .padding(.bottom, 10)
                        }
                        
                    }
                }
                
            }.padding(.horizontal)
                .navigationTitle("SZA's Tracks")
        }
        .onAppear {
            track = dataService.getFileData()
        }
    }
}

#Preview {
    TrackView()
}
