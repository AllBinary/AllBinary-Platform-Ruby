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

require "org/allbinary/game/layer/capital/Capital"

class HudCapital < Capital
    attr_accessor :capitalGraphic

    def initialize_fields
        @capitalGraphic = nil
    end
    

    def initialize(moneyGraphic)
        super()
        initialize_fields
        @capitalGraphic = moneyGraphic
    end
    

    def removeMoney(points)
        super(points)
        @capitalGraphic.reduce(points)
    end
    

    def getTotalMoney()
        return @capitalGraphic.get()
    end
    

    def addMoney(points)
        super(points)
        @capitalGraphic.add(points)
    end
end

require "org/allbinary/game/ag/layer/hud/basic/NumberStringHud"

