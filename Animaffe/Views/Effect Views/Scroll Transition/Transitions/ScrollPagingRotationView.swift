//
//  ScrollPagingRotationView.swift
//  Animaffe
//
//  Created by Nicolò Curioni on 10/07/24.
//

import SwiftUI

struct ScrollPagingRotationView: View {
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
                        .scrollTransition(axis: .horizontal) { content, phase in
                            content
                                .rotationEffect(.degrees(phase.value * 12.0))
                        }
                }
            }
            .navigationTitle(Text("Paging Rotation"))
        }
        .contentMargins(24)
        .scrollTargetBehavior(.paging)
    }
}

#Preview {
    ScrollPagingRotationView()
}
