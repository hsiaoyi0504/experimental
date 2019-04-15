'''
To find the answer of an interesting math problem,
 a     d     g
--- + --- + --- = 1
b c   e f   h i

each alpha represents an integer number between 0 and 9 (not duplicate)

'''
import random


random.seed(10)
nums = list(range(1,10))
combines = set()

while True:
    random.shuffle(nums)
    if tuple(nums) in combines:
        continue
    else:
        sum = nums[0] / (nums[1] * 10 + nums[2] ) + nums[3] / (nums[4] * 10 + nums[5]) + nums[6] / (nums[7] * 10 + nums[8])
        if sum == 1:
            break
        else:
            combines.add(tuple(nums))
print('{} / {}{} + {} / {}{} + {} / {}{} = 1'.format(*nums))
