//
//  Tools.swift
//  OCDemo
//
//  Created by jing on 5/14/17.
//  Copyright © 2017 jing. All rights reserved.
//

import Foundation

@objc class Tools: NSObject {
    func commandGetInfo(id: Int32) -> String {
        let octools: OCTools =  OCTools()
        let newID:Int32 = octools.commandChangeID(id)
        return "__\(newID)"
    }
    
    func commandGetInfo(id: Int32, plus: Int8) -> String {
        let octools = OCTools()
        let newID = octools.commandChangeID(id, plus:plus)
        
        let info = Info()
        info.log(info: String.init(newID))
        
        return "__\(newID)"
    }
}
