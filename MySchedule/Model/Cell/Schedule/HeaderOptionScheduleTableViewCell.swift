//
//  HeaderOptionScheduleTableViewCell.swift
//  MySchedule
//
//  Created by Егор Бадмаев on 21.12.2021.
//

import UIKit

class HeaderOptionScheduleTableViewCell: UITableViewHeaderFooterView {
    // text нам не совсем нужен
    let headerLabel = UILabel(text: "", font: .avenirNext14())
    
    let headerNameArray = ["DATE AND TIME", "LESSON", "TEACHER", "COLOR", "PERIOD"]
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        
        headerLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        contentView.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.968627451, alpha: 1)
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func headerConfigure(section: Int) {
        headerLabel.text = headerNameArray[section]
    }
    
    func setConstraints() {
        contentView.addSubview(headerLabel)
        NSLayoutConstraint.activate([
            headerLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 25),
            headerLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0),
        ])
    }
}

