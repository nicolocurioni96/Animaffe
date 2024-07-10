//
//  ItemPhoto.swift
//  Animaffe
//
//  Created by Nicolò Curioni on 10/07/24.
//

import SwiftUI

struct ItemPhoto: View {
    var photo: Photo

    init(_ photo: Photo) {
        self.photo = photo
    }

    var body: some View {
        Image(photo.title)
            .resizable()
            .scaledToFill()
            .frame(height: 500)
    }
}
