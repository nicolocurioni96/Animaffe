//
//  ScrollPagingParallaxView.swift
//  Animaffe
//
//  Created by Nicolò Curioni on 10/07/24.
//

import SwiftUI

struct ScrollPagingParallaxView: View {
    let samplePhotos = [
        Photo("Dubai Forenede Arabiske Emirater"),
        Photo("San Francisco Golden Gate Bridge"),
        Photo("Sofia City Bulgaria")
    ]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 12) {
                ForEach(samplePhotos) { photo in
                    VStack {
                        ZStack {
                            ItemPhoto(photo)
                                .scrollTransition(axis: .horizontal) { content, phase in
                                    content
                                        .offset(x: phase.isIdentity ? 0 : phase.value * -200)
                                }
                        }
                        .containerRelativeFrame(.horizontal)
                        .clipShape(RoundedRectangle(cornerRadius: 36))
                        
                        ItemLabel(photo)
                            .scrollTransition(axis: .horizontal) { content, phase in
                                content
                                    .opacity(phase.isIdentity ? 1 : 0)
                                    .offset(x: phase.value * 80)
                            }
                    }
                }
            }
            .navigationTitle(Text("Paging Parallax"))
        }
        .contentMargins(32)
        .scrollTargetBehavior(.paging)
    }
}

#Preview {
    ScrollPagingParallaxView()
}
