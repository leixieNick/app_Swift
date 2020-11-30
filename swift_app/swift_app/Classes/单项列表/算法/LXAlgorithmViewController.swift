//
//  LXAlgorithmViewController.swift
//  swift_app
//
//  Created by asdc on 2020/11/30.
//

import UIKit

class LXAlgorithmViewController: UIViewController {
    public let sectionTitleArray = ["数组", "字符串", "Remind", "Remind", "Remind", "Remind", "Remind"]
    public let titleArray = [
        [
            "如何在有序数组中找出和等于给定值的两个元素？",
            "如何合并两个有序的数组之后保持有序？"
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

extension LXAlgorithmViewController: UITableViewDataSource, UITableViewDelegate {
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
                print(twoSum([2,7,11,15], 9))
            case 1:
                print(twoSum([2,7,11,15], 9))
            
            default:
                break
            }
            
        default:
            break
        }
        
    }
}

// 88. 合并两个有序数组
// 给你两个有序整数数组 nums1 和 nums2，请你将 nums2 合并到 nums1 中，使 nums1 成为一个有序数组。
extension LXAlgorithmViewController {
    func merge(_ nums1: [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        
    }
}



// 167. 两数之和 II - 输入有序数组
// 给定一个已按照升序排列 的有序数组，找到两个数使得它们相加之和等于目标数。
extension LXAlgorithmViewController {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        for i in 0..<numbers.count {
            let num2 = target - numbers[i]
            for j in (i+1)..<numbers.count {
                if numbers[j] == num2 {
                    return [i+1, j+1]
                }
            }
        }
        
        return []
    }
}
