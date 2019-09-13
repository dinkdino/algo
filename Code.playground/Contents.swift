import Foundation
import XCTest

var list = [ 10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26 ]

//insertionSort(list)

//selectionSort(list)

//quickSort(&list, low: 0, high: list.count - 1)

//mergeSort(list)

//binarySearch(sortedList, item: 10, low: 0, high: sortedList.count - 1)

//var heap = Heap(array: list, sort: >)
//heap.sort()



let testObserver = TestObserver()
XCTestObservationCenter.shared.addTestObserver(testObserver)
LinkedListTests.defaultTestSuite.run()
