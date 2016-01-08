//
//  QuestionViewController.swift
//  MapSymbolMemorizingTrainer
//
//  Created by Ryo Morimoto on 2016/01/05.
//  Copyright © 2016年 Ryo Morimoto. All rights reserved.
//

import UIKit
import RealmSwift

class QuestionViewController: UIViewController {

    @IBOutlet weak var QuestionUIImageView: UIImageView!
    var yourAnswer = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
//数字のボタンをタップして解答を入力、解答を表示する
    @IBAction func oneUIButtonTouchUpInside(sender: UIButton) {
        yourAnswer = 1
    }
    
    @IBAction func twoUIButtonTouchUpInside(sender: UIButton) {
        yourAnswer = 2
    }
    
    @IBAction func threeUIButtonTouchUpInside(sender: UIButton) {
        yourAnswer = 3
    }
    
    @IBAction func fourButtonTouchUpInside(sender: UIButton) {
        yourAnswer = 4
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showAnswer() {
        
        
    }
    
    
    

}
