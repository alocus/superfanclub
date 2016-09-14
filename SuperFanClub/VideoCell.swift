//
//  VideoCellTableViewCell.swift
//  SuperFanClub
//
//  Created by Michael Dunn on 2016-09-13.
//  Copyright © 2016 Michael Dunn. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {

    
    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    @IBOutlet weak var vidoeTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    // pass in video datamodel
    func updateUI( videoDM : VideoDM){
        vidoeTitle.text = videoDM.videoTitle
            
        let url = URL(string: videoDM.imageURL)!
        
        // background thread dispatch to fetch image
        DispatchQueue.global().async {
            do{
                let data = try Data(contentsOf: url)
                // main thread takes over and set image
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            }catch {
                // handle error
                
            }
        }
        
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }



}
