# QUICK SORT
# There will be an array of integers as input.
# implement the sorting algorithm to make it sorted (ASC).
# Select middle element as pivot, 
# find element which is greater than pivot,
# find element which is smaller than pivot,
# if we found the element on the left side which is greater than pivot 
# and element on the right side which is smaller than pivot: 
# Swap them, and increase the left and right
# and then Recursion on left and right of the pivot to get the sorted array


def partition(arr, low, high):
	i = (low-1)	 # index of smaller element
	pivot = arr[high]	 # select middle element as pivot

	for j in range(low, high):
 
		# find element which is smaller than pivot or equal than pivot
		if arr[j] <= pivot:

			i = i+1 #increment the smaller element
			arr[i], arr[j] = arr[j], arr[i]

	arr[i+1], arr[high] = arr[high], arr[i+1]
	return (i+1)


def quickSort(arr, low, high):
	if len(arr) == 1:
		return arr
	if low < high:
		pi = partition(arr, low, high)
	
		quickSort(arr, low, pi-1)
		quickSort(arr, pi+1, high)


#input your array to be sorted here:
arr = [10,2,1,5,3,6]
print("your input to be sorted: ")
print(arr)

n = len(arr)
quickSort(arr, 0, n-1)

print("Sorted array ASC using QuickSort Algortihm:")
print(arr)

