//
//  BankTable.swift
//  SDKSwiftUI
//
//  Created by Sjood Ahmad on 6/8/20.
//  Copyright © 2020 Sjood Ahmad. All rights reserved.
//

import SwiftUI
import Alamofire



@available(iOS 13.0, *)
public struct BankTable: View {
    
    var  userId : Int = -1
    public init(userID : Int? = 1)
    {
    
        
        print("userID : \(userID ?? 0)")
       
    }
    
   
    @ObservedObject var obs = observeData.init()
    
   
   public var body: some View {
    NavigationView {
        List (obs.dataResult) { item in
            VStack(alignment: .center) {
                Text(item.login + "  Sojoud")
                    .font(.headline)
                    .fontWeight(.bold)
                Text("\(item.id)").foregroundColor(Color.gray).bold()
            }
            .padding(12.0)
            
                  
        }.navigationBarTitle(Text("Data Binding"))
    }
       
        
    }
}

@available(iOS 13.0, *)
struct BankTable_Previews: PreviewProvider {
  
 
    static var previews: some View {
        
        BankTable()
    }
}


//class observeData :ItemViewModel{
//    @Published var title: String
//
//    init(_ title: String) {
//        self.title = title
//    }
//}

@available(iOS 13.0, *)
class observeData : ObservableObject {


    var dataBinding : [banksName] = [banksName(name: "B1"), banksName(name: "B2") ,banksName(name: "B3"),banksName(name: "B4")]
   @Published var dataResult  : [BankModel] = []//[BankModel(login: "wq", id: 0)]
  // @Published  var bar :BarProtocol?
    init() {
  geth()

    }
    func geth(){
////        self.dataResult =  self.bar?.get_Data(userId: 90) ?? []
////    }
        AF.request("https://api.github.com/users/hadley/orgs").responseDecodable { (DD :DataResponse<[BankModel], AFError>) in
          //  print(DD.value)
            self.dataResult = DD.value ?? []
            print("count", self.dataResult.count)
             print("list" ,self.dataResult)

        }


       }





}
struct error :Codable  {
    
    
    
}

