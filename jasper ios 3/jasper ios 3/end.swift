//
//  end.swift
//  jasper ios 3
//
//  Created by User02 on 2019/5/9.
//  Copyright © 2019 User07. All rights reserved.
//

import UIKit
import SafariServices

class end: UIViewController {

    @IBOutlet var checkText: UITextView!
    @IBOutlet var endText: UITextView!
    @IBOutlet var headImage: UIImageView!
    @IBOutlet var torsoImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        if let role = role{
            headImage.image = UIImage(named:role)
        if let role2 = role2{
            torsoImage.image = UIImage(named:role2)
        
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
    }
    @IBAction func buttonClicked(_ sender: UIButton) {
        UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 3.5, delay: 0.0,  animations: {self.headImage.center = CGPoint(x:self.headImage.center.x,y:500)})
        endText.text = "This is the result take it or leave it"
        checkText.text = ""
    }
    @IBAction func redditButton(_ sender: UIButton) {
        if let url = URL(string: "https://www.reddit.com/") {
            let controller = SFSafariViewController(url: url)
            controller.delegate = self as? SFSafariViewControllerDelegate
            present(controller, animated: true, completion: nil)
        }
    }
}
