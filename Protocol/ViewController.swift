//
//  ViewController.swift
//  Protocol
//
//  Created by Harbros47 on 18.12.20.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let milk = Milk(name: "молоко", expired: Bool.random(), daysToExpired: 5)
        let bead = Bread(name: "хлеб")
        let banan = Banan(name: "банан", expired: Bool.random(), daysToExpired: 8)
        let potato = Potato(name: "картошка")
        let fish = Fish(name: "рыба", expired: Bool.random(), daysToExpired: 5)
        
        let bag: [Food] = [milk, bead, banan, potato, fish]
        bagSorted(bag: bag)
        contentsOfRefrigeratoridge(bag: bag)
    }
    
    private func bagSorted(bag: [Food]) {
        let bagSorted = bag.sorted { $0.name < $1.name }
        bagSorted.forEach { print("Беру \($0.name) и пробую его. \($0.teste())") }
    }
    
    private func contentsOfRefrigeratoridge(bag: [Food]) {
        let filterFridge = bag.compactMap { $0 as? Storable  }.filter { $0.expired }
        var fridge = [Storable]()
        for putInFridge in filterFridge {
            print("в холодильнике лежит \(putInFridge.name)")
            fridge.append(putInFridge)
        }
        
        let fridgeSorted = fridge.sorted { $0.daysToExpired < $1.daysToExpired || $0.name < $1.name }
        fridgeSorted.forEach { print("\($0.name ) срок хранения \($0.daysToExpired ) дней.") }
    }
}

extension UIColor {
    var color: UIColor {
        let colours: [UIColor] = [.red, .blue, .black, .green]
        return colours.randomElement() ?? UIColor.black
    }
}

extension Array where Element: Hashable {
    var noRepeat: Self {
        var set = Set<Element>()
        return filter { set.insert($0).inserted }
    }
}
