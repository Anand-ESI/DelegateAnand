//
//  SendingVC.swift
//  DelegateAnand
//
//  Created by Prabhakar Annavi on 13/02/17.
//  Copyright © 2017 Eoxys Systems India. All rights reserved.
//

import UIKit

protocol DataSendDelegate {
    func userEnterData(data: String)
}
class SendingVC: UIViewController {
    @IBOutlet weak var textLabel: UITextField!

    var delegate: DataSendDelegate? = nil
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func SendBtnPressed(_ sender: Any) {
        if delegate != nil {
            if textLabel.text != nil {
                let data = textLabel.text
                delegate?.userEnterData(data: data!)
                dismiss(animated: true, completion: nil)
            }
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    }
