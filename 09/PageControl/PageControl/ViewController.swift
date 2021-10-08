//
//  ViewController.swift
//  PageControl
//
//  Created by minimani on 2021/10/09.
//

import UIKit

class ViewController: UIViewController {
    
    var images = ["cat1.jpg", "cat2.jpg", "cat3.jpg", "cat5.jpg", "cat6.jpg"]

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pageControl.numberOfPages = images.count
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = .green
        pageControl.currentPageIndicatorTintColor = .red
        
        imgView.image = UIImage(named: images[0])
    }

    @IBAction func pageChange(_ sender: UIPageControl) {
        imgView.image = UIImage(named: images[pageControl.currentPage])
    }
    
}

