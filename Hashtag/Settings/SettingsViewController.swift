//
//  SettingsViewController.swift
//  Hashtag
//
//  Created by Vivek Patel on 26/07/24.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
extension SettingsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: SettingsTableViewCell.self), for: indexPath) as! SettingsTableViewCell
        switch indexPath.row {
        case 0:
            cell.lblTitle.text = "Privacy Policy"
        case 1:
            cell.lblTitle.text = "Support and Reviews"
        case 2:
            cell.lblTitle.text = "Rate App"
        case 3:
            cell.lblTitle.text = "Share App"
        default:
            break
        }
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
        let nextVC = storyboard?.instantiateViewController(withIdentifier: String(describing: PrivacyViewController.self)) as! PrivacyViewController
        navigationController?.pushViewController(nextVC, animated: true)
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
