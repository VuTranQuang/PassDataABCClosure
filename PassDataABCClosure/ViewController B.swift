//
//  ViewController B.swift
//  PassDataABCClosure
//
//  Created by Vũ on 2/20/19.
//  Copyright © 2019 Vũ. All rights reserved.
//

import UIKit
typealias ClosureUpdateForViewA = ((_ data: String) -> Void)

class ViewController_B: UIViewController {

    @IBOutlet weak var textFieldB: UITextField!
    var dataB: String?
    var closureB: ClosureUpdateForViewA?
    override func viewDidLoad() {
        super.viewDidLoad()
       
              textFieldB.text = dataB
     
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let senderB = segue.destination as? ViewController_C else { return }
        senderB.clousureC = closureB
        closureB = { data in
            senderB.dataC = data
        }
        closureB?(textFieldB.text!)
    }
   
    
//    @IBAction func doneButtonB(_ sender: UIButton) {
//        closureB?(textFieldB.text!)
//    }
    

}
