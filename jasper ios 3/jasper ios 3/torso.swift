//
//  torso.swift
//  jasper ios 3
//
//  Created by User02 on 2019/5/9.
//  Copyright © 2019 User07. All rights reserved.
//

import UIKit
var role2:String?

class torso: UIViewController {

    @IBOutlet var headImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    var roles2 = ["ricardo","har"]
    
    override func prepare(for segue: UIStoryboardSegue, sender:Any?){
        if let identifier = segue.identifier, let number = Int(identifier) {
            role2 = roles2[number]

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
    }}
