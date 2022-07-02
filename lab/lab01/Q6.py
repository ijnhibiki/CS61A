def sum_digits(y):
    m = 0
    while y > 0:
        n = y%10
        m = n+m
        y = y//10
    return m
