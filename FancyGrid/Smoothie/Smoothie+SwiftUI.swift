//
//  Smoothie+SwiftUI.swift
//  FancyGrid
//
//  Created by Madalin Zaharia on 05.04.2023.
//

import SwiftUI

// MARK: - SwiftUI.Image
extension Smoothie {
    var image: Image {
        Image("smoothie/\(id)", label: Text(title))
            .renderingMode(.original)
    }
}
