//
//  Utils.swift
//  Winners Habit
//
//  Created by 최동호 on 2021/05/03.
//

import Foundation
import UIKit

extension UIColor {
   convenience init(red: Int, green: Int, blue: Int) {
       assert(red >= 0 && red <= 255, "Invalid red component")
       assert(green >= 0 && green <= 255, "Invalid green component")
       assert(blue >= 0 && blue <= 255, "Invalid blue component")

       self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
   }

   convenience init(rgb: Int) {
       self.init(
           red: (rgb >> 16) & 0xFF,
           green: (rgb >> 8) & 0xFF,
           blue: rgb & 0xFF
       )
   }
}

func hexToUIColor(hex: String) -> UIColor {
    return UIColor(rgb: Int(hex, radix: 16)!)
}

func getWeekDayKor(date: Int?) -> String {
    switch date {
    case 1:
        return "일"
    case 2:
        return "월"
    case 3:
        return "화"
    case 4:
        return "수"
    case 5:
        return "목"
    case 6:
        return "금"
    case 7:
        return "토"
    default:
        return "날짜 변환 오류"
    }
    
}
