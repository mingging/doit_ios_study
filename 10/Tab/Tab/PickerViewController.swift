//
//  PickerViewController.swift
//  Tab
//
//  Created by minimani on 2021/10/11.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
  
    let MAX_ARRAY_NUM = 4
    let images = ["cat2.jpg", "cat3.jpg", "cat4.jpg", "cat5.jpg"]
    var imageArray = [UIImage?]()

    @IBOutlet weak var lblSelectedItem: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
        
        for i in 0 ..< images.count {
            let image = UIImage(named: images[i])
            imageArray.append(image)
            
        }
        
        lblSelectedItem.text = images[0]
        imageView.image = imageArray[0]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return images.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblSelectedItem.text = images[row]
        imageView.image = UIImage(named: images[row])
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imageView = UIImageView(image: imageArray[row])
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 150)
        return imageView
    }
    
    
}
