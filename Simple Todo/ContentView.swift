//
//  ContentView.swift
//  Simple Todo
//
//  Created by Bethuel Dela Cruz on 3/21/23.
//

import SwiftUI


struct Todo: Identifiable {
    let id = UUID()
    var name: String
    var isCompleted: Bool
}

class TodoViewModel: ObservableObject {
    @Published var todos: [Todo] = []
    init() {
        self.todos = [
            Todo(name: "Wake Up", isCompleted: false),
            Todo(name: "Make bed", isCompleted: false),
            Todo(name: "Wash face and brush", isCompleted: false),
            Todo(name: "Cook", isCompleted: false),
            Todo(name: "Eat", isCompleted: false)
        ]
    }
}

struct ContentView: View {
    
    @State private var text: String = ""
    @StateObject var viewModel = TodoViewModel()

    var body: some View {
        VStack {
            ScrollView {
                ForEach($viewModel.todos, id: \.id) { $todo in
                    VStack {
                        HStack {
                            Text(todo.name)
                            Toggle(isOn: $todo.isCompleted) {
                            }.padding(.trailing)
                        }
                    }
                }
            }
            HStack {
                TextField("Add a todo", text: $text).textInputAutocapitalization(.never).autocorrectionDisabled(true).onSubmit{
                    viewModel.todos.append(Todo(name: text, isCompleted: false))
                    text = ""
                }
                Button("Submit") {
                    viewModel.todos.append(Todo(name: text, isCompleted: false))
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
