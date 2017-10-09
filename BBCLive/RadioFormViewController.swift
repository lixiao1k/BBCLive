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
        ["Radio 1", "http://bbcmedia.ic.llnwd.net/stream/bbcmedia_radio1_mf_p?"],
        ["Radio 1Xtra", "http://bbcmedia.ic.llnwd.net/stream/bbcmedia_radio1xtra_mf_p?"],
        ["Radio 2", "http://bbcmedia.ic.llnwd.net/stream/bbcmedia_radio2_mf_p?"],
        ["Radio 3", "http://bbcmedia.ic.llnwd.net/stream/bbcmedia_radio3_mf_p?"],
        ["Radio 4", "http://bbcmedia.ic.llnwd.net/stream/bbcmedia_radio4fm_mf_p?"],
        ["Radio 4Xtra", "http://bbcmedia.ic.llnwd.net/stream/bbcmedia_radio4extra_mf_p?"],
        ["Radio 5 Live", "http://open.live.bbc.co.uk/mediaselector/5/redir/version/2.0/mediaset/http-icy-mp3-a-stream/proto/http/vpid/bbc_radio_five_live"],
        ["Radio 6", "http://bbcmedia.ic.llnwd.net/stream/bbcmedia_6music_mf_p?"],
        ["Asian Network", "http://bbcmedia.ic.llnwd.net/stream/bbcmedia_asianet_mf_p?"],
        ["BBC World Service - English News", "http://bbcwssc.ic.llnwd.net/stream/bbcwssc_mp1_ws-einws"],
        ["BBC World Service - Africa", "http://bbcwssc.ic.llnwd.net/stream/bbcwssc_mp1_ws-enafw"],
        ["Isoradio Estero", "http://icestreaming.rai.it/12.mp3"],
        ["Filodiffusione 4 Leggera", "http://icestreaming.rai.it/4.mp3"],
        ["Filodiffusione 5 Auditorium", "http://icestreaming.rai.it/5.mp3"],
        ["Isoradio", "http://icestreaming.rai.it/6.mp3"],
        ["Gr Parlamento", "http://icestreaming.rai.it/7.mp3"],
        ["Radio 1 Estero", "http://icestreaming.rai.it/8.mp3"],
        ["Web Radio 6 Teca", "http://icestreaming.rai.it/9.mp3"],
        ["Web Radio 7 Live", "http://icestreaming.rai.it/10.mp3"],
        ["Web Radio 8 Opera", "http://icestreaming.rai.it/11.mp3"],
        ["Isoradio Estero", "http://icestreaming.rai.it/12.mp3"]
        ]
    var urlString : String!
    var radioName : String!
    var dataUtil : DataUtil = DataUtil()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "BBC·Radios"
        let form = FormDescriptor()
        form.title = "BBC·Radios"
        
        let section1 = FormSectionDescriptor(headerTitle: nil, footerTitle: nil)
        for i in 0..<STATIONS.count{
            let row = FormRowDescriptor(tag: STATIONS[i][0], type: .button, title: STATIONS[i][0])
            row.configuration.button.didSelectClosure = {_ in
                self.dataUtil.setRadioName(radioName: self.STATIONS[i][0])
                self.dataUtil.setRadioUrl(radioUrl: self.STATIONS[i][1])
                let webviewController = WebViewController() as UIViewController
                self.navigationController?.pushViewController(webviewController, animated: true)
                
            }
            section1.rows.append(row)
        }
        form.sections = [section1]
        self.form = form

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
     MARK: - Navigation

     In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         Get the new view controller using segue.destinationViewController.
         Pass the selected object to the new view controller.
    }
    */

}
