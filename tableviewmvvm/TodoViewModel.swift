//
//  TodoViewModel.swift
//  tableviewmvvm
//
//  Created by Apple Macintosh on 6/8/18.
//  Copyright © 2018 Apple Macintosh. All rights reserved.
//

protocol TodoItemPresentable {
    var id: String? { get }
    var textValue: String? { get }
}

struct TodoItemViewModel: TodoItemPresentable {
    var id: String? = "0"
    var textValue: String?
}

protocol TodoItemViewDelegate {
    func onTodoItemAdded() -> ()
}

struct TodoViewModel {
    
    init() {
        
        let item1 = TodoItemViewModel(id: "1", textValue: "Washing Clothes")
        let item2 = TodoItemViewModel(id: "2", textValue: "Buy Groceries")
        let item3 = TodoItemViewModel(id: "3", textValue: "Wash Car")
        
        items.append(contentsOf: [item1, item2, item3])
    }
    
    var newTodoItem: String?
    var items: [TodoItemPresentable] = []
}

extension TodoViewModel: TodoItemViewDelegate {
    
    func onTodoItemAdded() {
        
    }
}
