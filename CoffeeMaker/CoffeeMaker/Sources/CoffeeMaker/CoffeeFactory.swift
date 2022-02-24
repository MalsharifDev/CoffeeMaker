//
//  CoffeeFactory.swift
//
//
//  Created by Mohammad Alsharif on 2/23/22.
//

import Foundation

/// A factory class for making coffee.
public class CoffeeFactory {
    public var coffee: Coffee

    public init(coffee: Coffee) {
        self.coffee = coffee
    }

    /// Makes a coffee beverage given a specified set of ingredients and size.
    /// - Parameters:
    ///   - ingredients: The coffee ingredients used to make the coffee.
    ///   - size: The coffee size specified by the enum`CoffeeSize`.
    /// - Returns: ``Coffee``
    public func makeCoffee(ingredients: [String], size: CoffeeSize) -> Coffee {
        Coffee(ingredients: ingredients, size: size)
    }

    /// Makes a standard coffee beverage.
    /// - Returns: ``Coffee/standard``
    public func makeStandardCoffee() -> BlackCoffee {
        Coffee.standard
    }
}
