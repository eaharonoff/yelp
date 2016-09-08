require 'pry'
def merge(arr1,arr2)
  sorted=[]
  while !arr1.empty? || !arr2.empty?
    if arr1.first <= arr2.first
      sorted << arr1.first
      arr1.shift 
    else 
      sorted << arr2.first 
      arr2.shift 
    end
  end
  sorted.concat(arr1).concat(arr2)
end

merge([1,4,3,5],[10,2,6,11,7])