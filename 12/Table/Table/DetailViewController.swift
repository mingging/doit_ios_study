//
//  DetailViewController.swift
//  Table
//
//  Created by minimani on 2021/10/15.
//

import UIKit

class DetailViewController: UIViewController {
    
    var receiveItem = ""

    @IBOutlet weak var lblItem: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblItem.text = receiveItem
    }
    
    func reciveItem(_ item: String) {
        receiveItem = item
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
