//
//  ItemStore.swift
//  Homepwner
//
//  Created by Mayank Kishore on 12/20/18.
//  Copyright © 2018 Mayank Kishore. All rights reserved.
//

import UIKit

class ItemStore {
    var allItems = [Item]()
    
    @discardableResult func createItem() -> Item {
        let newItem = Item(random: true)
        allItems.append(newItem)
        return newItem
    }
    
    func removeItem(_ item: Item) {
        if let index = allItems.index(of: item) {
            allItems.remove(at: index)
        }
    }
    
    func moveItem(from fromIndex: Int, to toIndex: Int) {
        if fromIndex == toIndex {
            return
        }
        
        let movedItem = allItems[fromIndex] // temp holding spot for items
        allItems.remove(at: fromIndex) // remove the item
        allItems.insert(movedItem, at: toIndex) // insert item in array
    }
    // no need as we can now create our own items
//    init() {
//        for _ in 0..<5 {
//            createItem()
//        }
//    }
}
