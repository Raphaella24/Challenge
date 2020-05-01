#Author SynLocker
defmodule Kata do

  @planetNames ["Mercury","Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]

  def getPlanetName(id) when id < 0 or id > 8, do: "no such planet"

  def getPlanetName(id) do
    Enum.at(@planetNames, id-1)
  end
  

end