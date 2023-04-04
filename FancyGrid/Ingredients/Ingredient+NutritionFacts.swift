//
//  Ingredient+NutritionFacts.swift
//  FancyGrid
//
//  Created by Madalin Zaharia on 05.04.2023.
//

extension Ingredient {
    var nutritionFact: NutritionFact? {
        NutritionFact.lookupFoodItem(id, forVolume: .cups(1))
    }
}
