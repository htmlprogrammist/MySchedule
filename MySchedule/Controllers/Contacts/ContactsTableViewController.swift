//
//  ContactsTableViewController.swift
//  MySchedule
//
//  Created by Егор Бадмаев on 24.01.2022.
//

import UIKit

class ContactsTableViewController: UITableViewController {
    
    let idOptionsContactsCell = "idOptionsContactsCell"
    let idOptionsContactsHeader = "idOptionsContactsHeader"
    
    let headerNameArray = ["NAME", "PHONE", "MAIL", "TYPE", "CHOOSE IMAGE"]
    let cellNameArray = ["Name", "Phone", "Mail", "Type", ""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Option Schedule"
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.968627451, alpha: 1)
        tableView.separatorStyle = .none
        tableView.bounces = false
        tableView.register(OptionsTableViewCell.self, forCellReuseIdentifier: idOptionsContactsCell)
        tableView.register(HeaderOptionsTableViewCell.self, forHeaderFooterViewReuseIdentifier: idOptionsContactsHeader)
    }
    
    func pushControllers(vc: UIViewController) {
        let viewController = vc
        navigationController?.navigationBar.topItem?.title = "Options" // переименовали BackButton
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: idOptionsContactsCell, for: indexPath) as! OptionsTableViewCell
        cell.cellContactsConfigure(nameArray: cellNameArray, indexPath: indexPath)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        indexPath.section == 4 ? 200: 44
    }
    
    // создаём заголовки
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: idOptionsContactsHeader) as! HeaderOptionsTableViewCell
//        header.textLabel.text = "HEADER" // выглядит убого, поэтому мы сами сделали Label
        header.headerConfigure(nameArray: headerNameArray, section: section)
        return header
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cell = tableView.cellForRow(at: indexPath) as! OptionsTableViewCell
//        switch indexPath {
//        case [0, 0]: alertDate(label: cell.nameCellLabel) { (numberWeekday, date) in
//            print(numberWeekday, date)
//        }
//        case [0, 1]: alertTime(label: cell.nameCellLabel) { (date) in
//            print(date)
//        }
//        case [1, 0]: alertForCellName(label: cell.nameCellLabel, name: "Name lesson", placeholder: "Enter name lesson")
//        case [1, 1]: alertForCellName(label: cell.nameCellLabel, name: "Type", placeholder: "Enter type lesson")
//        case [1, 2]: alertForCellName(label: cell.nameCellLabel, name: "Building number", placeholder: "Enter number of building")
//        case [1, 3]: alertForCellName(label: cell.nameCellLabel, name: "Audience number", placeholder: "Enter number of audience")
//
//        case [2, 0]: pushControllers(vc: TeachersViewController())
//        case [3, 0]: pushControllers(vc: ScheduleColorViewController())
//        default: print("Error at didSelectRowAt")
//        }
    }
}
