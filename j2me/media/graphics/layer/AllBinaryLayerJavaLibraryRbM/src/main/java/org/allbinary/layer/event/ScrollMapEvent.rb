#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
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
# package org.allbinary.layer.event

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/AllBinaryEventObject"

module ::Org; module Allbinary; module Layer; module Event

class ScrollMapEvent < ::Org::Allbinary::Logic::Util::Event::AllBinaryEventObject
    attr_accessor :dx, :dy

    def jfields_org_allbinary_layer_event_ScrollMapEvent
        @dx = 0 unless instance_variable_defined?(:@dx)
        @dy = 0 unless instance_variable_defined?(:@dy)
    end
    

    def initialize(anyType)
        super(anyType)
        jfields_org_allbinary_layer_event_ScrollMapEvent
    end
    

    def setDx(dx)
        @dx = dx
    end
    java_overload :setDx, 1
    

    def getDx()
        return @dx
    end
    java_overload :getDx, 0
    

    def setDy(dy)
        @dy = dy
    end
    java_overload :setDy, 1
    

    def getDy()
        return @dy
    end
    java_overload :getDy, 0
    

    def setDxDy(dx, dy)
        @dx = dx
        @dy = dy
    end
    java_overload :setDxDy, 2
end

end; end; end; end

