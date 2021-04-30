//
//  AddView.swift
//  TodoList
//
//  Created by Andre Almeida on 29/04/21.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText: String = ""
    
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        ScrollView{
            TextField("Type something here...", text: $textFieldText)
                .padding(.horizontal)
                .frame(height: 55)
                .background(Color(.systemGray5))
                .cornerRadius(10)
            Button(action: saveButtonPressed, label: {
                Text("Save".uppercased())
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.accentColor)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .font(.headline)
                
            })
        }
        .padding()
        .navigationTitle("Add an item 🔏")
        .alert(isPresented: $showAlert, content: getAlert)
    }
    func saveButtonPressed(){
        if textIsAppropriate(){
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    
    func textIsAppropriate() -> Bool{
        if textFieldText.count < 3 {
            alertTitle = "Your new item must be at least 3 characters long 😓"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    
    func getAlert() -> Alert{
        return Alert(title: Text(alertTitle))
    }
    

}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddView()
        }
        .environmentObject(ListViewModel())
    }
}
