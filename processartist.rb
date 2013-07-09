require 'ruby-processing'
class ProcessArtist < Processing::App

	def setup
		background(79, 209, 204)
		@size = 10
		@queue = ""
	end

	def draw
    	#nfljnvfs
    end

    def mouse_pressed
    	warn "The mouse was pressed"
    end

    def mouse_dragged
    	fill(29, 209, 204)
    	case @shape
    	when "s1" then rect(mouse_x, mouse_y, @size, @size)
    	when "s2" then rect(mouse_x, mouse_y, @size * 2, @size * 2)
        when "s3" then rect(mouse_x, mouse_y, @size * 4, @size)
        when "s4" then rect(mouse_x, mouse_y, @size, @size * 4)
        when "s5" then oval(mouse_x, mouse_y, @size * 2, @size)
        when "s6" then oval(mouse_x, mouse_y, @size, @size)
        when "s7" then oval(mouse_x, mouse_y, @size, @size * 2)
        when "c" then background(79, 209, 204)
  

        else
        	warn "I don't know that command"
    		rect(mouse_x, mouse_y, @size, @size)
    	end
    end

    def mouse_released 
    	warn "The mouse was mouse was released"
    end


    def key_pressed
    	warn "A key was pressed! #{ key.inspect}"
    	if !key.is_a?(String) 
    		warn "That wasn't a key"
    		return 
    	end

 
    
   	 if key == "+"
    		warn "You pressed plus"
    		@size += 100
    	elsif key == "-"
    		warn "You pressed minus"
    		@size -= 100
    	elsif key != "\n"
    		@queue += key
    	else
    		warn "Time to run the command: #{@queue}"
	    	@shape = @queue.chomp
	    	@queue = ""
    	end
    
	    def run_command(command)
    		if command.start_with?("b")
    			color = command[1..-1]
    			colors = color.split(",")
    			background(colors[0].to_i,colors[1].to_i,colors[2].to_i)
    		end
   	    end
	end

end




ProcessArtist.new(:width => 800, :height => 800,
	:title => "ProcessArtist", :full_screen => false)
