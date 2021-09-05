//
//  ViewController.swift
//  ImageViewer_Mission
//
//  Created by minimani on 2021/09/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    var imageList = ["seol1", "seol2", "seol3", "seol4", "seol5"]
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: imageList[index])
    }

    @IBAction func btnPrev(_ sender: UIButton) {
       // imageList.count = 5
        index -= 1
        if (index >= 0) {
            imageView.image = UIImage(named: imageList[index])
        } else {
            index = 0
        }
        
    }
    
    @IBAction func btnNext(_ sender: UIButton) {
        index += 1
        if (index <= imageList.count - 1) {
            imageView.image = UIImage(named: imageList[index])
        } else {
            index = imageList.count - 1
        }
    }
}

