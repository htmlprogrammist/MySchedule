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
        tableView.register(OptionsScheduleTableViewCell.self, forCellReuseIdentifier: idOptionsScheduleCell)
        tableView.register(HeaderOptionScheduleTableViewCell.self, forHeaderFooterViewReuseIdentifier: idOptionsScheduleHeader)
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
        default: print("Error at didSelectRowAt")
        }
    }
}
