//
//  Animations.swift
//  FancyGrid
//
//  Created by Madalin Zaharia on 05.04.2023.
//

import SwiftUI

extension Animation {
    static let openCard = Animation.spring(response: 0.45, dampingFraction: 0.9)
    static let closeCard = Animation.spring(response: 0.35, dampingFraction: 1)
    static let flipCard = Animation.spring(response: 0.35, dampingFraction: 0.7)
}
