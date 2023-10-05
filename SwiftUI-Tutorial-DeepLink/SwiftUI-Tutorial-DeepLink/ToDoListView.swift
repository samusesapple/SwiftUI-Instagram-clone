//
//  ToDoListView.swift
//  SwiftUI-Tutorial-DeepLink
//
//  Created by Sam Sung on 2023/10/05.
//

import SwiftUI

func getTodoList() -> [ToDo] {
    var newToDoList: [ToDo] = []
    
    for i in 1...20 {
        let toDo = ToDo(title: "할 일 \(i)")
        newToDoList.append(toDo)
        print(toDo)
    }
    
    return newToDoList
}

struct ToDoListView: View {
    
    @State private var todoList: [ToDo] = []
    
    @State private var selectedToDo: ToDo? {
        didSet {
            print("선택된 투두 : \(selectedToDo?.title)")
        }
    }
    
    init() {
        _todoList = State(initialValue: getTodoList())
    }
    
    // MARK: - View
    var body: some View {
        
        NavigationSplitView {
            List(todoList, id: \.self, selection: $selectedToDo) { todo in
                NavigationLink(todo.title, value: todo)
            }
            .navigationTitle("할 일 목록")
            .navigationBarTitleDisplayMode(.large)
            .onOpenURL { url in
                if case .todoItem(let id) = url.todoDetailPage {
                    let selectedToDo = todoList.filter { $0.id == id }[0]
                    self.selectedToDo = selectedToDo
                }
            }
        } detail: {
            if let selectedToDo = selectedToDo {
                Text(selectedToDo.title)
            } else {
                Text("할 일 선택")
            }
        }
    }
}

struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView()
    }
}
