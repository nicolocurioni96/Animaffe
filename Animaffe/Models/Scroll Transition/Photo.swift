//
//  Photo.swift
//  Animaffe
//
//  Created by Nicolò Curioni on 10/07/24.
//

import SwiftUI

struct Photo: Identifiable {
    var title: String

    var id: Int = .random(in: 0 ... 100)

    init(_ title: String) {
        self.title = title
    }
}
