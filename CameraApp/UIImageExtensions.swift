//
//  UIImageExtensions.swift
//  CameraApp
//
//  Created by 本間光 on 2021/10/10.
//

import UIKit

extension UIImage {
    func redraw() -> UIImage {
        let format = UIGraphicsImageRendererFormat()
        format.scale = 1
        return UIGraphicsImageRenderer(size: size, format: format)
            .image { context in draw(in: CGRect(origin: .zero, size: size))}
    }
}
