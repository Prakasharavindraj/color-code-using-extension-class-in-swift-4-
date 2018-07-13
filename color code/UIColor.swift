import UIKit

extension UIColor {
    
    convenience init(argb: UInt) {
        self.init(
            red: CGFloat(CFloat((argb & 0xFF0000) >> 16) / 255.0),
            green: CGFloat(Float((argb & 0x00FF00) >> 8) / 255.0),
            blue: CGFloat(Float(argb & 0x0000FF) / 255.0),
            alpha: CGFloat(Float((argb & 0xFF000000) >> 24) / 255.0)
        )
    }
}
