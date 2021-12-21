//
//  OptionsScheduleTableViewCell.swift
//  MySchedule
//
//  Created by Егор Бадмаев on 21.12.2021.
//

import UIKit

class OptionsScheduleTableViewCell: UITableViewCell {
    
    let backgroundViewCell: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let nameCellLabel: UILabel = {
        let label = UILabel()
        label.text = "Cell"
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setConstraints()
        self.backgroundColor = .clear
        self.selectionStyle = .none // убрали выделение с ячеек
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        contentView.addSubview(backgroundViewCell)
        NSLayoutConstraint.activate([
            backgroundViewCell.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            backgroundViewCell.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            backgroundViewCell.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            backgroundViewCell.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -1),
        ])
        
        contentView.addSubview(nameCellLabel)
        NSLayoutConstraint.activate([
            nameCellLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            nameCellLabel.leadingAnchor.constraint(equalTo: backgroundViewCell.leadingAnchor, constant: 10),
        ])
    }
}
