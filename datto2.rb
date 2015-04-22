

def diff(old_h, new_h)
    combined = Hash.new
    
	old_h.each { |k, _|
        
        if old_h[k] != new_h[k]
            
            if old_h[k].is_a?(Hash)
                combined[k] = diff(old_h[k], new_h[k])
            else
            	combined[k] = [old_h[k],  new_h[k]]
            end
            
        else
        	combined[k] = old_h[k]
        end
    }

    combined
end

# TEST CODE
old_h = { :name => 'Eric', :age => 33, :location => { :city => "Somerville", :state => "MA" } }
new_h = { :name => 'Eric', :age => 34, :location => { :city => "Cambridge", :state => "MA" } }

puts diff(old_h, new_h)