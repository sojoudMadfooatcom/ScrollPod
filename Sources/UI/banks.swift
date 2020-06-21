//
//  banks.swift
//  SDKSwiftUI
//
//  Created by Sjood Ahmad on 6/7/20.
//  Copyright © 2020 Sjood Ahmad. All rights reserved.
//

import SwiftUI
struct banksName : Identifiable {
    var id = UUID()
    
    var name : String
}

struct Tutor: Identifiable {
    var id = UUID()
    var name: String
    var headline: String
    var bio: String
    
    var imageName: String { return name }
}


let testData = [
    Tutor(name: "Sai Kambampati", headline: "Writer at AppCoda", bio: "Sai Kambampati is an app developer. He lives in Sacramento, CA and was awarded with Apple's WWDC 2017 Scholarship. Proficient in Swift and Python, it's his dream to develop an AI product."),
    Tutor(name: "Simon Ng", headline: "Founder of AppCoda", bio: "Founder of AppCoda. Author of multiple iOS prgramming books including Beginning iOS 12 Programming with Swift and Intermediate iOS 12 Programming with Swift. iOS Developer and Blogger."),
   
  
]


let testDatastr  = [banksName( name: "kjs"),banksName( name: "kjs3"),banksName( name: "kjs4")]

@available(iOS 13.0, *)
struct banks_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
