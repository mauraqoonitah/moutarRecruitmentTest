# Integer Palindrome
# Determine how many palindromes that exist in an array of integers.

def Palindrome(arr):
     # hold the number in temp variable
     temp = 0

     for n in arr :
          numb = str(n)
          length = len(numb)

          # check if palindrome exists
           #the reversed number.
          reverse = numb[length::-1]

          # compare the temp with reversed number
          if  reverse == numb:
               temp += 1
           
     return temp

# write your input of array here :
arr =[ 808, 809, 111, 102 ] ;
# arr = [908,809,122,102];

print("your input is: ")
print (arr)
print("Palindromes that exist in array : ") 
print(Palindrome(arr))

