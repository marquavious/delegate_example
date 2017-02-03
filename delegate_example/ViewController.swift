//
//  ViewController.swift
//  delegate_example
//
//  Created by Marquavious on 2/3/17.
//  Copyright © 2017 Marquavious Draggon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DataSentDelegate {
    
    @IBOutlet weak var receivingTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func userDidEnterData(data: String) {
        self.receivingTextLabel.text = data
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "show" {
            let sendingVC = segue.destination as! SendingViewController
            sendingVC.delegate = self
        }
    }
}

