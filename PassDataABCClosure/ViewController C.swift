//
//  ViewController C.swift
//  PassDataABCClosure
//
//  Created by Vũ on 2/20/19.
//  Copyright © 2019 Vũ. All rights reserved.
//

import UIKit

class ViewController_C: UIViewController {

    @IBOutlet weak var textFieldC: UITextField!
    var dataC: String?
    var clousureC: ClosureUpdateForViewA?
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldC.text = dataC
    }

 
    @IBAction func doneButton(_ sender: UIButton) {
        clousureC?(textFieldC.text!)
        navigationController?.popToRootViewController(animated: true)
    }
    

    

}
