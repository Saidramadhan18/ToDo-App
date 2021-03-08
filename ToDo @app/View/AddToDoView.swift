//
//  AddToDoView.swift
//  ToDo @app
//
//  Created by Muhammad Said Ramadhan on 08/03/21.
//

import SwiftUI

struct AddToDoView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var name: String = ""
    @State private var priority: String = "Normal"
    
    let priorities = ["High", "Normal", "Low"]
    
    var body: some View {
        NavigationView{
            VStack{
                Form{
                    TextField("Todo", text: $name)
                    
                    Picker("Priotirity", selection: $priority){
                        ForEach(priorities, id: \.self){
                            Text ($0)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    
                    Button(action: {
                        print("Save a new todo item")
                    }){
                        Text("Save")
                    }
                }
                Spacer()
            }
            .navigationBarTitle("New Todo", displayMode: .inline)
            .navigationBarItems(trailing:
                                    Button(action: {
                                        self.presentationMode.wrappedValue.dismiss()
                                    }){
                                        Image(systemName: "plus")})
        }
    }
}

struct AddToDoView_Previews: PreviewProvider {
    static var previews: some View {
        AddToDoView()
    }
}
