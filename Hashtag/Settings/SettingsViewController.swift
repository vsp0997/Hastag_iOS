//
//  SettingsViewController.swift
//  Hashtag
//
//  Created by Vivek Patel on 26/07/24.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var tblView: UITableView!
    let settingList: [String] = ["Privacy Policy", "Support and Reviews", "Rate App", "Share App"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
extension SettingsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: SettingsTableViewCell.self), for: indexPath) as! SettingsTableViewCell
        cell.lblTitle.text = settingList[indexPath.row]
        cell.cellView.layer.cornerRadius = 10
        cell.cellView.layer.masksToBounds = true
        if indexPath.row == 0 {
            cell.cellView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        } else if indexPath.row == tableView.numberOfRows(inSection: indexPath.section) - 1 {
            cell.cellView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
            cell.seperatorView.isHidden = true
        } else {
            cell.cellView.layer.cornerRadius = 0
            cell.cellView.layer.maskedCorners = []
        }
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let nextVC = storyboard?.instantiateViewController(withIdentifier: String(describing: PrivacyViewController.self)) as! PrivacyViewController
            navigationController?.pushViewController(nextVC, animated: true)
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = .clear
        return headerView
    }
}
