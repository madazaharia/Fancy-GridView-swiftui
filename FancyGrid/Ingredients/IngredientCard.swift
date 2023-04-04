//
//  IngredientCard.swift
//  FancyGrid
//
//  Created by Madalin Zaharia on 05.04.2023.
//
import SwiftUI

// MARK: - Ingredient View

struct IngredientCard: View {
    var ingredient: Ingredient
    var presenting: Bool
    var closeAction: () -> Void = {}
    
    @State private var visibleSide = FlipViewSide.front
    
    var body: some View {
        FlipView(visibleSide: visibleSide) {
            IngredientGraphic(
                ingredient: ingredient,
                style: presenting ? .cardFront : .thumbnail,
                closeAction: closeAction,
                flipAction: flipCard
            )
        } back: {
            IngredientGraphic(
                ingredient: ingredient,
                style: .cardBack,
                closeAction: closeAction,
                flipAction: flipCard
            )
        }
        .contentShape(Rectangle())
        .animation(.flipCard, value: visibleSide)
    }
    
    func flipCard() {
        visibleSide.toggle()
    }
}
