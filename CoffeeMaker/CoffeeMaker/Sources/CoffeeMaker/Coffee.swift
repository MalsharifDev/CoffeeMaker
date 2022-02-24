//
//  Coffee.swift
//  
//
//  Created by Mohammad Alsharif on 2/23/22.
//

import Foundation

/// A protocol that defines a standard coffee.
public protocol StandardCoffee {
    var ingredients: [String] { get }
    var size: CoffeeSize { get }
}

/// The coffee object defined by ingredients and size.
public struct Coffee: StandardCoffee {
    public var size: CoffeeSize
    public var ingredients: [String]

    /// The standard coffee to be made.
    public static let standard = BlackCoffee(size: .medium)

    public init(ingredients: [String], size: CoffeeSize) {
        self.ingredients = ingredients
        self.size = size
    }
}

/// Coffee made of coffee powder and water.
public struct BlackCoffee: StandardCoffee {
    public var ingredients: [String]
    public var size: CoffeeSize

    public init(size: CoffeeSize) {
        self.ingredients = ["Coffee Powder", "Water"]
        self.size = size
    }
}


