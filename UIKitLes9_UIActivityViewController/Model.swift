//
//  Model.swift
//  UIKitLes9_UIActivityViewController
//
//  Created by Diana on 11/09/2022.
//

import Foundation


struct ModelPizza {
    let name: String
    let size: Size
    let price: Double
}

enum Size: String {
    case small = "Маленькая"
    case big = "Большая"
}

class Pizzes {
    
    static let shared = Pizzes()
    
    var arrayPizzes: [ModelPizza] = []

    init() {
        setup()
    }
    
    
    private func setup() {
        let vegaBig = ModelPizza(name: "Вегетариянская", size: .big, price: 49.90)
        let vegaSmall = ModelPizza(name: "Вегетариянская", size: .small, price: 37.90)
        let miasnajaBig = ModelPizza(name: "Мясная", size: .big, price: 55.90)
        let miasnajaSmall = ModelPizza(name: "Мясная", size: .small, price: 42.90)
        let peperoniHotBig = ModelPizza(name: "Пеперони Хот", size: .big, price: 51.90)
        let peperoniHotSmall = ModelPizza(name: "Пеперони Хот", size: .small, price: 38.90)
        let saliamiBig = ModelPizza(name: "Салями", size: .big, price: 49.40)
        let saliamiSmall = ModelPizza(name: "Салями", size: .small, price: 38.90)
        let sPomidoramBig = ModelPizza(name: "С помидорам", size: .big, price: 54.90)
        let sPomidoramSmall = ModelPizza(name: "С помидорам", size: .small, price: 40.90)
        let syrnajaBig = ModelPizza(name: "Сырная", size: .big, price: 55.90)
        let syrnajaSmall = ModelPizza(name: "Сырная", size: .small, price: 42.90)
        
        arrayPizzes.append(vegaBig)
        arrayPizzes.append(vegaSmall)
        arrayPizzes.append(miasnajaBig)
        arrayPizzes.append(miasnajaSmall)
        arrayPizzes.append(peperoniHotBig)
        arrayPizzes.append(peperoniHotSmall)
        arrayPizzes.append(saliamiBig)
        arrayPizzes.append(saliamiSmall)
        arrayPizzes.append(sPomidoramBig)
        arrayPizzes.append(sPomidoramSmall)
        arrayPizzes.append(syrnajaBig)
        arrayPizzes.append(syrnajaSmall)

    }
   
}
