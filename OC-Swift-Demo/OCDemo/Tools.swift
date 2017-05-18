//
//  Tools.swift
//  OCDemo
//
//  Created by jing on 5/14/17.
//  Copyright © 2017 jing. All rights reserved.
//

import Foundation
import Apollo

@objc class Tools: NSObject {
    
    let apollo = ApolloClient(url: URL(string: "http://localhost:8080/graphql")!)

    var watcher: GraphQLQueryWatcher<MyPostQuery>?
    
    func commandGetInfo(id: Int32) -> String {
        
        let octools: OCTools =  OCTools()
        let newID:Int32 = octools.commandChangeID(id)
        return "__\(newID)"
    }
    
    func commandGetInfo(id: Int32, plus: Int8) -> String {
        
        watcher = apollo.watch(query: MyPostQuery()) { (result, error) in
            if let error = error {
                NSLog("Error while fetching query: \(error.localizedDescription)")
                return
            }
            NSLog("\(result?.data?.posts)")
        }
        
        
        let octools = OCTools()
        let newID = octools.commandChangeID(id, plus:plus)
        
        let info = Info()
        info.log(info: String.init(newID))
        
        return "__\(newID)"
    }
}
