# old = { :name => 'Eric', :age => 33, :location => { :city => "Somerville", :state => "MA" } }

# new = { :name => 'Eric', :age => 34, :location => { :city => "Cambridge", :state => "MA" } }

# diff(old, new)
# -> { :age => [33, 34], :location => { :city => [ "Somerville", "Cambridge" ] } }

def diff(old, new):
    combined = {}
    
    for k in old:
        old[k] != new[k]:
            
            if type(old[k]) == dict:
                combined[k] = diff(old[k], new[k])
            else:
                combined[k] = [old[k],  new[k]]

    return combined
