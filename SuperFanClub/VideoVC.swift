//
//  VideoVC.swift
//  SuperFanClub
//
//  Created by Michael Dunn on 2016-09-13.
//  Copyright © 2016 Michael Dunn. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {
    
    // wkWebView.
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var videoTitle: UILabel!
    
    private var _videoMD : VideoDM!
    
    
    var videoMD: VideoDM{
        get{
            return _videoMD
        } set {
            _videoMD = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        videoTitle.text = _videoMD.videoTitle
        webView.loadHTMLString(_videoMD.videoURL, baseURL: nil)
        
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
