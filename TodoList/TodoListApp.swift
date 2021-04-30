//
//  TodoListApp.swift
//  TodoList
//
//  Created by Andre Almeida on 29/04/21.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - manages Models for View
 
 */


@main
struct TodoListApp: App {
    
   @StateObject var lisViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .environmentObject(lisViewModel)
        }
    }
}
