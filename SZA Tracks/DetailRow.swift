//
//  DetailRow.swift
//  SZA Tracks
//
//  Created by Melissa Saechao on 6/6/24.
//

import SwiftUI

struct DetailRow: View {
    var title: String
    var detail: String
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text(title)
                .font(.headline)
            Text(detail)
                .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                .truncationMode(.tail)
                .padding(.bottom)
        }
    }
}

#Preview {
    DetailRow(title: "Album", detail: "Ctrl")
}
