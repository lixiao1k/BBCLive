//
//  DataUtil.swift
//  BBCLive
//
//  Created by Shelton Lee on 2017/10/9.
//  Copyright © 2017年 Shelton Lee. All rights reserved.
//

import Foundation
class DataUtil{
    func setRadioName(radioName : String)  {
        let userInfo = UserDefaults()
        userInfo.setValue(radioName, forKey: "RadioName")
    }
    func setRadioUrl(radioUrl : String) {
        let userInfo = UserDefaults()
        userInfo.setValue(radioUrl, forKey: "RadioUrl")
    }
    func getRadioName() -> String {
        let userInfo = UserDefaults()
        let radioName = userInfo.string(forKey: "RadioName")
        return radioName!
    }
    func getRadioUrl() -> String {
        let userInfo = UserDefaults()
        let radioUrl = userInfo.string(forKey: "RadioUrl")
        return radioUrl!
    }
}
