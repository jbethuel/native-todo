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
    @State private var text: String = ""
    @State private var todos = [
        Todo(name: "Wake Up"),
        Todo(name: "Make bed"),
        Todo(name: "Wash face and brush"),
        Todo(name: "Cook"),
        Todo(name: "Eat")
    ]
    
    var body: some View {
        VStack {
            ScrollView {
                ForEach(todos, id: \.id) { todo in
                    VStack {
                        HStack {
                            Text(todo.name)
                            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                            }.padding(.trailing)
                        }
                    }
                }
            }
            HStack {
                TextField("Add a todo", text: $text).textInputAutocapitalization(.never).autocorrectionDisabled(true).onSubmit{
                    todos.append(Todo(name: text))
                    text = ""
                }
                Button("Submit") {
                    todos.append(Todo(name: text))
                    text = ""
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
