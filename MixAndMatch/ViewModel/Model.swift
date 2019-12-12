////
////  Model.swift
////  MixAndMatch
////
////  Created by MattHew Phraxayavong on 12/9/19.
////  Copyright © 2019 Matthew Phraxayavong. All rights reserved.
////
//
//import Foundation
//import MobileCoreServices
//
//public final class Counter: NSObject, Codable, NSItemProviderWriting, NSItemProviderReading {
//    
//    enum CounterError: Error {
//        case invalidDataType, decodeFailure, encodeFailure
//    }
//    
//    public static var writableTypeIdentifiersForItemProvider: [String] {
//    
//    return [(kUTTypeUTF8PlainText) as String]
//    }
//    public func loadData(withTypeIdentifier typeIdentifier: String, forItemProviderCompletionHandler completionHandler: @escaping (Data?, Error?) -> Void) -> Progress? {
//      let progress = Progress(totalUnitCount: 100)
//        do {
//          //Here the object is encoded to a JSON data object and sent to the completion handler
//          let data = try JSONEncoder().encode(self)
//            progress.completedUnitCount = 100
//            completionHandler(data, nil)
//        } catch {
//          completionHandler(nil, CounterError.encodeFailure)
//        }
//      return progress
//    }
//    
//    public static var readableTypeIdentifiersForItemProvider: [String] {
//      return [(kUTTypeUTF8PlainText) as String]
//    }
//    
////    public static func object(withItemProviderData data: Data, typeIdentifier: String) throws -> Counter {
////
////
////    }
//}
