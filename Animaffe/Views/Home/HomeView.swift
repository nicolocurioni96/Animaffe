//
//  HomeView.swift
//  Animaffe
//
//  Created by Nicolò Curioni on 26/06/24.
//

import SwiftUI

struct HomeView: View {
    @State private var effects: [EffectType] = [
        .init(name: "Custom Transition", viewType: .init(CustomTransitionView()))
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(effects, id: \.id) { effect in
                    NavigationLink {
                        effect.viewType
                    } label: {
                        HStack {
                            Text(effect.name)
                                .font(.title3)
                                .fontWeight(.medium)
                        }
                    }
                }
            }
            .navigationTitle(Text("Animaffe"))
        }
    }
}

#Preview {
    HomeView()
}
