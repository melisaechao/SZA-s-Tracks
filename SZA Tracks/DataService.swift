//
//  DataService.swift
//  SZA Tracks
//
//  Created by Melissa Saechao on 6/6/24.
//

import Foundation

struct DataService {
    
    func getFileData() -> [Tracks] {
        // Get file path to DemoData.json
        if let url = Bundle.main.url(forResource: "MockData", withExtension: "json") {
            
            do{
                // Read the file and turn it into Data
                let data = try Data(contentsOf: url)
                
                // Parse data into Swift instances
                let decoder = JSONDecoder()
                
                do {
                    let tracks = try decoder.decode([Tracks].self, from: data)
                    return tracks
                }
                catch {
                    print("Could not parse JSON: \(error)")
                }
            }
            catch {
                print("Could not read file: \(error)")
            }
            
            
        }
        
        return [Tracks]()
    }
    
    
}
