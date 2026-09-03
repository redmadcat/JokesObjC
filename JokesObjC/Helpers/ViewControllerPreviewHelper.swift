//
//  ViewControllerPreviewHelper.swift
//  JokesObjC
//
//  Created by Roman Yaschenkov on 03.09.2026.
//

import Foundation

#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct ViewControllerPreview: PreviewProvider {
    static var devices = ["iPhone SE", "iPhone 11 Pro Max"]
    
    static var previews: some View {
        ForEach(devices, id: \.self) { deviceName in
            ViewController()
                .toPreview()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
#endif
