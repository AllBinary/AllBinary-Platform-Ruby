# 
# AllBinary Open License Version 1 
# Copyright (c) 2002 AllBinary 
#  
# By agreeing to this license you and any business entity you represent are 
# legally bound to the AllBinary Open License Version 1 legal agreement. 
#  
# You may obtain the AllBinary Open License Version 1 legal agreement from 
# AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
#  
# Created By: Travis Berthelot 
#   
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.layer.capital


module ::Org; module Allbinary; module Game; module Layer; module Capital

class Capital
    attr_accessor :value

    def jfields_org_allbinary_game_layer_capital_Capital
        @value = 0 unless instance_variable_defined?(:@value)
    end
    

    def initialize()
        jfields_org_allbinary_game_layer_capital_Capital
    end
    

    def getTotalMoney()
        return @value
    end
    

    def removeMoney(points)
        @value -= points
    end
    

    def addMoney(points)
        @value += points
    end
end

end; end; end; end; end

