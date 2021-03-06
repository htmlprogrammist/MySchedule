//
//  AlertTime.swift
//  MySchedule
//
//  Created by Егор Бадмаев on 21.12.2021.
//

import UIKit

extension UIViewController {
    func alertTime(label: UILabel, completionHandler: @escaping(NSDate) -> Void) {
        let alert = UIAlertController(title: "", message: nil, preferredStyle: .actionSheet)
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .time
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.locale = NSLocale(localeIdentifier: "ru_RU") as Locale
        
        alert.view.addSubview(datePicker)
        
        let ok = UIAlertAction(title: "OK", style: .default) { (action) in
            // наша цель - получить время в формате часы и минуты
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "HH:mm"
            let timeString = dateFormatter.string(from: datePicker.date)
            let timeSchedule = datePicker.date as NSDate
            completionHandler(timeSchedule)
            
            label.text = timeString
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        
        alert.addAction(ok)
        alert.addAction(cancel)
        
        alert.negativeWidthConstraint() // удаляем мусорную ошибку Apple (она ненастоящая)
        
        alert.view.heightAnchor.constraint(equalToConstant: 300).isActive = true
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        datePicker.widthAnchor.constraint(equalTo: alert.view.widthAnchor).isActive = true
        datePicker.heightAnchor.constraint(equalToConstant: 160).isActive = true
        datePicker.topAnchor.constraint(equalTo: alert.view.topAnchor, constant: 20).isActive = true
        
        present(alert, animated: true, completion: nil)
    }
}
