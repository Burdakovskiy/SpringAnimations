//
//  Animation.swift
//  SpringAnimations
//
//  Created by Дмитрий on 03.12.2021.
//

import Foundation

struct Animation {
    let name: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var description: String {
        return """
        preset: \(name)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
    static func getRandomAnimation() -> Animation {
        Animation(name: DataManager.shared.animations.randomElement()?.rawValue ?? "fadeIn",
                  curve: DataManager.shared.curves.randomElement()?.rawValue ?? "easeInCirc",
                  force: Float.random(in: 1...2),
                  duration: Float.random(in: 1...3),
                  delay: Float.random(in: 0.1...0.5))
    }
}
