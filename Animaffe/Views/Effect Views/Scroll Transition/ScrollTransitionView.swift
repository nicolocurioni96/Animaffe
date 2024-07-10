//
//  ScrollTransitionView.swift
//  Animaffe
//
//  Created by Nicolò Curioni on 10/07/24.
//

import SwiftUI

struct ScrollTransitionView: View {
    @State private var scrollTransitions: [ScrollTransitionType] = [
        .init(name: "Paging + Parallax", viewType: .init(ScrollPagingParallaxView())),
        .init(name: "Paging + Rotation", viewType: .init(ScrollPagingRotationView())),
        .init(name: "Paging", viewType: .init(ScrollPagingView()))
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(scrollTransitions, id: \.id) { scrollTransition in
                    NavigationLink {
                        scrollTransition.viewType
                    } label: {
                        HStack {
                            Text(scrollTransition.name)
                                .font(.title3)
                                .fontWeight(.medium)
                        }
                    }
                }
            }
            .navigationTitle(Text("Scroll"))
        }
    }
}

#Preview {
    ScrollTransitionView()
}
