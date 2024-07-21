import UIKit
import Combine

extension Publisher where Output == Int {
    func filterEvenNumbers() -> AnyPublisher<Int, Failure> {
        return self.filter { $0 % 2 == 0 }
            .eraseToAnyPublisher()
    }
    
    func filterNumberGreaterThan(_ value: Int) -> AnyPublisher<Int, Failure> {
        return self.filter { $0 > value }
            .eraseToAnyPublisher()
    }
}

let publisher = [1, 2, 3, 4, 5, 6, 7, 8].publisher


print("filterEvenNumbers")
let cancellable = publisher.filterEvenNumbers()
    .sink { value in
        print(value)
    }

print("filterNumberGreaterThan")
let _ = publisher
    .filterNumberGreaterThan(5)
    .sink { value in
        print(value)
    }




