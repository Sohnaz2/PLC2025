"""
def listFunc():
    return [i for i in range(1, 6)] #Create list of ints from 1 to 5, Haskell equivalent [1..5]

def applicatorFunc(inpFunc, s):
    if s=='s':
        return sum(inpFunc())
    else:
        return sum(inpFunc())/5

print(applicatorFunc(listFunc, 's'))
"""

def listFunc(a, b):
    #Create a list of integers from a to b, equivalent to Haskell's [a..b].
    return list(range(a, b + 1))

def applicatorFunc(inpFunc, s, a, b):
    #Computes sum or average of numbers from a to b based on the character s.
    numbers = inpFunc(a, b)
    if s == 's':
        return sum(numbers)
    else:
        return sum(numbers) / len(numbers)

# Example usage
print(applicatorFunc(listFunc, 'a', 1, 5))  # Calculates average of numbers from 1 to 10
print(applicatorFunc(listFunc, 's', 1, 10))  # Calculates sum of numbers