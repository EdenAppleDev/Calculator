protocol AbstractOperation {
    func execute(_ a: Double, _ b: Double) -> Double
}

class AddOperation: AbstractOperation {
    func execute(_ a: Double, _ b: Double) -> Double {
        return a + b
    }
}

class SubtractOperation: AbstractOperation {
    func execute(_ a: Double, _ b: Double) -> Double {
        return a - b
    }
    
}

class MultiplyOperation: AbstractOperation {
    func execute(_ a: Double, _ b: Double) -> Double {
        return a * b
    }
}

class DivideOperation: AbstractOperation {
    func execute(_ a: Double, _ b: Double) -> Double {
        return a / b
    }
}

class Calculator {
    private var op: AbstractOperation
    
    init(op: AbstractOperation) {
        self.op = op
    }
    
    func calculate(_ a: Double, _ b: Double) -> Double {
        return op.execute(a, b)
    }
}

let addCalc = Calculator(op: AddOperation())
addCalc.calculate(4, 5)

let minusCalc = Calculator(op: SubtractOperation())
minusCalc.calculate(4, 5)
minusCalc.calculate(10, 3)

let multiplyCalc = Calculator(op: MultiplyOperation())
multiplyCalc.calculate(4, 5)

let divideCalc = Calculator(op: DivideOperation())
divideCalc.calculate(4, 5)







