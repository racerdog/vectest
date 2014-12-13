class Cruncher
  
 @@orange ||= ENV["MAGIC"].split(",").map {|x| x.to_f }
 
 
 
 def self.crunch(array)
   sum = 0
   array.each_index {|i| sum += (array[i] * @@orange[i])}
   sum
 end
 

 
 def self.normalize!(array)
   sum = 0
   array.each {|x| sum += x**2}
   sum = Math.sqrt(sum)
   array.map! {|x| x = (x.to_f)/sum }
 end
 
end