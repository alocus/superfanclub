//
//  ViewController.swift
//  SuperFanClub
//
//  Created by Michael Dunn on 2016-09-13.
//  Copyright © 2016 Michael Dunn. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableview: UITableView!
    
    var videoData = [VideoDM]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Mock up data
        let p1 = VideoDM(imgURL: "https://i.ytimg.com/vi/QjkHdEM5bnw/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=5sQ5oj_pYwvFK5_OuibJ19G1q-A", videoURL: "<iframe width=\"460\" height=\"315\" src=\"https://www.youtube.com/embed/QjkHdEM5bnw\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "BEST OF RALLY 2015")
        
        let p2 = VideoDM(imgURL: "https://i.ytimg.com/vi/oiL9OfbYrPQ/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=7iX_KHFMg_YJ28K1tTOyWT9qRUc", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/oiL9OfbYrPQ\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Ken Block and Alex Gelsomino's")
        
        
        videoData.append(p1)
        videoData.append(p2)

        print("The number of item in videoData \(videoData.count)")
        
        tableview.delegate = self
        tableview.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videoData.count
    }
    
    // recycle cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell", for: indexPath) as? VideoCell{
            let videoDataObject = videoData[indexPath.row]
            cell.updateUI(videoDM: videoDataObject)
            return cell
        }else{
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let videoMD = videoData[indexPath.row]
        
        performSegue(withIdentifier: "VideoVC", sender: videoMD)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC{
            
            if let videoMD = sender as? VideoDM{
                destination.videoMD = videoMD
            }
        }
    }
}

