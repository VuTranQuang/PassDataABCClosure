//
//  ViewController.swift
//  PassDataABCClosure
//
//  Created by Vũ on 2/20/19.
//  Copyright © 2019 Vũ. All rights reserved.
//

import UIKit

class ViewController_A: UIViewController {

    @IBOutlet weak var textFieldA: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let senderA = segue.destination as? ViewController_B else { return }
        senderA.dataB = textFieldA.text
        senderA.closureB = { data in
            self.textFieldA.text = data
            
        }
    }

}

