class ThisDayInHistory::Event
	attr_accessor :title,:year, :category, :story, :link

    
	 @@all = []

	def initialize(title = nil, year =nil, category =nil, story = nil)
		@@all << self
	    
    end

  def self.all
    @@all

  end

  


  def self.reset_all
    @@all.clear
  end

  def self.list_by_title
  	@@all.each.with_index(1){|event, i| puts "#{i}. #{event.title} "}
  end


 def self.list_by_year
   @@all.each.with_index(1){|event, i| puts "#{i}. #{event.year} "}
 end

 def self.list_by_category
   @@all.each.with_index(1){|event, i| puts "#{i}. #{event.category} "}
 end

 def self.find_by_number(input)
 	puts "Title: #{@@all[input-1].title}"
 	puts "Year: #{@@all[input-1].year}" 
 	puts "Category: #{@@all[input-1].category}" 
 	puts "#{@@all[input - 1].story}"
 end

end



