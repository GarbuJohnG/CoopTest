//
//  NetworkManager.swift
//  Coop Test
//
//  Created by John Gachuhi on 23/05/2024.
//

import Foundation
import Combine

class NetworkManager {
    
    func fetchItems() -> AnyPublisher<[ImagesResponseElement], Error> {
        guard let url = URL(string: Constants.URLs.baseUrl) else {
            return Fail(error: URLError(.badURL)).eraseToAnyPublisher()
        }
        
        return URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: [ImagesResponseElement].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
        
    }
}
