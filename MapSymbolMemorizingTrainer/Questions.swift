//
//  File.swift
//  MapSymbolMemorizingTrainer
//
//  Created by Ryo Morimoto on 2016/01/08.
//  Copyright © 2016年 Ryo Morimoto. All rights reserved.
//

import RealmSwift

class QuestionsModel: Object {
    dynamic var id = 0
    dynamic var imageData = "image0.jpg"
    dynamic var answer = 1
    dynamic var success = 0
    dynamic var failure = 0
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
}
