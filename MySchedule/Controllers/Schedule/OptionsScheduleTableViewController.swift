//
//  OptionsScheduleViewController.swift
//  MySchedule
//
//  Created by Егор Бадмаев on 21.12.2021.
//

import UIKit

class OptionsScheduleTableViewController: UITableViewController {
    
    let idOptionsScheduleCell = "idOptionsScheduleCell"
    let idOptionsScheduleHeader = "idOptionsScheduleHeader"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Option Schedule"
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.968627451, alpha: 1)
        tableView.separatorStyle = .none
        tableView.bounces = false
        tableView.register(OptionsScheduleTableViewCell.self, forCellReuseIdentifier: idOptionsScheduleCell)
        tableView.register(HeaderOptionScheduleTableViewCell.self, forHeaderFooterViewReuseIdentifier: idOptionsScheduleHeader)
    }
    
    func pushControllers(vc: UIViewController) {
        let viewController = vc
        navigationController?.navigationBar.topItem?.title = "Options" // переименовали BackButton
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        5
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return 2
        case 1: return 4
        case 2: return 1
        case 3: return 1
        default:
            return 1
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: idOptionsScheduleCell, for: indexPath) as! OptionsScheduleTableViewCell
        cell.cellConfigure(indexPath: indexPath)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    // создаём заголовки
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: idOptionsScheduleHeader) as! HeaderOptionScheduleTableViewCell
//        header.textLabel.text = "HEADER" // выглядит убого, поэтому мы сами сделали Label
        header.headerConfigure(section: section)
        return header
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cell = tableView.cellForRow(at: indexPath) as! OptionsScheduleTableViewCell
        switch indexPath {
        case [0, 0]: alertDate(label: cell.nameCellLabel) { (numberWeekday, date) in
            print(numberWeekday, date)
        }
        case [0, 1]: alertTime(label: cell.nameCellLabel) { (date) in
            print(date)
        }
        case [1, 0]: alertForCellName(label: cell.nameCellLabel, name: "Name lesson", placeholder: "Enter name lesson")
        case [1, 1]: alertForCellName(label: cell.nameCellLabel, name: "Type", placeholder: "Enter type lesson")
        case [1, 2]: alertForCellName(label: cell.nameCellLabel, name: "Building number", placeholder: "Enter number of building")
        case [1, 3]: alertForCellName(label: cell.nameCellLabel, name: "Audience number", placeholder: "Enter number of audience")
        
        case [2, 0]: pushControllers(vc: TeachersViewController())
        case [3, 0]: pushControllers(vc: ScheduleColorViewController())
            let colors = ScheduleColorViewController()
            navigationController?.pushViewController(colors, animated: true)
        default: print("Error at didSelectRowAt")
        }
    }
}
