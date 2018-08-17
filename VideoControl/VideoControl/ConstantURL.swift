//
//  ConstantURL.swift
//  VideoControl
//
//  Created by PlutusCat on 2018/8/17.
//  Copyright © 2018年 VideoControl. All rights reserved.
//

/// 视频直播地址
///
/// - hkstv: 香港卫视
/// - tslsChannelLive: CEN-中经电视
/// - cctvcj: CCTV 证券资讯
/// - cctv1: 中央1套高清
/// - cctv3: 中央3套高清
/// - cctv5: 中央5套高清
/// - cctv5p: 中央5+套高清
/// - cctv6: 中央6套高清
enum ConstantURLs: String {

    // rtmp地址：
    case hkstv = "rtmp://live.hkstv.hk.lxdns.com/live/hks"
    case tslsChannelLive = "rtmp://116.213.200.53/tslsChannelLive/PCG0DuD/live"
    case cctvcj = "rtmp://live.cctvcj.com/cctvcj/live1"
    // hls测试地址：
    case cctv1 = "http://ivi.bupt.edu.cn/hls/cctv1hd.m3u8"
    case cctv3 = "http://ivi.bupt.edu.cn/hls/cctv3hd.m3u8"
    case cctv5 =  "http://ivi.bupt.edu.cn/hls/cctv5hd.m3u8"
    case cctv5p = "http://ivi.bupt.edu.cn/hls/cctv5phd.m3u8"
    case cctv6 = "http://ivi.bupt.edu.cn/hls/cctv6hd.m3u8"

}
