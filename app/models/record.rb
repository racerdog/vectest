class Record
  
  @@cutoff = 0.15
  
  #@@lime ||= ENV["MAGIC"].split(",").map {|x| x.to_f }
  #require 'matrix'
  #extend Matrix
  
  #@@limelight = [1, 0, 1, 0, 1]
  include Mongoid::Document
  #include Matrix
  #extend Matrix
  field :xid, type: String
  field :content, type: Array
  
 # def self.dotprod(array1, array2)
 #   sum = 0
 #   len = (array1.length) - 1
  #  for i in 0..len
  #    sum += (array1[i] * array2[i])
 #   end
 #   return sum
 # end
  
  #def self.dot(array)
  #  sum = 0
  #  for i in 0..4
  #    sum += (array[i] * @@lime[i])
  #  end
   # sum
  #end
  
 # def apnumber
   
    #Record.dotprod(content, [1, 1, 0, 1, 1])
    #Record.dotprod(content, ENV["MAGIC"])
  #  Record.dotprod(content, @@lime)
   
  #end
  
  #def square
    #dotprod(content, content)
    #end
  
  def apnumber
    #Record.dot(content)
    Cruncher.crunch(content)
  end
end
