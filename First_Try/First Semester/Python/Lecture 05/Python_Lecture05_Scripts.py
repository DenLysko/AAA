def reverse_list(my_list: list) -> list | None:
    if type(my_list) is not list:
        print("Ошибка")
        return
    a = []
    for i, el in enumerate(my_list):
        a.append(my_list[-i - 1])
    print(a)


from collections.abc import Iterable


def delete_duplicates(sequence):
    if not isinstance(sequence, Iterable):
        print("Ошибка")
        return

    dicc = {}
    for el in sequence:
        if el not in dicc:
            dicc[el] = 1
    print(list(dicc.keys()))


def not_once(sequence):
    if not isinstance(sequence, Iterable):
        print("Ошибка")
        return

    dicc = {}

    for el in sequence:
        if el not in dicc:
            dicc[el] = 1
        else:
            dicc[el] += 1

    result = []
    print(len(list([k for k, v in dicc.items() if dicc[k] > 1])))
    # for k, v in dicc.items():
    #     if dicc[k] > 1:
    #         result.append(k)
    # print(result)


def split_to_digits(number):
    if not isinstance(number, int) or number < 0:
        print("Ошибка")
        return
    b = []
    while number > 0:
        b.append(number % 10)
        number = number // 10
    b = b[::-1]
    print(b)


def count_odds_evens(number):
    if not isinstance(number, int) or number < 0:
        print("Error")
        return
    dicc = {"odds": 0, "evens": 0}
    while number > 0:
        if (number % 10) % 2 == 0:
            dicc["evens"] += 1
        else:
            dicc["odds"] += 1
        number = number // 10
    print(f"Кол-во четных: {dicc['evens']}. Кол-во нечетных: {dicc['odds']}")
    return dicc


from collections import Counter


def subtract_lists(it1, it2):
    if not isinstance(it1, Iterable) or not isinstance(it2, Iterable):
        print("Error1")
        return
    if type(it1) is not type(it2):
        print("Error2")
        return

    # print(list(set(it1) - set(it2)))
    first = Counter(it1)
    second = Counter(it2)
    for k in first.keys():
        if k in second.keys():
            first[k] = first[k] - second[k]

    result = []
    for k in first.keys():
        if first[k] > 0:
            for i in range(first[k]):
                result.append(k)
    print(result)


def validate_coords(*args):
    lst = list(args)
    if not isinstance(lst, Iterable):
        print("Error")
        return
    for i in lst:
        if not isinstance(i, tuple):
            print("Error")
            return

    list1 = []
    for t1, t2 in lst:
        if abs(t1) > 90 or abs(t2) > 180:
            dicc = {}
            dicc["lat"] = t1
            dicc["lng"] = t2
            if abs(t1) > 90 or abs(t2) > 180:
                dicc[
                    "error"
                ] = f"Неверно задана широта: {t1}; Неверно задана долгота: {t2}"
            if abs(t1) > 90:
                dicc["error"] = f"Неверно задана широта: {t1} "
            else:
                dicc["error"] = f"Неверно задана долгота: {t2}"
            list1.append(dicc)
    print(list1)


def count_words(sentence: str):
    if not isinstance(sentence, str):
        print("Error")
        return

    words = str.split(str.lower(sentence), " ")
    cntr = Counter(words)
    print(cntr)
    return cntr


def check_bracers(string):
    stack = []
    bracers = {")": "(", "}": "{", "]": "["}
    for i, ch in enumerate(string):
        if ch in bracers.values():
            stack.append(ch)
        elif ch in bracers.keys():
            if stack[-1] == bracers[ch]:
                stack.pop()
            else:
                return i
    if len(stack) != 0:
        return -1000
    return -1


if __name__ == "__main__":
    print(check_bracers("Hi (my [name is [ Slam]] ) Shady"))
    print(check_bracers("(){}[](())[(])"))
    # count_words("one two two Two")

    # validate_coords((0.0, 1.0), (-95, 455), (-95, 30))

    # subtract_lists([1, 2, 3, 4, 4], [1, 2, 4])

    # split_to_digits(123)
    # split_to_digits(123.55)
    # split_to_digits(-5)

    # count_odds_evens(111222333999888666)

    # sequence2 = [1, 2, 3, 1, 3]
    # not_once(sequence2)


#     list1 = "123"
#     reverse_list(list1)
#     list2 = [1, 2, 4]
#     reverse_list(list2)
#     list3 = 1111
#     reverse_list(list3)
