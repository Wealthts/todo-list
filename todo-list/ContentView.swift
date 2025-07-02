//
//  ContentView.swift
//  todo-list
//
//  Created by Thanakrit Sriharuthai on 2/7/2568 BE.
//

import SwiftUI

struct ContentView: View {
    
    @State private var todoList: [Todo] = [
        Todo(title: "Meeting with Fuh", isDone: false), Todo(title: "Playing Stardew Valley", isDone: false)
    ]
    @State private var showCreateForm: Bool = false
    @State private var todoTitle: String = ""
    
    var body: some View {
        VStack {
            Text("My Todo List")
                .font(.title)
                
            ForEach(todoList) { todo in
                HStack {
                    Text(todo.title)
                        .font(.title3)
                        .foregroundStyle(.blue)
                    
                    Spacer()
                    
                    Button(action: {
                        todo.isDone.toggle()
                    }, label: {
                        Image(systemName: todo.isDone ? "checkmark.circle.fill" : "checkmark.circle")
                            .resizable()
                            .frame(width: 30, height: 30)
                    })
                }
                .padding()
                .background(Color.black.opacity(0.08))
            }
            
            Spacer()
            Button("New Todo"){
                showCreateForm = true
            }
        }
        .padding()
        .sheet(isPresented: $showCreateForm, content: {
            VStack {
                TextField("Title", text: $todoTitle)
                    .textFieldStyle(.roundedBorder)
                
                Button("Create") {
                    todoList.append(Todo(title: todoTitle, isDone: false))
                    
                    showCreateForm = false
                    todoTitle = ""
                }
            }
            .padding()
        })
    }
}

#Preview {
    ContentView()
}
