import UIKit
import Combine

let publisher = [1, 2, 3, 4, 5, 6, 7, 8].publisher

let cancellable = publisher
    .map { $0 * 3 }
    .print("Debug1")
    .filter { $0 % 2 == 0 }
    .print("Debug2")
    .sink { value in
        print(value)
    }




