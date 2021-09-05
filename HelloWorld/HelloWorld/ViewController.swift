//
//  ViewController.swift
//  HelloWorld
//
//  Created by minimani on 2021/09/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lblHello: UILabel! // 출력 라벨용 아웃렛 변수
    @IBOutlet var txtName: UITextField! // 이름 입력용 아웃렛 변수
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSend(_ sender: UIButton) {
        // Hello라는 문자열과 txtName.text의 문자열을 결합하여 lblHello.text에 넣는다는 의미
        lblHello.text = "Hello, " + txtName.text!
    }
    
}

