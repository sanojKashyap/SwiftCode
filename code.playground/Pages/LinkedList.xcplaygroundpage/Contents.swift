//: [Previous](@previous)

import Foundation

public class Node {
    var data:Int
    var next:Node?
    
    init(data:Int) {
        self.data = data
    }
}

public class SinleLinkedList {
    
    fileprivate var head:Node?
    private var tail:Node?
    
    func addNode(value:Int)  {
        let newNode = Node(data: value)
       
        if (head == nil) {
            head = newNode
        }else {
            var temp:Node? = nil
            temp = head
            
            while temp?.next != nil{
                temp = temp?.next
            }
            temp?.next = newNode
            tail  = newNode
        }
    }
    
    public var isEmpty:Bool
    {
        if (head == nil){
            return true
        }
        return false
    }
    
    public var firstNode:Node? {
        return head
    }
    
    public var lastNode:Node? {
        return tail
    }
    
    func printLinkedList(){
        var currentHead:Node? =  head
        if(self.isEmpty) {
            print("Empty List")
        }else {
            while currentHead!.next != nil {
                print("\(currentHead!.data)->")
                currentHead = currentHead?.next!
            }
            print("\(currentHead!.data)")
        }
    }
}

var linkedList = SinleLinkedList()
linkedList.addNode(value:1)
linkedList.addNode(value: 2)
linkedList.addNode(value:3)
linkedList.addNode(value:4)
linkedList.addNode(value:5)
linkedList.addNode(value:6)

linkedList.printLinkedList()
print("First Node: \(linkedList.firstNode?.data)")
print("Last Node: \(linkedList.lastNode?.data)")


