//
//  ViewController.swift
//  UIKitLes9_UIActivityViewController
//
//  Created by Diana on 10/09/2022.
//

import UIKit

class ViewController: UIViewController {
    
    var imagePizza = UIImageView()
    var segmentControl = UISegmentedControl()
    
    var currentBigPizza = Pizzes.shared.arrayPizzes[1]
    var currentSmallPizza = Pizzes.shared.arrayPizzes[0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
       
        makeImageView(currentBigPizza.name)
        makeSegmentControl()
        
        updateCurrentPizzes()
    }
    
    private func updateCurrentPizzes() {
        var indexBig = 0
        var indexSmall = 0
        
        print(currentBigPizza.name)
        print(currentSmallPizza.name)
        
        for item in 0..<Pizzes.shared.arrayPizzes.count - 1 {
            if currentBigPizza.name == Pizzes.shared.arrayPizzes[item].name && currentBigPizza.size == Pizzes.shared.arrayPizzes[item].size{
                    print(Pizzes.shared.arrayPizzes[item].name)
                    indexBig = item
                }
            }
        
        for item in 0..<Pizzes.shared.arrayPizzes.count - 1 {
            if currentSmallPizza.name == Pizzes.shared.arrayPizzes[item].name && currentSmallPizza.size == Pizzes.shared.arrayPizzes[item].size {
                print(Pizzes.shared.arrayPizzes[item].name)
                indexSmall = item
            }
        }
           
        
        print("indexBig \(indexBig)")
       print("indexSmall \(indexSmall)")
        
        currentBigPizza = Pizzes.shared.arrayPizzes[indexBig]
        currentSmallPizza = Pizzes.shared.arrayPizzes[indexSmall]
        
        print(currentBigPizza.name)
        print(currentSmallPizza.name)
        
    }
  
    
    
    private func makeSegmentControl() {
        var nameForSection = [String]()
        let bigPizza = "\(currentBigPizza.size.rawValue) - \(currentBigPizza.price) зл"
        let smallPizza = "\(currentSmallPizza.size.rawValue) - \(currentSmallPizza.price) зл"
        nameForSection.append(bigPizza)
        nameForSection.append(smallPizza)
        
        segmentControl = UISegmentedControl(items: nameForSection)
        segmentControl.frame.size = CGSize(width: 300, height: 40)
        segmentControl.frame.origin = CGPoint(x: view.frame.midX - segmentControl.frame.width / 2, y: imagePizza.frame.maxY + 30)
        view.addSubview(segmentControl)
        
    }
    
    
    
    private func makeImageView(_ namedForImage: String)  {
        let image = UIImage(named: namedForImage)
        imagePizza.image = image
        imagePizza.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
        view.addSubview(imagePizza)
    }
}

