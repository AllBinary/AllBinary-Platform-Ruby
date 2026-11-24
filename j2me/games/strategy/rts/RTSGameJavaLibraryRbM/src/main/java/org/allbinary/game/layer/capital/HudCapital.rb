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

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/capital/Capital"

module ::Org; module Allbinary; module Game; module Layer; module Capital

class HudCapital < Capital
    attr_accessor :capitalGraphic

    def jfields_org_allbinary_game_layer_capital_HudCapital
        @capitalGraphic = nil unless instance_variable_defined?(:@capitalGraphic)
    end
    

    def initialize(moneyGraphic)
        super()
        jfields_org_allbinary_game_layer_capital_HudCapital
        @capitalGraphic = moneyGraphic
    end
    

    def removeMoney(points)
        HudCapital.superclass.java_super_method(:removeMoney, 1).bind(self).call(points)
        @capitalGraphic.reduce(points)
    end
    java_overload :removeMoney, 1
    

    def getTotalMoney()
        return @capitalGraphic.get()
    end
    java_overload :getTotalMoney, 0
    

    def addMoney(points)
        HudCapital.superclass.java_super_method(:addMoney, 1).bind(self).call(points)
        @capitalGraphic.add(points)
    end
    java_overload :addMoney, 1
end

module ::Org; module Allbinary; module Game; module Ag; module Layer; module Hud; module Basic; autoload :NumberStringHud, "org/allbinary/game/ag/layer/hud/basic/NumberStringHud" unless const_defined?(:NumberStringHud, false); end; end; end; end; end; end; end

end; end; end; end; end

