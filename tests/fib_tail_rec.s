; init terms to calculate in #3
print "Term to calculate:"
scan #3

; input = 0
add $0 $0 #2
jz #3 :output

; f0 = 0, f1 = 1
add $0 $0 #1
add $1 $0 #2

; input = 1
sub #3 $1 #3
jz #3 :output

call :fib

output:
print #2
halt

fib:
    add #1 #2 #2
    sub #2 #1 #1

    sub #3 $1 #3
    jz #3 :end
    call :fib
    end:
    ret