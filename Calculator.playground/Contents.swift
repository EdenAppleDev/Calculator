//다른 클래스에서 중복으로 사용하는 함수를 가진 프로토콜
protocol AbstractOperation {
    func execute(_ a: Double, _ b: Double) -> Double
}
//더하기
class AddOperation: AbstractOperation {
    func execute(_ a: Double, _ b: Double) -> Double {
        return a + b
    }
}
//빼기
class SubtractOperation: AbstractOperation {
    func execute(_ a: Double, _ b: Double) -> Double {
        return a - b
    }
    
}
//곱하기
class MultiplyOperation: AbstractOperation {
    func execute(_ a: Double, _ b: Double) -> Double {
        return a * b
    }
}
//나누기
class DivideOperation: AbstractOperation {
    func execute(_ a: Double, _ b: Double) -> Double {
        //예외처리
        if b != 0 {
            return a / b
        } else {
            print( "0으로 나눌 수 없습니다.")
            return 0
        }
    }
}
//계산기 클래스
class Calculator {
    /*
    이 클래스 안에서만 사용가능한 var op
    데이터타입이 프로토콜이라서 모든 연산클래스를 변수안에 할당가능
     */
    private var op: AbstractOperation
    //클래스 변수 초기화
    init(op: AbstractOperation) {
        self.op = op
    }
    /*
    ExecuteOparation 데이터타입을 연산을 할수있는 클래스를 var op에 넣으면 func calculate의 매개변수로 숫자를 받고 return
    연산클래스.excute함수(숫자 매개변수) 으로 반환
    */
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







