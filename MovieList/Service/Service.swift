//
//  Service.swift
//  MovieList
//
//  Created by Fernanda Perovano on 27/12/22.
//

import Foundation

class Service {
    
    enum CustomError: Error {
        case invalidURL
        case invalidData
    }
    
    func request<T: Codable>(url: URL?, expecting: T.Type, completion: @escaping (Result<T, Error>) -> Void) {
        guard let url = url else {
            completion(.failure(CustomError.invalidURL))
            return }
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                completion(.failure(CustomError.invalidData))
                return }
            do {
                let result = try JSONDecoder().decode(expecting, from: data)
                completion(.success(result))
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
}
