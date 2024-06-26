//
//  Twirl.swift
//  Animaffe
//
//  Created by Nicolò Curioni on 26/06/24.
//

import SwiftUI

struct Twirl: Transition {
    func body(content: Content, phase: TransitionPhase) -> some View {
        content
            .scaleEffect(phase.isIdentity ? 1 : 0.5)
            .opacity(phase.isIdentity ? 1 : 0)
            .blur(radius: phase.isIdentity ? 0 : 10)
            .rotationEffect(
                .degrees(
                    phase == .willAppear ? 360 :
                        phase == .didDisappear ?
                    -360 : .zero
                )
            )
            .brightness(phase == .willAppear ? 1 : 0)
    }
}
