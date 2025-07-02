//
//  Todo.swift
//  todo-list
//
//  Created by Thanakrit Sriharuthai on 2/7/2568 BE.
//

import Foundation
import Observation

@Observable
class Todo: Identifiable {
    
    var id: UUID = UUID()
    var title: String
    var isDone: Bool
    
    init(title: String, isDone: Bool) {
        self.title = title
        self.isDone = isDone
    }
}
