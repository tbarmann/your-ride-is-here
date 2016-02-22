require 'minitest/autorun'

def ride (group,comet)
  comet_product = group_product = 1
  
  group.upcase.each_byte do |i|
    group_product *= (i - ("A".ord - 1))
  end
  
 comet.upcase.each_byte do |i|
    comet_product *= (i - ("A".ord - 1) )
  end
  
  if (comet_product % 47) == (group_product % 47)
    "GO"
  else
    "STAY"
  end
    
    
end


class YourRideIsHereTest < MiniTest::Unit::TestCase
  def test_it
    [
      ["COMETQ","HVNGAT","GO"],
      ["STARAB","USACO","STAY"],
      ["EARTH","LEFTB","GO"],
      ["PULSAR","VENUS","STAY"],
      ["KANSAS","UTAH","STAY"],
      ["APPLE","URSA","GO"],
      ["MSFT","MARS","STAY"],
      ["PLUTO","BKHOLE","STAY"],
      ["COWSBC","RIGHT","GO"],
      ["DRKMTR","SNIKER","STAY"]
    ].sample(10).each{
      |tst| assert_equal(ride(tst[0],tst[1]), tst[2], "#{tst[0]} => #{tst[1]}")
    }
  end
end
