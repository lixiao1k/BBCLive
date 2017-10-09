//
//  RadioFormViewController.swift
//  BBCLive
//
//  Created by Shelton Lee on 2017/10/9.
//  Copyright © 2017年 Shelton Lee. All rights reserved.
//

import UIKit
import SwiftForms
class RadioFormViewController: FormViewController {
    let STATIONS = [
        ["Radio 1", "http://icestreaming.rai.it/1.mp3"],
        ["Radio 2", "http://icestreaming.rai.it/2.mp3"],
        ["Radio 3", "http://icestreaming.rai.it/3.mp3"],
        ["Filodiffusione 4 Leggera", "http://icestreaming.rai.it/4.mp3"],
        ["Filodiffusione 5 Auditorium", "http://icestreaming.rai.it/5.mp3"],
        ["Isoradio", "http://icestreaming.rai.it/6.mp3"],
        ["Gr Parlamento", "http://icestreaming.rai.it/7.mp3"],
        ["Radio 1 Estero", "http://icestreaming.rai.it/8.mp3"],
        ["Web Radio 6 Teca", "http://icestreaming.rai.it/9.mp3"],
        ["Web Radio 7 Live", "http://icestreaming.rai.it/10.mp3"],
        ["Web Radio 8 Opera", "http://icestreaming.rai.it/11.mp3"],
        ["Isoradio Estero", "http://icestreaming.rai.it/12.mp3"],
        ]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "BBC电台"
        let form = FormDescriptor()
        form.title = "BBC电台"
        
        let section1 = FormSectionDescriptor(headerTitle: nil, footerTitle: nil)
        var row = FormRowDescriptor(tag: "Radio1", type: .button, title: "Radio1")
        row.configuration.button.didSelectClosure = {_ in
            //self.navigationController?.pushViewController(nil, animated: true)
            
        }
        section1.rows.append(row)
        form.sections = [section1]
        self.form = form

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
