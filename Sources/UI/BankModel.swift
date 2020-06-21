//
//  BankModel.swift
//  SDKSwiftUI
//
//  Created by Sjood Ahmad on 6/8/20.
//  Copyright © 2020 Sjood Ahmad. All rights reserved.
//

import Foundation

struct BModel :Decodable {
    let arrayOfBank : [BankModel]
}
struct BankModel :Decodable,Identifiable {
    var login : String
    var id : Int
   // var node_id ,url,repos_url,events_url,hooks_url,issues_url,members_url,public_members_url,avatar_url,description :String
}

