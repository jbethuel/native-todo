//
//  ContentView.swift
//  Simple Todo
//
//  Created by Bethuel Dela Cruz on 3/21/23.
//

import SwiftUI

struct Todo: Identifiable {
    let name: String
    let id = UUID()
}

private var todos = [
    Todo(name: "Wake Up"),
    Todo(name: "Make bed"),
    Todo(name: "Wash face and brush"),
    Todo(name: "Cook"),
    Todo(name: "Eat")
]


struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                ScrollView {
                    ForEach(todos, id: \.id) { todo in
                        HStack {
                            Text(todo.name)
                            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                            }.padding(.trailing)
                        }
                    }
                }
            }
            
            HStack {
                TextField(/*@START_MENU_TOKEN@*/"Add a todo"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                Button("Submit") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
            }
            
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
