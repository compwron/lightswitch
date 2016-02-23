    file = ARGV[0] || "input.txt"
    lines = File.readlines(file).map(&:strip)

    switch_count = lines.shift.to_i
    switch_states = 0.upto(switch_count - 1).map {|i| false }
    ranges = lines.map{ |l| l.split(" ").map(&:to_i).sort }

    ranges.each { |a, b|
      a.upto(b).each {|i|
        switch_states[i] = !switch_states[i]
      }
    }

    p switch_states.count(true)



#  Read in the first line and discard it.

  # Read in the rest of the code, and split it by lines.
 # Map the following codeblock over the array.
  # Split the strings by whitespace. We now have an instruction
    # as a pair of numerical Strings
    # Change them to integers. We now have each instruction as
      # an array [a b]
    # Sort into ascending order
   # Increment the larger by 1
    # Change them into ranges, n-> [0 1 2 .... n-1]
    # Break out of one array level
    # Take the symmetric difference of the two ranges.
   # Fold symmetric difference over all the instruction sets
     # Count the number of lit bulbs.
