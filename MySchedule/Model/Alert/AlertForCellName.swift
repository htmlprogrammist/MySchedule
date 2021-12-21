//
//  AlertForCellName.swift
//  MySchedule
//
//  Created by Егор Бадмаев on 21.12.2021.
//

import UIKit

extension UIViewController {
    
    func alertForCellName(label: UILabel, name: String, placeholder: String) {
        
        let alert = UIAlertController(title: name, message: nil, preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) in
            // берём первый текстфилд, но он у нас и единственный
            let textFieldAlert = alert.textFields?.first
            guard let text = textFieldAlert?.text else { return }
            label.text = text
        })
        
        alert.addTextField { (textFieldAlert) in
            textFieldAlert.placeholder = placeholder
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        alert.addAction(ok)
        alert.addAction(cancel)
        
        present(alert, animated: true, completion: nil)
    }
}
