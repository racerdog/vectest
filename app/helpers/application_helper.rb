module ApplicationHelper
  
  def dotprod(array1, array2)
    sum = 0
    len = (array1.length) - 1
    for i in 0..len
      sum += (array1[i] * array2[i])
    end
    return sum
      
    
  end
end
