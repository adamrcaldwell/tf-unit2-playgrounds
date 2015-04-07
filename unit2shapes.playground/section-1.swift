// Playground - noun: a place where people can play

import UIKit

import XCPlayground

class Shape: UIView {
    var color:UIColor
    init(color:UIColor) {
        self.color = color
        super.init(frame: CGRectZero)
        self.backgroundColor = color // Note that backgroundColor is a property inherited from UIView
    }
    func getArea() -> Double {
        return 0
    }
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class Circle: Shape {
    var radius:Int
    init(radius:Int, color:UIColor) {
        self.radius = radius        // Circle sets is own radius
        super.init(color: color)    // But it asks the superclass to set the color, since Shape already knows how to do that
        self.frame.size = CGSize(width: 2 * radius, height: 2 * radius)
        self.layer.cornerRadius = CGFloat(radius)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func getArea() -> Double {
        var pi:Double = M_PI
        return (pi * (Double(radius) * Double(radius)))
    }
}

class Square: Shape {
    var width:Int
    init(width:Int, color:UIColor) {
        self.width = width
        super.init(color:color)
        self.frame.size = CGSize(width: width, height: width)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func getArea() -> Double {
        return(Double(width * width))
    }
}

class Rectangle: Shape {
    var width:Int
    var height:Int
    init(width:Int, height:Int, color:UIColor) {
        self.width = width
        self.height = height
        super.init(color: color)
        self.frame.size = CGSize(width: width, height: height)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func getArea() -> Double {
        return(Double(width * height))
    }
}

class RoundedRectangle: Shape {
    var width: Int
    var height: Int
    init(width:Int, height: Int, color: UIColor) {
        self.width = width
        self.height = height
        super.init(color: color)
        self.frame.size = CGSize(width: width, height: height)
        self.layer.cornerRadius = CGFloat(width / 3)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

var circle = Circle(radius: 50, color: UIColor.blueColor())
var square = Square(width: 100, color: UIColor.redColor())
var rect = Rectangle(width: 50, height: 100, color: UIColor.greenColor())
var roundRect = RoundedRectangle(width: 50, height: 100, color: UIColor.yellowColor())

circle.center = CGPoint(x: 100, y: 100)
square.center = CGPoint(x: 200, y: 200)
rect.center = CGPoint(x: 100, y: 250)
roundRect.center = CGPoint(x: 200, y: 50)

let view = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 320))

XCPShowView("Shapes!", view)

view.addSubview(circle)
view.addSubview(square)
view.addSubview(rect)
view.addSubview(roundRect)
