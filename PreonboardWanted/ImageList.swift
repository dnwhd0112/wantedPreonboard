//
//  ImageList.swift
//  PreonboardWanted
//
//  Created by 곽우종 on 2023/03/06.
//

import Foundation

enum ImageList {
    case coffee
    case banana
    case flower
    case apple
    case fish
}

extension ImageList {
    var url: URL? {
        switch self {
        case .coffee:
            return URL(string: "https://cdn.pixabay.com/photo/2020/04/06/13/37/coffee-5009730__340.png"
            )
        case .banana:
            return URL(string: "https://cdn.pixabay.com/photo/2014/12/21/23/39/bananas-575773__340.png"
            )
        case .flower:
            return URL(string:
                "https://cdn.pixabay.com/animation/2022/08/06/13/18/13-18-07-230_640.png"
            )
        case .apple:
            return URL(string:
               "https://cdn.pixabay.com/animation/2023/01/16/09/28/09-28-54-112_512.gif"
            )
        case .fish:
            return URL(string:
            "https://cdn.pixabay.com/photo/2016/04/15/20/08/fish-1331814__340.png"
            )
        }
        
    }
}


