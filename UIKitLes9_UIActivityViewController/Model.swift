//
//  Model.swift
//  UIKitLes9_UIActivityViewController
//
//  Created by Diana on 11/09/2022.
//

import Foundation


struct Pizza {
    let name: String
    let size: Size
    let price: Double
}

enum Size: String {
    case small = "маленькая"
    case big = "большая"
}

class Pizzes {
    
    var arrayPizzes: [Pizza] = []
    
    init() {
        setup()
    }
    
    
    private func setup() {
        let vegaBig = Pizza(name: "Вегетариянская", size: .big, price: 49.90)
        let vegaSmall = Pizza(name: "Вегетариянская", size: .small, price: 37.90)
        let miasnajaBig = Pizza(name: "Мясная", size: .big, price: 55.90)
        let miasnajaSmall = Pizza(name: "Мясная", size: .small, price: 42.90)
        let peperoniHotBig = Pizza(name: "Пеперони Хот", size: .big, price: 51.90)
        let peperoniHotSmall = Pizza(name: "Пеперони Хот", size: .small, price: 38.90)
        let saliamiBig = Pizza(name: "Салями", size: .big, price: 49.40)
        let saliamiSmall = Pizza(name: "Салями", size: .small, price: 38.90)
        let sPomidoramBig = Pizza(name: "С помидорам", size: .big, price: 54.90)
        let sPomidoramSmall = Pizza(name: "С помидорам", size: .small, price: 40.90)
        let syrnajaBig = Pizza(name: "Сырная", size: .big, price: 55.90)
        let syrnajaSmall = Pizza(name: "Сырная", size: .small, price: 42.90)
        
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
