//
//  SearchBar.swift
//  tweekCoffee
//
//  Created by tweekdev on 21/09/2023.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
            TextField("Search", text: $searchText)
        }
        .padding(EdgeInsets(top: 15, leading: 10, bottom: 15, trailing: 10))
        .font(.headline)
        .background(.white)
        .foregroundColor(.black)
        .cornerRadius(50)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(searchText: .constant(""))
    }
}
