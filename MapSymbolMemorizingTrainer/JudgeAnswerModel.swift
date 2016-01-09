//
//  JudgeAnswerModel.swift
//  MapSymbolMemorizingTrainer
//
//  Created by Ryo Morimoto on 2016/01/08.
//  Copyright © 2016年 Ryo Morimoto. All rights reserved.
//

import Foundation
import UIKit

class JudgeAnswer: UIViewController {
    var thisAnswer = 0
    func setAnswer (answer :Int){
        thisAnswer = answer
    }
    
    func judgeAnswer (answer :Int) -> Bool {
        print(answer)
        if (answer == thisAnswer) {
            return true
        }else{
            return false
        }
        
    }
    
    
}
