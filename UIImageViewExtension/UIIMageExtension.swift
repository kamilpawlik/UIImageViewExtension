import Foundation
import UIKit

public extension UIImageView {
        
    func loadFromUrl(url: NSURL){
        NSURLSession.sharedSession().dataTaskWithURL(url) { (data, response, error) in
            if let httpResponse = response as? NSHTTPURLResponse {
                switch httpResponse.statusCode {
                case 200:
                    if let imgData = data {
                        dispatch_async(dispatch_get_main_queue()){
                            self.image = UIImage(data: imgData)
                        }
                    }
                default:
                    print("GET request not successful. HTTP status code: \(httpResponse.statusCode)")
                }
            }
        }.resume()
    }
}