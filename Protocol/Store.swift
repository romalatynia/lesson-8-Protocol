//
//  Store.swift
//  Protocol
//
//  Created by Harbros47 on 18.12.20.
//

import Foundation

protocol Food {
    var name: String { get }
    func teste() -> String
}

protocol Storable {
    var name: String { get }
    var expired: Bool { get }
    var daysToExpired: Int { get }
}

class Milk: Storable, Food {
    var name: String
    var expired: Bool
    var daysToExpired: Int
    
    init(name: String, expired: Bool, daysToExpired: Int) {
        self.name = name
        self.expired = expired
        self.daysToExpired = daysToExpired
    }
    
    func teste() -> String {
        let sample = Bool.random()
        return sample ? "ммм, как вкусно!" : "Фу, какая гадость!"
    }
}

class Bread: Food {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func teste() -> String {
        let sample = Bool.random()
        return sample ? "ммм, как вкусно!" : "Фу, какая гадость!"
    }
}

class Banan: Storable, Food {
    var name: String
    var expired: Bool
    var daysToExpired: Int
    
    init(name: String, expired: Bool, daysToExpired: Int) {
        self.name = name
        self.expired = expired
        self.daysToExpired = daysToExpired
    }
    
    func teste() -> String {
        let sample = Bool.random()
        return sample ? "ммм, как вкусно!" : "Фу, какая гадость!"
    }
}

class Potato: Food {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func teste() -> String {
        let sample = Bool.random()
        return sample ? "ммм, как вкусно!" : "Фу, какая гадость!"
    }
}

class Fish: Storable, Food {
    var name: String
    var expired: Bool
    var daysToExpired: Int
    
    init(name: String, expired: Bool, daysToExpired: Int) {
        self.name = name
        self.expired = expired
        self.daysToExpired = daysToExpired
    }
    
    func teste() -> String {
        let sample = Bool.random()
        return sample ? "ммм, как вкусно!" : "Фу, какая гадость!"
    }
}
