//
//  ImagesViewModel.swift
//  Coop Test
//
//  Created by John Gachuhi on 23/05/2024.
//

import Foundation
import Combine

class ItemsViewModel: ObservableObject {
    
    @Published var items: [ImagesResponseElement] = []
    @Published var errorMessage: String? = nil
    @Published var isLoading: Bool = false
    
    private var cancellables = Set<AnyCancellable>()
    private let networkManager = NetworkManager()
    
    func getItems() {
        networkManager.fetchItems()
            .sink(receiveCompletion: { completion in
                if case .failure(let error) = completion {
                    self.errorMessage = error.localizedDescription
                }
            }, receiveValue: { [weak self] items in
                self?.items = items
            })
            .store(in: &cancellables)
    }
    
}

