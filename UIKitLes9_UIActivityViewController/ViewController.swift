//
//  ViewController.swift
//  UIKitLes9_UIActivityViewController
//
//  Created by Diana on 10/09/2022.
//

import UIKit

class ViewController: UIViewController {
 
    let pizzes = Pizzes()
    
    var imagePizza = UIImageView()
    var segmentControl = UISegmentedControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red
        makeImageView("вегетариянская")
        makeSegmentControl()
    }
    
    private func makeSegmentControl() {
        var items = [String: String]()
        pizzes.arrayPizzes.forEach { item in
            print(item.name)
            let price = String(item.price)
            let size = String(item.size.rawValue)
            
            items[size] = price
        }
        print(items)
    }
    
    
    
    private func makeImageView(_ namedForImage: String) {
        let image = UIImage(named: namedForImage)
        imagePizza.image = image
        imagePizza.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
        view.addSubview(imagePizza)
        
    }

}

