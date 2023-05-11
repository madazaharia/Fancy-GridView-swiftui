//
//  Ingredient.swift
//  FancyGrid
//
//  Created by Madalin Zaharia on 05.04.2023.
//

struct Ingredient: Identifiable, Codable {
    var id: String
    var name: String
    var title = CardTitle()
    var thumbnailCrop = Crop()
    var cardCrop = Crop()

    enum CodingKeys: String, CodingKey {
        case id
        case name
    }
}

// MARK: - All Ingredients

extension Ingredient {
    static let all: [Ingredient] = [
        .avocado,
        .almondMilk,
        .banana,
        .blueberry,
        .carrot,
        .chocolate,
        .coconut,
        .kiwi,
        .lemon,
        .mango,
        .orange,
        .papaya,
        .peanutButter,
        .pineapple,
        .raspberry,
        .spinach,
        .strawberry,
        .watermelon
    ]
}
