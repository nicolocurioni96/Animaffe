//
//  ItemLabel.swift
//  Animaffe
//
//  Created by Nicolò Curioni on 10/07/24.
//

import SwiftUI

struct ItemLabel: View {
    var photo: Photo

    init(_ photo: Photo) {
        self.photo = photo
    }

    var body: some View {
        Text(photo.title)
            .font(.title)
    }
}

