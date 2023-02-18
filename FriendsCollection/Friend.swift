//
//  Friend.swift
//  MyFriends
//
//  Created by 백래훈 on 2023/02/14.
//

import Foundation

struct Friend: Codable {
    let name: String
    let age: Int
    let addressInfo: Address
    
    var nameAndAge: String {
        return self.name + "(\(self.age))"
    }
    
    var fullAddress: String {
        return self.addressInfo.city + ", " + self.addressInfo.country
    }
    
    struct Address: Codable {
        let country: String
        let city: String
    }
    
    enum CodingKeys: String, CodingKey {
        case name, age
        case addressInfo = "address_info"
    }
}

/*
{
    "name":"하나",
    "age":22,
    "address_info": {
        "country":"대한민국",
        "city":"울산"
    }
}
*/
