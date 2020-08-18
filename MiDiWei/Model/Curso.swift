//
//  Cursos.swift
//  MiDiWei
//
//  Created by Rafael Wei on 04/08/20.
//  Copyright © 2020 Rafael Wei. All rights reserved.
//

import Foundation

struct Curso: Decodable{
    let name: String
}

extension Curso {
    static func fetchCursos() -> [Curso] {
        guard
            let url = Bundle.main.url(forResource: "cursos", withExtension: "json"),
            let data = try? Data(contentsOf: url)
            else{
                return []
            }
        do{
            let decoder = JSONDecoder()
            return try decoder.decode([Curso].self , from: data)
        }catch{
            return []
        }
    }
}
