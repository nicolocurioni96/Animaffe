//
//  DynamicView.swift
//  Animaffe
//
//  Created by Nicolò Curioni on 26/06/24.
//

import SwiftUI

struct DynamicView: View {
    var imageName: String = "person.fill"
    
    var body: some View {
        Circle()
            .fill(Color.orange)
            .overlay {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .scaleEffect(0.5)
                    .foregroundStyle(.white)
            }
            .frame(width: 60, height: 60)
            .compositingGroup()
    }
}

#Preview {
    DynamicView()
}
