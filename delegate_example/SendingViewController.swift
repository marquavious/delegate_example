//
//  SendingViewController.swift
//  delegate_example
//
//  Created by Marquavious on 2/3/17.
//  Copyright © 2017 Marquavious Draggon. All rights reserved.
//

import UIKit

protocol DataSentDelegate {
    func userDidEnterData(data:String)
}

class SendingViewController: UIViewController {
    
    var delegate:DataSentDelegate!
    var data:String?
    
    @IBOutlet weak var dataEntryTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func sendButtonWasPressed(_ sender: Any) {
        if let data = dataEntryTextfield.text {
            self.delegate.userDidEnterData(data: data)
            self.presentingViewController!.dismiss(animated: true, completion: nil)
        }
    }
}
