//
//  MixingViewModel.swift
//  MixAndMatch
//
//  Created by MattHew Phraxayavong on 12/10/19.
//  Copyright © 2019 Matthew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

class MixingViewModel {
//    var words = ["test1", "test2", "test3"]
    struct wordStruct {

        var id : Int
        var title : String
        var text : String
        var number : String

    }
    var words = [
    wordStruct(id: 1, title: "Hippopotamus", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque id ornare tortor, quis dictum enim. Morbi convallis tincidunt quam eget bibendum. Suspendisse malesuada maximus ante, at molestie massa fringilla id.", number: "1"),
    wordStruct(id: 2, title: "Lion", text: "Ut eget massa erat. Morbi mauris diam, vulputate at luctus non, finibus et diam. Morbi et felis a lacus pharetra blandit.", number: "2"),
    wordStruct(id: 3, title: "Penguin", text: "Aliquam egestas ultricies dapibus. Nam molestie nunc in ipsum vehicula accumsan quis sit amet quam. Sed vel feugiat eros.", number: "3"),
    wordStruct(id: 4, title: "Cat", text: "Aliquam egestas ultricies dapibus. Nam molestie nunc in ipsum vehicula accumsan quis sit amet quam. Sed vel feugiat eros.", number: "4"),
    ]
    
    func rowsPerSection() -> Int {
        return self.words.count
    }
    
}

