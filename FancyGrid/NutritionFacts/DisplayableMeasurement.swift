//
//  DisplayableMeasurement.swift
//  FancyGrid
//
//  Created by Madalin Zaharia on 05.04.2023.
//

import Foundation
import SwiftUI

public protocol DisplayableMeasurement {
    var unitImage: Image { get }
    func localizedSummary(unitStyle: MeasurementFormatter.UnitStyle, unitOptions: MeasurementFormatter.UnitOptions) -> String
}

extension DisplayableMeasurement {
    public func localizedSummary() -> String {
        localizedSummary(unitStyle: .long, unitOptions: [.providedUnit])
    }
}

extension Measurement: DisplayableMeasurement {
    public func localizedSummary(
        unitStyle: MeasurementFormatter.UnitStyle = .long,
        unitOptions: MeasurementFormatter.UnitOptions = [.providedUnit]
    ) -> String {
        let formatter = MeasurementFormatter()
        formatter.unitStyle = unitStyle
        formatter.unitOptions = unitOptions
        return formatter.string(from: self)
    }
    
    public var unitImage: Image {
        unit.unitIcon
    }
}
