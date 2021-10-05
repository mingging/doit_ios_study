//
//  ViewController.swift
//  AlarmClock
//
//  Created by minimani on 2021/10/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblCurrentTime: UILabel!
    @IBOutlet weak var lblChooseTime: UILabel!
    
    let timeSelector: Selector =  #selector(ViewController.updateTime)
    let interal = 1.0
    var count = 0
    
    var alarmTime = ""
    var alarmFlag = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Timer.scheduledTimer(timeInterval: interal, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        
        lblChooseTime.text = "선택시간 : " + formatter.string(from: sender.date)
        
        formatter.dateFormat = "hh:mm aaa"
        alarmTime = formatter.string(from: sender.date)
    }
    
    @objc func updateTime() {
        let date = NSDate()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        
        lblCurrentTime.text = "현재시간 : " + formatter.string(from: date as Date)
        
        formatter.dateFormat = "hh:mm aaa"
        let currentTime = formatter.string(from: date as Date)
        
        if (alarmTime == currentTime) {
            if !alarmFlag {
                let alarmAlert = UIAlertController(title: "알림", message: "설정된 시간입니다", preferredStyle: .alert)
                
                let closeAction = UIAlertAction(title: "네, 알곘습니다.", style: .default, handler: nil)
                
                alarmAlert.addAction(closeAction)
                
                present(alarmAlert, animated: true, completion: nil)
                alarmFlag = true
            }
        } else {
            alarmFlag = false
        }
    }
    
}

