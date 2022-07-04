from unicodedata import decimal


def convert(octal):
    decimal = 0
    curr_place =0
    while octal >0:
        curr_digit = octal%10
        decimal = curr_digit*curr_place^8 + decimal
        curr_place = curr_place + 1
        octal= octal //10
    return decimal
