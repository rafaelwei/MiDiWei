//
//  Mentores.swift
//  MiDiWei
//
//  Created by Rafael Wei on 04/08/20.
//  Copyright © 2020 Rafael Wei. All rights reserved.
//

import Foundation

struct Mentor: Decodable{
    let name: String
    let course: String
    let description: String
}

extension Mentor {
    static func fetchMentores() -> [Mentor] {
        guard
            let url = Bundle.main.url(forResource: "mentores", withExtension: "json"),
            let data = try? Data(contentsOf: url)
            else{
                return []
            }
        do{
            let decoder = JSONDecoder()
            return try decoder.decode([Mentor].self , from: data)
        }catch{
            return []
        }
    }
}
