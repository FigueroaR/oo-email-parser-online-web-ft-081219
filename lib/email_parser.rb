# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser
  attr_accessor :csv
  @@all = []
  def initialize(csv)
    @csv = csv
    end   
  
  def parse
    individual = csv.delete(",") 
    array = individual.split(" ")
    array.uniq
    
    
  end  
  
  def save       
    self.class.all << self 
  end         
  
end 