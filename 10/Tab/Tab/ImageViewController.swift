//
//  ImageViewController.swift
//  Tab
//
//  Created by minimani on 2021/10/10.
//

import UIKit

class ImageViewController: UIViewController {

    var isZoom = false // 확대 여부를 나타내는 변수
    var imgOn: UIImage? // 웃는 이미지가 있는 UIImage 타입의 변수
    var imgOff: UIImage? // 우는 이미지가 있는 UIImage 타입의 변수

    @IBOutlet var imgView: UIImageView!
    @IBOutlet var btnResize: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgOn = UIImage(named: "smile-icon.png")
        imgOff = UIImage(named: "sad-icon.png")
        
        imgView.image = imgOn
    }

    @IBAction func btnResizeImage(_ sender: UIButton) {
        let scale: CGFloat = 2.0
        var newWidth: CGFloat, newHeight: CGFloat
        
        if (isZoom) { // 현재 상태가 '확대'일 때 (즉, isZoom 변수 값이 true일 때)
            // 이미지 프레임의 가로, 세로 크기에 scale 값을 나누어 할당
            newWidth = imgView.frame.width / scale
            newHeight = imgView.frame.height / scale
            // 버튼의 텍스트를 확대로 변경
            btnResize.setTitle("확대", for: .normal)
        } else { // 현재 상태가 '축소' 일 때 (즉, isZoom 변수 값이 false일 때)
            // 이미지 프레임의 가로, 세로 크기에 scale 값을 곱하여 할당
            newWidth = imgView.frame.width * scale
            newHeight = imgView.frame.height * scale
            // 버튼의 텍스트를 축소로 변경
            btnResize.setTitle("축소", for: .normal)
        }
        
        // CGSize 메서드를 사용하여 이미지 뷰의 프레임 크기를 변경
        imgView.frame.size = CGSize(width: newWidth, height: newHeight)
        isZoom = !isZoom
    }
    
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
        if (sender.isOn) {
            imgView.image = imgOn
        } else {
            imgView.image = imgOff
        }
    }

}
