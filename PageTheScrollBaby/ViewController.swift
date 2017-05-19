//
//  ViewController.swift
//  PageTheScrollBaby
//
//  Created by Liquid Workforce on 5/19/17.
//  Copyright © 2017 Liquid Workforce. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollview: UIScrollView!
    
    var images = [UIImageView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        var contentWidth : CGFloat = 0.0
        
        let scrollViewWidth = scrollview.frame.width
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image:image)
            images.append(imageView)
            
            var newX : CGFloat = 0.0
            newX = scrollViewWidth / 2 + scrollViewWidth * CGFloat(x)
            
            contentWidth += newX
            
            scrollview.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX - 75, y: (scrollview.frame.size.height/2) - 75, width: 150, height: 150)
        }
        
        scrollview.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
        
        scrollview.clipsToBounds = false
    }
}
