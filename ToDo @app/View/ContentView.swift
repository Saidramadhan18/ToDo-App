//
//  ContentView.swift
//  ToDo @app
//
//  Created by Muhammad Said Ramadhan on 08/03/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingAddTodoView: Bool = false
    var body: some View {
        NavigationView{
            List (0..<5){ item in
                Text("Hello, world!")
            }
            .navigationBarTitle("Todo", displayMode: .inline)
            .navigationBarItems(trailing:
                                    Button(action: {
                                        self.showingAddTodoView.toggle()
                                    }){
                                        Image(systemName: "plus")
                                    }
                .sheet(isPresented: $showingAddTodoView){
                    AddToDoView()
                })
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
