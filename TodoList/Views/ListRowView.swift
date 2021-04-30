//
//  ListRowView.swift
//  TodoList
//
//  Created by Andre Almeida on 29/04/21.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical)
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static var item1 = ItemModel(title: "Text", isCompleted: false)
    static var item2 = ItemModel(title: "Text", isCompleted: true)
    
    static var previews: some View {
        Group {
            ListRowView(item: item2)
            ListRowView(item: item1)
        }
        .previewLayout(.sizeThatFits)
    }
}
