//
//  ViewController.swift
//  Alert
//
//  Created by minimani on 2021/10/05.
//

import UIKit

class ViewController: UIViewController {
    
    let imgOn = UIImage(named: "smile-icon.png")
    let imgOff = UIImage(named: "sad-icon.png")
    let imgRemove = UIImage(named: "bam-icon.png")
    var isLampOn = true

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = imgOn
    }

    @IBAction func btnOn(_ sender: UIButton) {
        if(isLampOn == true) {
            // 전구가 켜져 있을 때
            // 전구가 켜져 있다고 Alert 실행
            let lampOnAlert = UIAlertController(title: "경고", message: "현재 On 상태입니다.", preferredStyle: .alert)
            let onAction = UIAlertAction(title: "네, 알겠습니다.", style: .default, handler: nil)
            lampOnAlert.addAction(onAction)
            present(lampOnAlert, animated: true, completion: nil)
        } else {
            // 전구가 켜져 있지 않을 때
            // 전구를 켬
            imageView.image = imgOn
            isLampOn = true
        }
    }
    
    @IBAction func btnOff(_ sender: UIButton) {
        if isLampOn {
            // 전구가 켜져 있을 경우
            // 전구를 끌 것인지를 묻는 Alert 실행
            // if(isLampOn == true)로 작성해도 무방
            let lampOffAlert = UIAlertController(title: "끄기", message: "램프를 끄시겠습니까?", preferredStyle: .alert)
            
            let offAction = UIAlertAction(title: "네", style: .default, handler: {
                ACTION in self.imageView.image = self.imgOff
                self.isLampOn = false
            })
            let cancelAction = UIAlertAction(title: "아니오", style: .default, handler: nil)
            
            lampOffAlert.addAction(offAction)
            lampOffAlert.addAction(cancelAction)
            
            present(lampOffAlert, animated: true, completion: nil)
        }
    }
    
    @IBAction func btnRemove(_ sender: UIButton) {
        let lampRemoveAlert = UIAlertController(title: "램프 제거", message: "램프를 제거하시겠습니까?", preferredStyle: .alert)
        
        let offAction = UIAlertAction(title: "아니오, 끕니다", style: .default) { ACTION in
            self.imageView.image = self.imgOff
            self.isLampOn = false
        }
        
        let onAction = UIAlertAction(title: "아니오 켭니다", style: .default) { ACTION in
            self.imageView.image = self.imgOn
            self.isLampOn = true
        }
        
        let removeAction = UIAlertAction(title: "네, 제거합니다", style: .destructive) { ACTION in
            self.imageView.image = self.imgRemove
            self.isLampOn = false
        }
        
        lampRemoveAlert.addAction(offAction)
        lampRemoveAlert.addAction(onAction)
        lampRemoveAlert.addAction(removeAction)
        
        present(lampRemoveAlert, animated: true, completion: nil)
    }
}

