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
    
    let lessonTime: UILabel = {
        let label = UILabel()
        label.text = "08:00"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next Demi", size: 20)
        label.textAlignment = .left
        label.adjustsFontSizeToFitWidth = true  // если текст не умещается в границы лейбла, текст будет уменьшаться (подгоняться под ширину лейбла)
        label.backgroundColor = .red  // добавили, чтобы видеть границы лейбла
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let typeLabel: UILabel = {
        let label = UILabel()
        label.text = "Тип:"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next Demi", size: 14)
        label.textAlignment = .right
        label.adjustsFontSizeToFitWidth = true  // если текст не умещается в границы лейбла, текст будет уменьшаться (подгоняться под ширину лейбла)
        label.backgroundColor = .red  // добавили, чтобы видеть границы лейбла
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let lessonType: UILabel = {
        let label = UILabel()
        label.text = "Лекция"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next Demi Bold", size: 14)
        label.textAlignment = .left
        label.adjustsFontSizeToFitWidth = true  // если текст не умещается в границы лейбла, текст будет уменьшаться (подгоняться под ширину лейбла)
        label.backgroundColor = .red  // добавили, чтобы видеть границы лейбла
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let buildingLabel: UILabel = {
        let label = UILabel()
        label.text = "Корпус:"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next", size: 14)
        label.textAlignment = .right
        label.adjustsFontSizeToFitWidth = true  // если текст не умещается в границы лейбла, текст будет уменьшаться (подгоняться под ширину лейбла)
        label.backgroundColor = .red  // добавили, чтобы видеть границы лейбла
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let lessonBuilding: UILabel = {
        let label = UILabel()
        label.text = "1"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next Demi Bold", size: 14)
        label.textAlignment = .left
        label.adjustsFontSizeToFitWidth = true  // если текст не умещается в границы лейбла, текст будет уменьшаться (подгоняться под ширину лейбла)
        label.backgroundColor = .red  // добавили, чтобы видеть границы лейбла
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let audLabel: UILabel = {
        let label = UILabel()
        label.text = "Аудитория:"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next", size: 14)
        label.textAlignment = .right
        label.adjustsFontSizeToFitWidth = true  // если текст не умещается в границы лейбла, текст будет уменьшаться (подгоняться под ширину лейбла)
        label.backgroundColor = .red  // добавили, чтобы видеть границы лейбла
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let lessonAud: UILabel = {
        let label = UILabel()
        label.text = "101"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next Demi Bold", size: 14)
        label.textAlignment = .left
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
        
        let topStackView = UIStackView(arrangedSubviews: [lessonName, teacherName], axis: .horizontal, spacing: 5, distribution: .fillEqually)
        
        self.addSubview(topStackView)
        NSLayoutConstraint.activate([
            topStackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            topStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            topStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            topStackView.heightAnchor.constraint(equalToConstant: 25),
        ])
        self.addSubview(lessonTime)
        NSLayoutConstraint.activate([
            lessonTime.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            lessonTime.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            lessonTime.widthAnchor.constraint(equalToConstant: 100),
            lessonTime.heightAnchor.constraint(equalToConstant: 25),
        ])
        
        let bottomStackView = UIStackView(arrangedSubviews: [typeLabel, lessonType, buildingLabel, lessonBuilding, audLabel, lessonAud], axis: .horizontal, spacing: 10, distribution: .fillProportionally)
        self.addSubview(bottomStackView)
        NSLayoutConstraint.activate([
            bottomStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            bottomStackView.leadingAnchor.constraint(equalTo: lessonTime.trailingAnchor, constant: 5),
            bottomStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            bottomStackView.heightAnchor.constraint(equalToConstant: 25),
        ])
    }
}
