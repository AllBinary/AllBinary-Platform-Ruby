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
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.layer.capital.event

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/AllBinaryEventObject"

module ::Org; module Allbinary; module Game; module Layer; module Capital; module Event

class CapitalEvent < ::Org::Allbinary::Logic::Util::Event::AllBinaryEventObject
    attr_accessor :value

    def jfields_org_allbinary_game_layer_capital_event_CapitalEvent
        @value = 0 unless instance_variable_defined?(:@value)
    end
    

    def initialize(anyType)
        super(anyType)
        jfields_org_allbinary_game_layer_capital_event_CapitalEvent
    end
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("CapitalEvent: Value: \n")
        stringBuffer.appendint(self.getValue())
        return stringBuffer.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
    

    def getValue()
        return @value
    end
    java_overload :getValue, 0
    

    def setValue(value)
        @value = value
    end
    java_overload :setValue, 1
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end

end; end; end; end; end; end

