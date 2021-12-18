//
//  ScheduleTableViewCell.swift
//  MySchedule
//
//  Created by Егор Бадмаев on 14.12.2021.
//

import UIKit

class ScheduleTableViewCell: UITableViewCell {
    
    let lessonName: UILabel = {
        let label = UILabel()
        label.text = "Программирование"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next Demi Bold", size: 20)
        label.textAlignment = .left
        label.adjustsFontSizeToFitWidth = true  // если текст не умещается в границы лейбла, текст будет уменьшаться (подгоняться под ширину лейбла)
        label.backgroundColor = .red  // добавили, чтобы видеть границы лейбла
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let teacherName: UILabel = {
        let label = UILabel()
        label.text = "Антонов Антон Антонович"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next Demi", size: 20)
        label.textAlignment = .right
        label.adjustsFontSizeToFitWidth = true  // если текст не умещается в границы лейбла, текст будет уменьшаться (подгоняться под ширину лейбла)
        label.backgroundColor = .red  // добавили, чтобы видеть границы лейбла
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) { [self] in
            setConstraints()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        
        let stackView = UIStackView()
        stackView.addArrangedSubview(lessonName)
        stackView.addArrangedSubview(teacherName)
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            stackView.heightAnchor.constraint(equalToConstant: 25),
        ])
//        self.addSubview(teacherName)
//        NSLayoutConstraint.activate([
//            teacherName.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
//            teacherName.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
//            teacherName.widthAnchor.constraint(equalToConstant: self.frame.width / 2 - 10),
//            teacherName.heightAnchor.constraint(equalToConstant: 25),
//        ])
    }
}
