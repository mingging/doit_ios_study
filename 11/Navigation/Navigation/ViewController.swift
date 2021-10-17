//
//  ViewController.swift
//  Navigation
//
//  Created by minimani on 2021/10/14.
//

import UIKit

class ViewController: UIViewController, EditDelegate {
    
    let imgOn = UIImage(named: "smile-icon.png")
    let imgOff = UIImage(named: "sad-icon.png")
    
    var isOn = true
    var isZoomIn = true

    @IBOutlet weak var txMessage: UITextField!
    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgView.image = imgOn
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let editViewController = segue.destination as! EditViewController
        if segue.identifier == "editButton" {
            // 버튼을 클릭한 경우
            editViewController.textWayValue = "segue : use Button"
        } else {
            // 바 버튼을 클릭한 경우
            editViewController.textWayValue = "segue : use Bar Button"
        }
        editViewController.textMessage = txMessage.text!
        editViewController.isOn = isOn
        editViewController.isZoomIn = isZoomIn
        editViewController.delegate = self
    }
    
    func didMessageEditDone(_ controller: EditViewController, message: String) {
        txMessage.text = message
    }
    
    func didImageOnOffDone(_ controller: EditViewController, isOn: Bool) {
        if isOn {
            imgView.image = imgOn
            self.isOn = true
        } else {
            imgView.image = imgOff
            self.isOn = false
        }
    }

    func didImageZoomDone(_ controller: EditViewController, isZoomIn: Bool) {
        let scale: CGFloat = 2.0
        var newWidth: CGFloat, newHeight: CGFloat
        // true = 확대, false = 축소
        if !isZoomIn { // 현재 상태가 '확대'일 때 (즉, isZoom 변수 값이 true일 때)
                // 이미지 프레임의 가로, 세로 크기에 scale 값을 나누어 할당
                newWidth = imgView.frame.width / scale
                newHeight = imgView.frame.height / scale
            self.isZoomIn = true
            } else { // 현재 상태가 '축소' 일 때 (즉, isZoom 변수 값이 false일 때)
                // 이미지 프레임의 가로, 세로 크기에 scale 값을 곱하여 할당
                newWidth = imgView.frame.width * scale
                newHeight = imgView.frame.height * scale
                self.isZoomIn = false
                
        }
        imgView.frame.size = CGSize(width: newWidth, height: newHeight)
//        self.isZoomIn = !self.isZoomIn
    }

}

