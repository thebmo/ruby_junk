require 'test/unit/assertions'
include Test::Unit::Assertions

op = Proc.new { |x|
	x << "a"
}

def append_op(item, &func)
    
    if item.kind_of?(Array)
        item.each {|i| append_op(i, &func) }
    
    elsif item.kind_of?(String)
        return item << "a"

	elsif item.kind_of?(Hash)
		item.each { |k, v|
            item[k] = append_op(v, &func)
    }
	end
    
    return item
end


# THIS IS THE TEST CODE
one = "abc"
append_op(one, &op)
print one, "\n\n"

two = [1, 2, 3, "abc"]
append_op(two, &op)
print two, "\n\n"

three = [1, 2, 3, "abc", [2, 3, 4, {:k1 => ["df", 2, 3, {:k1_1 => 1}]}]]
append_op(three, &op)
print three, "\n\n"
# END TEST CODE