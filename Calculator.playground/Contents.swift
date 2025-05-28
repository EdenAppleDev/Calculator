class Calculator {
    
    // 3개의 매개변수를 사용하고 Int로 반환
    func calculate(op: String, firstNumber: Double, secondNumber: Double) -> Double{
        
        //switch 문으로 op값에 맞게 계산
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
            //특수상황에 예외처리
        }
        
    }
    
}

//인스턴스 생성
let calculator = Calculator()

//인스턴스.메서드(매개변수)를 활용해 출력
var addResult = calculator.calculate(op: "+", firstNumber: 4, secondNumber: 3)
print(addResult)






