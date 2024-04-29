//
//  Helpers.swift
//  iPet
//
//  Created by Kalen on 4/12/24.
//

import Foundation
import SwiftUI

func calcTimeSince(date: Date) -> Int {
    let seconds = Int(-date.timeIntervalSinceNow)
    return seconds
}

extension View {
    func centerH() -> some View {
        HStack {
            Spacer()
            self
            Spacer()
        }
    }
}
