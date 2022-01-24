//
//  ContactsTableViewCell.swift
//  MySchedule
//
//  Created by Егор Бадмаев on 24.01.2022.
//

import UIKit

class ContactsTableViewCell: UITableViewCell {
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setConstraints()
        self.selectionStyle = .none
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        
        NSLayoutConstraint.activate([
            
        ])
    }
}
