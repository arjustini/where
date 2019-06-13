module Where
    def where(*arr)
       counter = 0
       keylist = arr[0].keys
       keylistLength = keylist.length
       values = []
       keylistLength.times {values.push([])}
       while counter < keylistLength
            self.each {|x| values[counter].push(x) if arr[0][keylist[counter]] === x[keylist[counter]]}
            counter = counter + 1
       end
       return values.reduce(:&)
    end
end