list_of_dicts = [
    {'a': 123, 'b': 456},
    {'c': 789, 'd': 1315},
    {'a': 789, 'c': 1315},
    {'a': 123, 'b': 456},
    {'c': 789, 'd': 1315},
]
print(list_of_dicts)

# {tuple(d.items()) for d in list_of_dicts} is a set comprehension
# the fundamental mechanism is convert to tuple -> set -> convert back to dict
list_of_dicts = [dict(t) for t in {tuple(d.items()) for d in list_of_dicts}]
print(list_of_dicts)
