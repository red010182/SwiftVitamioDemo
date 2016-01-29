//
//  ViewController.swift
//  avc
//
//  Created by tpy on 1/29/16.
//  Copyright © 2016 xmai. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, VMediaPlayerDelegate {
    var player:VMediaPlayer = VMediaPlayer.sharedInstance()

    convenience init() {
        self.init(nibName:"HomeViewController",bundle:nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = "http://techslides.com/demos/sample-videos/small.flv"
        player.setupPlayerWithCarrierView(self.view, withDelegate: self)
        player.setDataSource(NSURL(string: url))
        player.prepareAsync()
    }
    
    func mediaPlayer(player: VMediaPlayer!, didPrepared arg: AnyObject!) {
        player.start()
    }
    func mediaPlayer(player: VMediaPlayer!, playbackComplete arg: AnyObject!) {
        
    }
    func mediaPlayer(player: VMediaPlayer!, error arg: AnyObject!) {
        
    }
    
    deinit {
        player.unSetupPlayer()
    }
}

