//
//  ListRowView.swift
//  TodoList
//
//  Created by Andre Almeida on 29/04/21.
//

import SwiftUI

struct ListRowView: View {
    
    var title: String
    
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(title: "This is the first row")
    }
}
