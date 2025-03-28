//
//  UIColor+Extensions.swift
//  AutoTrackApp
//
//  Created by Lucas Rodrigues Dias on 27/03/25.
//

import UIKit
import Foundation

extension UIColor {
    static let primaryColor = UIColor(hex: "#F0F0F0FF")   ///cinza claro
    static let grayColor = UIColor(hex: "#A3A3A3FF")      ///cinza escuro
    static let blackColor = UIColor(hex: "#1F1F1FFF")     ///preto
    static let whiteColor = UIColor(hex: "#FFFFFFFF")     ///branco
    static let blueColor = UIColor(hex: "#194AF9FF")      ///azul
    static let redColor = UIColor(hex: "#E82127FF")       ///vermelho
    
    public convenience init?(hex: String) {
        let r, g, b, a: CGFloat
        
        var hexColor = hex.hasPrefix("#") ? String(hex.dropFirst()) : hex
        if hexColor.count == 6 {
            hexColor = hexColor + "FF" // Adiciona o valor alfa se não estiver presente
        }
        
        if hexColor.count == 8 {
            let scanner = Scanner(string: hexColor)
            var hexNumber: UInt64 = 0
            
            if scanner.scanHexInt64(&hexNumber) {
                r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                a = CGFloat(hexNumber & 0x000000ff) / 255
                
                self.init(red: r, green: g, blue: b, alpha: a)
                return
            }
        }
        return nil
    }
}
