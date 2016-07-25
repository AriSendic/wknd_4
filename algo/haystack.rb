# Find the needle by writing one line of code. 
# As an example, if haystack = [:hay, :needle, :hay], you'd pull it out with:
# haystack[1]

haystack = {hay: [:hay, :hay, :hay, {hay: {hay: [:hay, {hay: [:hay, :hay, :needle]}, :hay, :hay, :hay]}}, :hay, :hay]}

p haystack.first[1][3].first[1].first[1][1].first[1].last

p haystack[:hay][3][:hay][:hay][1][:hay][2]