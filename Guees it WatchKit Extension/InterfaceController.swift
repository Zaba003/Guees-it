//
//  InterfaceController.swift
//  Guees it WatchKit Extension
//
//  Created by Кирилл Заборский on 13.09.2021.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet var myLabel: WKInterfaceLabel!
    @IBOutlet var myButton: WKInterfaceButton!
    
    let movies = FilmModel.getFilms()
    var element: FilmModel?
    private var timer: Timer?
    
    override func awake(withContext context: Any?) {
        element = movies.randomElement()
        myLabel.setText("")
        myButton.setTitle(element?.emojis)
    }
    
    @IBAction func refreshAction() {
        myLabel.setText(element?.name)
        timer = Timer.scheduledTimer(withTimeInterval: 1.5, repeats: false, block: { (_) in
            self.element = self.movies.randomElement()
            self.myButton.setTitle(self.element?.emojis)
            self.myLabel.setText("")
        })
    }
    
}
