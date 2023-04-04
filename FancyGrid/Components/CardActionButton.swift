//
//  CardActionButton.swift
//  FancyGrid
//
//  Created by Madalin Zaharia on 05.04.2023.
//

import SwiftUI

struct CardActionButton: View {
    var label: LocalizedStringKey
    var systemImage: String
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            Image(systemName: systemImage)
                .font(Font.title.bold())
                .imageScale(.large)
                .frame(width: 44, height: 44)
                .padding()
                .contentShape(Rectangle())
        }
        .buttonStyle(SquishableButtonStyle(fadeOnPress: false))
        .accessibility(label: Text(label))
    }
}

struct CardActionButton_Previews: PreviewProvider {
    static var previews: some View {
        CardActionButton(label: "Close", systemImage: "xmark", action: {})
            .previewLayout(.sizeThatFits)
    }
}
