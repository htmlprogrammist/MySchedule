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
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let repeatSwitch: UISwitch = {
        let repeatSwitch = UISwitch()
        repeatSwitch.isOn = true
        repeatSwitch.isHidden = true
        repeatSwitch.onTintColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        repeatSwitch.translatesAutoresizingMaskIntoConstraints = false
        return repeatSwitch
    }()
    
    let cellNameArray = [["Date", "Time"],
                         ["Name", "Type", "Building", "Audience"],
                         ["Teacher name"],
                         [""],
                         ["Repeat every 7 days"]]
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setConstraints()
        self.backgroundColor = .clear
        self.selectionStyle = .none // убрали выделение с ячеек
        
        repeatSwitch.addTarget(self, action: #selector(switchChange(paramTarget:)), for: .valueChanged)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func cellConfigure(indexPath: IndexPath) {
        nameCellLabel.text = cellNameArray[indexPath.section][indexPath.row]
        
        if indexPath == [3, 0] {
            backgroundViewCell.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        }
        
        if indexPath == [4, 0] {
            repeatSwitch.isHidden = false
        }
    }
    
    @objc func switchChange(paramTarget: UISwitch) {
        if paramTarget.isOn {
            
        } else {
            
        }
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
        contentView.addSubview(repeatSwitch)
        NSLayoutConstraint.activate([
            repeatSwitch.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            repeatSwitch.trailingAnchor.constraint(equalTo: backgroundViewCell.trailingAnchor, constant: -20)
        ])
    }
}
