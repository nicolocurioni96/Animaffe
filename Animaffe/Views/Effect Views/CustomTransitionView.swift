//
//  CustomTransitionView.swift
//  Animaffe
//
//  Created by Nicolò Curioni on 26/06/24.
//


import SwiftUI

struct CustomTransitionView: View {
    
    @State var isVisible: Bool = false
    
    let systemImageNames: [CustomSystemImage] = [
        .init(name: "star"), .init(name: "heart"), .init(name: "house"), .init(name: "bell"), .init(name: "flame"), .init(name: "paperplane"), .init(name: "cart"),
        .init(name: "bicycle"), .init(name: "person"), .init(name: "pencil"), .init(name: "book"), .init(name: "bookmark"), .init(name: "camera"), .init(name: "cloud"),
        .init(name: "envelope"), .init(name: "eye"), .init(name: "flag"), .init(name: "gift"), .init(name: "globe"), .init(name: "hammer"), .init(name: "headphones"),
        .init(name: "leaf"), .init(name: "lightbulb"), .init(name: "lock"), .init(name: "map"), .init(name: "moon"), .init(name: "music.note"), .init(name: "paintbrush"),
        .init(name: "phone"), .init(name: "printer"), .init(name: "scissors"), .init(name: "shield"), .init(name: "star.fill"), .init(name: "sun.max"),
        .init(name: "trash"), .init(name: "umbrella"), .init(name: "video"), .init(name: "wifi"), .init(name: "wrench"), .init(name: "clock"), .init(name: "calendar"),
        .init(name: "magnifyingglass"), .init(name: "note"), .init(name: "doc"), .init(name: "folder"), .init(name: "paperclip"), .init(name: "link")
    ]
    
    
    var body: some View {
        NavigationStack {
            if isVisible {
                List {
                    ForEach(systemImageNames, id: \.id) { image in
                        HStack(spacing: 0) {
                            DynamicView(imageName: image.name)
                                .transition(Twirl())
                            
                            Spacer()
                            
                            Text(image.name)
                                .font(.title2)
                        }
                    }
                }
                .listStyle(InsetGroupedListStyle())
            } else {
                VStack {
                    Text("Empty list..")
                }
            }
            
            Spacer()
            
            GroupBox {
                Toggle(isOn: $isVisible.animation()) {
                    Text("Visibility")
                }
                .fontWeight(.medium)
            }
            .padding()
        }
    }
}
