def solution(tokens):
    eval_stack = []
    for token in tokens:
        match token:
            case '+':
                # add the last two elements in stack
                eval_stack.append(eval_stack.pop() + eval_stack.pop())
            case '-':
                # subtract the last two elements in stack
                eval_stack.append(eval_stack.pop() - eval_stack.pop())
            case '*':
                # multiply last two elements in stack
                eval_stack.append(eval_stack.pop() * eval_stack.pop())
            case '/':
                # divide the last two elements in stack
                eval_stack.append(eval_stack.pop() / eval_stack.pop())
            case _:
                # convert str to num and push number onto eval stack
                eval_stack.append(int(token))
    return eval_stack.top()