//
//  LayoutSize.swift
//  VideoControl
//
//  Created by PlutusCat on 2018/8/17.
//  Copyright © 2018年 VideoControl. All rights reserved.
//

import UIKit

extension UIViewController {


    /// 获取 navigationBar 高度
    ///
    /// - Returns: 返回高度
    func navigationHeight() -> CGFloat {
        return UIApplication.shared.statusBarFrame.size.height+(navigationController?.navigationBar.bounds.height)!
    }
}

extension CGFloat {

    /// 按照 16：9 比例，通过固定宽度获取高度
    ///
    /// - Parameter width: 固定宽度
    /// - Returns: 高度结果
    func proportionHeight() -> CGFloat {
        return 9.0 * self / 16.0
    }

    /// 按照 16：9 比例，通过固定高度获取宽度
    ///
    /// - Parameter height: 固定高度
    /// - Returns: 宽度结果
    func proportionWidth() -> CGFloat {
        return 16.0 * self / 9.0
    }


}
