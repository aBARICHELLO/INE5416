-- 4
import Pilha (Pilha (Stack), emptyStack, push, pop, top)
import Fila (Fila (Queue), enqueue, dequeue, first, emptyQueue)

main = do
    -- // Stack
    print (push (push emptyStack 1) 2)
    print (top (Stack [1,2,3,4,5]))
    print (pop (Stack [1,2,3,4,5]))

    -- // Queue
    print (enqueue (enqueue emptyQueue 1) 2) -- Enqueue
    print (dequeue (Queue [1,2,3])) -- Dequeue
    print (first (Queue [1,2,3,4,5])) -- First element
