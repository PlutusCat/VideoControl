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

        let url = URL(string: ConstantURLs.cctv1.rawValue)
        let options = IJKFFOptions.byDefault()
        videoView = IJKFFMoviePlayerController(contentURL: url, with: options)

        let autoresize = UIViewAutoresizing.flexibleWidth.rawValue |
            UIViewAutoresizing.flexibleHeight.rawValue
        videoView.view.autoresizingMask = UIViewAutoresizing(rawValue: autoresize)

        videoView.view.frame = CGRect(x: 0,
                                      y: navigationHeight(),
                                      width: view.bounds.width,
                                      height: view.bounds.width.proportionHeight())
        videoView.scalingMode = .aspectFit
        videoView.shouldAutoplay = true
        videoView.prepareToPlay()

        view.autoresizesSubviews = true
        view.addSubview(videoView.view)

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)

        videoView.prepareToPlay()

    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)

        videoView.shutdown()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

