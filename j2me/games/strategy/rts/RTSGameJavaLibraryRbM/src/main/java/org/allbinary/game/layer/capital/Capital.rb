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


class Capital
    attr_accessor :value

    def initialize_fields
        @value = 0
    end
    

    def initialize()
        initialize_fields
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

