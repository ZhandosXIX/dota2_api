//
//  person.swift
//  music
//
//  Created by zhandos on 31.01.2024.
//

import Foundation
import SwiftyJSON
struct person{
    var localized_name = " "
    var attack_type = " "
    var img = ""
    
    init(){
        
    }
    
    init(json: JSON){
        if let item = json["localized_name"].string{
            localized_name = item
        }
        if let item = json["attack_type"].string{
            attack_type = item
        }
        if let item = json["img"].string{
            img = item
        }
    }
}
