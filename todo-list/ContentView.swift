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
                        
                    }, label: {
                        Image(systemName: todo.isDone ? "checkmark.circle.fill" : "checkmark.circle")
                            .resizable()
                            .frame(width: 30, height: 30)
                    })
                }
                .padding()
                .background(Color.black.opacity(0.08))
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
