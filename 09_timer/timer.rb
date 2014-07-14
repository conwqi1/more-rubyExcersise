class Timer
 attr_accessor :seconds#need to be read and write

    def initialize
         @seconds=0
    end

    def time_string
    	hour=@seconds/3600
    	remainder = @seconds%3600
    	minute=remainder/60
    	second=remainder%60
        #http://www.ruby-doc.org/core-2.1.2/Kernel.html#method-i-sprintf reference for sprintf
        #Returns the string resulting from applying format_string to any additional arguments. 
    	sprintf("%02d:%02d:%02d", hour, minute, second)
    end


end

timer=Timer.new
timer.seconds=111255
puts timer.time_string