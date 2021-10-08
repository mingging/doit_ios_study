//
//  ViewController.swift
//  Mission_PageControl
//
//  Created by minimani on 2021/10/09.
//

import UIKit

class ViewController: UIViewController {
    
    let pageNumber = ["3", "6", "9", "12"]

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var lblPageNumber: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        pageControl.numberOfPages = pageNumber.count
        pageControl.currentPage = 0
        pageControl.currentPageIndicatorTintColor = .blue
        pageControl.pageIndicatorTintColor = .black
        
        lblPageNumber.text = pageNumber[0]
        
    }

    @IBAction func pageChange(_ sender: UIPageControl) {
        lblPageNumber.text = pageNumber[pageControl.currentPage]
    }
    
}

