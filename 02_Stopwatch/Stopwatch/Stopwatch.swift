//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by Yeni Hwang on 2021/12/03.
//

import Foundation

class Stopwatch: NSObject {
    var counter: Double
    var timer: Timer
    
    // 인스턴스 생성시 초기화를 위한 생성자 override
    override init () {
        counter = 0.0
        timer = Timer()
    }
}
