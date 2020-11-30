//
//  LXHeader.swift
//  swift_app
//
//  Created by asdc on 2020/11/30.
//

import Foundation
import UIKit

let LXScreenWidth = UIScreen.main.bounds.size.width
let LXScreenHeight = UIScreen.main.bounds.size.height

let LXButtonColor = UIColor(red: 242/255.0, green: 77/255.0, blue: 51/255.0, alpha: 1)
let LXDownColor = UIColor.init(red: 240/255.0, green: 241/255.0, blue: 244/255.0, alpha: 1)

let isIphoneX = LXScreenHeight == 812 ? true : false
let LXNavBarHeight : CGFloat = isIphoneX ? 88 : 64
let LXTabBarHeight : CGFloat = isIphoneX ? 49 + 34 : 49
