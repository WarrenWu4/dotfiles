def solution(tokens):
    eval_stack = []
    for token in tokens:
        match token:
            case '+':
                # add the last two elements in stack
                eval_stack.append(eval_stack.pop() + eval_stack.pop())
            case '-':
                # subtract the last two elements in stack
                num1 = eval_stack.pop()
                num2 = eval_stack.pop()
                eval_stack.append(num2 - num1)
            case '*':
                # multiply last two elements in stack
                eval_stack.append(eval_stack.pop() * eval_stack.pop())
            case '/':
                # divide the last two elements in stack
                num1 = eval_stack.pop()
                num2 = eval_stack.pop()
                eval_stack.append(num2 // num1)
            case _:
                # convert str to num and push number onto eval stack
                eval_stack.append(int(token))
        print(eval_stack)
    return eval_stack.pop()

def main():
    print(solution(["10", "6", "9", "3", "+", "-11", "*", "/", "*", "17", "+", "5", "+"]))

if __name__ == "__main__":
    main()