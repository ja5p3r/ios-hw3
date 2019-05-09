//
//  ViewController.swift
//  jasper ios 3
//
//  Created by User07 on 2019/5/7.
//  Copyright © 2019 User07. All rights reserved.
//

import UIKit
var role:String?

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func StartGameButton(_ sender: UIButton) {
         let controller = UIAlertController(title: "Warning", message: "I do not own the artwork of any of the parts in this game. Do You Still Wish To Proceed?", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Yes", style: .default) { (_) in
            self.performSegue(withIdentifier: "go", sender: self)        }
        controller.addAction(okAction)
        let cancelAction = UIAlertAction(title: "No, I'm a pussy and I want out", style: .cancel, handler: nil)
        controller.addAction(cancelAction)
        present(controller, animated: true, completion: nil)
    }
    
    var roles = ["handsome squidward","okay","pepe","pepe whoops","sonic"]
    
    override func prepare(for segue: UIStoryboardSegue, sender:Any?){
        if let identifier = segue.identifier, let number = Int(identifier) {
            role = roles[number]
        }
    }
}

