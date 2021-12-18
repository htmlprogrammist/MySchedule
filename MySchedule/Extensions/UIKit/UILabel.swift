//
//  UILabel.swift
//  MySchedule
//
//  Created by Егор Бадмаев on 18.12.2021.
//

import UIKit

extension UILabel {
    convenience init(text: String, font: UIFont?, alignment: NSTextAlignment = .left) {
        self.init()
        self.text = text
        self.font = font
        self.textAlignment = alignment
        self.textColor = .black
        self.adjustsFontSizeToFitWidth = true  // если текст не умещается в границы лейбла, текст будет уменьшаться (подгоняться под ширину лейбла)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .red  // добавили, чтобы видеть границы лейбла
    }
}
