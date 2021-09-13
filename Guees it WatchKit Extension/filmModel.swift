//
//  filmModel.swift
//  Guees it WatchKit Extension
//
//  Created by Кирилл Заборский on 13.09.2021.
//

import Foundation

struct FilmModel {
    var emojis: String
    var name: String
    
    static func getFilms() -> [FilmModel] {
        return [ FilmModel(emojis: "💎✋", name: "Брилиантовая рука"),
                 FilmModel(emojis: "🎩🍀", name: "Джентельмены удачи"),
                 FilmModel(emojis: "🔨☁️☁️☁️", name: "Достучатся до небес"),
                 FilmModel(emojis: "💼🐻👨‍👩‍👦", name: "Кристофер Робин"),
                 FilmModel(emojis: "🌎🐒🦍🦧", name: "Планета обезьян")
        ]
    }
}
