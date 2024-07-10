//
//  ScrollPagingView.swift
//  Animaffe
//
//  Created by Nicolò Curioni on 10/07/24.
//

import SwiftUI

struct ScrollPagingView: View {
    let samplePhotos = [
        Photo("Dubai Forenede Arabiske Emirater"),
        Photo("San Francisco Golden Gate Bridge"),
        Photo("Sofia City Bulgaria")
    ]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 12) {
                ForEach(samplePhotos) { photo in
                    ItemPhoto(photo)
                        .containerRelativeFrame(.horizontal)
                        .clipShape(RoundedRectangle(cornerRadius: 36))
                }
            }
            .navigationTitle(Text("Paging"))
        }
        .contentMargins(24)
        .scrollTargetBehavior(.paging)
    }
}

#Preview {
    ScrollPagingView()
}
