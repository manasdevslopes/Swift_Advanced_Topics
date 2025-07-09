//
// PlistDecorder.swift
// 
//
// Created by MANAS VIJAYWARGIYA on 07/07/25.
// ------------------------------------------------------------------------
// 
// ------------------------------------------------------------------------
//
    
import Foundation

public func decodePlist<T: Decodable>(_ type: T.Type, from fileName: String) -> T {
  guard let url = Bundle.main.url(forResource: fileName, withExtension: "plist") else {
    fatalError("Failed to locate \(fileName).Plist file")
  }
  
  guard let data = try? Data(contentsOf: url) else {
    fatalError("Failed to load \(fileName) file from Bundle")
  }
  
  let decorder = PropertyListDecoder()
  guard let decodedData = try? decorder.decode(T.self, from: data) else {
    fatalError("Failed to decode \(fileName) file from Bundle")
  }
  return decodedData
}
