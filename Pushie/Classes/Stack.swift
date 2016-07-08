//
//  Stack.swift
//  PDA
//
//  Created by Mathias Quintero on 7/8/16.
//  Copyright © 2016 Mathias Quintero. All rights reserved.
//

import Foundation
public class Stack {
    
    var stack = [StackElement]()
    
    init(stack: [StackElement] = []) {
        self.stack = stack
    }
    
    var last: StackElement? {
        get {
            return stack.last
        }
    }
    
    func pop() {
        stack.removeLast()
    }
    
    func push(element: StackElement) {
        stack.append(element)
    }
    
    func push(element: String) {
        push(StackElement(identifier: element))
    }
    
    func change(element: StackElement) {
        stack[stack.count - 1] = element
    }
    
    func change(element: String) {
        change(StackElement(identifier: element))
    }
    
    func copy() -> Stack {
        let new = stack.flatMap({ $0 })
        return Stack(stack: new)
    }
    
}