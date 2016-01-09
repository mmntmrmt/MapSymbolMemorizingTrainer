//
//  ResultViewController.swift
//  MapSymbolMemorizingTrainer
//
//  Created by Ryo Morimoto on 2016/01/08.
//  Copyright © 2016年 Ryo Morimoto. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var n = ""
    var m = ""
    
    @IBOutlet weak var NUILabel: UILabel!
    
    @IBOutlet weak var MUILabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NUILabel.text = n
        MUILabel.text = m

        // Do any additional setup after loading the view.
    }

    @IBAction func backUIButtonTouchUpInside(sender: UIButton) {
        self.presentingViewController?.presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
    }
   

}
