def clear_negatives(lst):
    if len(lst) == 0:
        return[]
    elif lst[0] < 0:
        return clear_negatives(lst[abs(list[0]):])
    else:
        return clear_negatives(list[1:])+ [lst[0]]
