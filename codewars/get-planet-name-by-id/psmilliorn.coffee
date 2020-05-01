#Author psmilliorn
#This doesn't work; Fix it!
getPlanetName = (id) ->
  name = ''
  switch(id)
    when 1 then return name = 'Mercury'
    when 2 then return name = 'Venus'
    when 3 then return name = 'Earth'
    when 4 then return name = 'Mars'
    when 5 then return name = 'Jupiter'
    when 6 then return name = 'Saturn'
    when 7 then return name = 'Uranus'
    when 8 then return name = 'Neptune'
  
  #return name