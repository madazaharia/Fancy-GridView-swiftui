//
//  Nutritions.swift
//  FancyGrid
//
//  Created by Madalin Zaharia on 05.04.2023.
//

import SwiftUI

public struct Nutrition: Identifiable {
    public var id: String
    public var name: LocalizedStringKey
    public var measurement: DisplayableMeasurement
    public var indented: Bool = false
}

extension NutritionFact {
    public var nutritions: [Nutrition] {
        [
            Nutrition(
                id: "totalFat",
                name: "Total Fat",
                measurement: totalFat
            ),
            Nutrition(
                id: "totalSaturatedFat",
                name: "Saturated Fat",
                measurement: totalSaturatedFat,
                indented: true
            ),
            Nutrition(
                id: "totalMonounsaturatedFat",
                name: "Monounsaturated Fat",
                measurement: totalMonounsaturatedFat,
                indented: true
            ),
            Nutrition(
                id: "totalPolyunsaturatedFat",
                name: "Polyunsaturated Fat",
                measurement: totalPolyunsaturatedFat,
                indented: true
            ),
            Nutrition(
                id: "cholesterol",
                name: "Cholesterol",
                measurement: cholesterol
            ),
            Nutrition(
                id: "sodium",
                name: "Sodium",
                measurement: sodium
            ),
            Nutrition(
                id: "totalCarbohydrates",
                name: "Total Carbohydrates",
                measurement: totalCarbohydrates
            ),
            Nutrition(
                id: "dietaryFiber",
                name: "Dietary Fiber",
                measurement: dietaryFiber,
                indented: true
            ),
            Nutrition(
                id: "sugar",
                name: "Sugar",
                measurement: sugar,
                indented: true
            ),
            Nutrition(
                id: "protein",
                name: "Protein",
                measurement: protein
            ),
            Nutrition(
                id: "calcium",
                name: "Calcium",
                measurement: calcium
            ),
            Nutrition(
                id: "potassium",
                name: "Potassium",
                measurement: potassium
            ),
            Nutrition(
                id: "vitaminA",
                name: "Vitamin A",
                measurement: vitaminA
            ),
            Nutrition(
                id: "vitaminC",
                name: "Vitamin C",
                measurement: vitaminC
            ),
            Nutrition(
                id: "iron",
                name: "Iron",
                measurement: iron
            )
        ]
    }
}
