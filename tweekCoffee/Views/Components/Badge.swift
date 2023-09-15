//
//  Badge.swift
//  tweekCoffee
//
//  Created by tweekdev on 14/09/2023.
//

import SwiftUI

struct Badge: View {
    var text: String
        var backgroundColor: Color
        var textColor: Color
    var body: some View {
        Text(text)
            .font(.headline)
            .fontWeight(.bold)
            .padding(.horizontal, 10)
            .padding(.vertical, 4)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .cornerRadius(30)
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge(text: "New", backgroundColor: Color.blue, textColor: Color.white)
                    .previewLayout(.sizeThatFits)
    }
}
