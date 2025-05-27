class Calculator {
    
    func calculate(op: String, firstNumber: Int, secondNumber: Int) -> Int{
        
        switch op {
        case "+":
            return firstNumber + secondNumber
        case "-":
            return firstNumber - secondNumber
        case "*":
            return firstNumber * secondNumber
        case "/":
            return firstNumber / secondNumber
        default:
            return 0
        }
        
    }
    
}

let calculator = Calculator()
var addResult = calculator.calculate(op: "+", firstNumber: 4, secondNumber: 3)
print(addResult)






