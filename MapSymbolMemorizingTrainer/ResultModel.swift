//
//  ResultModel.swift
//  MapSymbolMemorizingTrainer
//
//  Created by Ryo Morimoto on 2016/01/08.
//  Copyright © 2016年 Ryo Morimoto. All rights reserved.
//

import Foundation

class RightOrWrong: NSObject {
    var rightOrWrong : [Bool] = []
    
    func countRight() -> Int {
        var count = 0
        for i in rightOrWrong {
            if i == true {
                count++
            }
        }
        return count
    }
}