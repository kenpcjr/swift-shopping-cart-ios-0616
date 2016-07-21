//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by Kenneth Cooke on 7/21/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class Cart {
    
    
    var items = [Item]()
    
    
    
    func totalPriceInCents() -> Int {
        
        var totalPrice = 0
        
        for item in self.items {
            
            totalPrice += item.priceInCents
            
        }
        
        return totalPrice
        
    }
    
    func addItem(item: Item) {
        
        self.items.append(item)
        
    }
    
    
    func removeItem(item: Item) {
        
        let indexToRemove = self.items.indexOf(item)
        
        if let index = indexToRemove {
            
            self.items.removeAtIndex(index)
            
        }
        
    }
    
    func itemsWithName(name: String) -> [Item] {
        
        var matchingItems:[Item] = []
        
        for item in self.items {
            
            if item.name == name {
                
                matchingItems.append(item)
                
            }
            
        }
        
        return matchingItems
    }
    
    func itemsWithMinimumPriceInCents(minPrice: Int) -> [Item] {
        
        var itemsWithMinimumPrice:[Item] = []
        
        for item in self.items {
            
            if item.priceInCents >= minPrice {
                
                itemsWithMinimumPrice.append(item)
            }
        
        }
        
        return itemsWithMinimumPrice
        
    }
    
    
    func itemsWithMaximumPriceInCents(maxPrice: Int) -> [Item] {
        
        var itemsWithMaximumPrice:[Item] = []
        
        for item in self.items {
            
            if item.priceInCents <= maxPrice {
                
                itemsWithMaximumPrice.append(item)
            }
            
        }
        
        return itemsWithMaximumPrice
        
    }
    
    
}