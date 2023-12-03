import UIKit
import PlaygroundSupport    // playground 타임라인 내에서 동적으로 뷰를 보여주는 기능을 포함한 여러 기능 제공

let container = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
PlaygroundPage.current.liveView = container
container.backgroundColor = UIColor.white

let square = UIView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
square.backgroundColor = UIColor.red

container.addSubview(square)

UIView.animate(withDuration: 5.0, animations: {
    square.backgroundColor = UIColor.blue
    let rotation = CGAffineTransform(rotationAngle: 3.14)
    square.transform = rotation
})
