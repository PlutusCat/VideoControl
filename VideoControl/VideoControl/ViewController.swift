//
//  ViewController.swift
//  VideoControl
//
//  Created by PlutusCat on 2018/8/8.
//  Copyright © 2018年 VideoControl. All rights reserved.
//

import UIKit
import IJKMediaFramework

class ViewController: UIViewController {

    var videoView: IJKFFMoviePlayerController!
    var play: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        let url = URL(string: "http://live.hkstv.hk.lxdns.com/live/hks/playlist.m3u8")
        let options = IJKFFOptions.byDefault()
        videoView = IJKFFMoviePlayerController(contentURL: url, with: options)

        let autoresize = UIViewAutoresizing.flexibleWidth.rawValue |
            UIViewAutoresizing.flexibleHeight.rawValue
        videoView.view.autoresizingMask = UIViewAutoresizing(rawValue: autoresize)

        videoView.view.frame = view.bounds
        videoView.scalingMode = .aspectFit
        videoView.shouldAutoplay = true
        videoView.prepareToPlay()

        view.autoresizesSubviews = true
        view.addSubview(videoView.view)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

