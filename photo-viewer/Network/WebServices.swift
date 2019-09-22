
import Foundation

let CLIENT_ID =  "42be53140de3ea23f36b8c7423d4796d4a4cb7eca8e32a462faf517f4ea0b18b"

struct WebServices {
    
    func performNetworkTask<T: Codable>(endpoint: UnsplashAPI,
                                        type: T.Type,
                                        completion: ((_ response: T) -> Void)?) {
        
        let url = endpoint.baseURL?.appendingPathComponent(endpoint.path)
        let queryItems = [URLQueryItem(name: "client_id", value: CLIENT_ID)]
        guard let urlWithQuery = url?.appending(queryItems) else { return }
        
        let urlRequest = URLRequest(url: urlWithQuery)
        let urlSession = URLSession.shared.dataTask(with: urlRequest) { (data, urlResponse, error) in
            guard error == nil, let data = data else { return }
            let response = Response(data: data)
            guard let decoded = response.decode(type) else { return }
            completion?(decoded)
        }

        urlSession.resume()
    }
}
