//
//  LXFindViewController.swift
//  swift_app
//
//  Created by asdc on 2020/11/30.
//

import UIKit

class LXFindViewController: UIViewController {
    public let sectionTitleArray = ["算法", "Remind", "Remind", "Remind", "Remind", "Remind", "Remind"]
    public let titleArray = [
        [
            "数组/字符串",
        ],
        [
            "In the middle with a larger button style",
            "In the middle with a larger button style",
        ],
        [
            "In the middle with a larger button style",
            "In the middle with a larger button style",
            "In the middle with a larger button style",
        ],
        [
            "In the middle with a larger button style",
            "In the middle with a larger button style",
            "In the middle with a larger button style",
            "In the middle with a larger button style",
        ],
        [
            "In the middle with a larger button style",
            "In the middle with a larger button style",
            "In the middle with a larger button style",
            "In the middle with a larger button style",
            "In the middle with a larger button style",
        ],
        [
            "In the middle with a larger button style",
            "In the middle with a larger button style",
            "In the middle with a larger button style",
            "In the middle with a larger button style",
            "In the middle with a larger button style",
            "In the middle with a larger button style",
        ],
        [
            "In the middle with a larger button style",
            "In the middle with a larger button style",
            "In the middle with a larger button style",
            "In the middle with a larger button style",
            "In the middle with a larger button style",
            "In the middle with a larger button style",
            "In the middle with a larger button style",
        ],
    ]
    
    lazy var tableView: UITableView = {
        let tableView = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: LXScreenWidth, height: LXScreenHeight), style: .plain)
        tableView.backgroundColor = UIColor.white
        tableView.dataSource = self
        tableView.delegate = self
        
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(self.tableView)
    }
}

extension LXFindViewController: UITableViewDataSource, UITableViewDelegate {
    public func numberOfSections(in tableView: UITableView) -> Int {
        return sectionTitleArray.count
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleArray[section].count
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55.0
    }
    
    public func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44.0
    }
    public func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitleArray[section]
    }
    
    public func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return CGFloat.leastNormalMagnitude
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell") ?? UITableViewCell.init(style: .subtitle, reuseIdentifier: "UITableViewCell")

        cell.textLabel?.textColor = UIColor.init(white: 0.0, alpha: 0.6)
        cell.textLabel?.font = UIFont.init(name: "ChalkboardSE-Bold", size: 14.0)
        cell.textLabel?.lineBreakMode = .byCharWrapping
        cell.textLabel?.text = "\(indexPath.section + 1).\(indexPath.row + 1) \(titleArray[indexPath.section][indexPath.row])"
        cell.textLabel?.numberOfLines = 2
        
        return cell
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                self.navigationController?.pushViewController(LXAlgorithmViewController.init(), animated: true)
            default:
                break
            }
            
        default:
            break
        }
    }
    
}
