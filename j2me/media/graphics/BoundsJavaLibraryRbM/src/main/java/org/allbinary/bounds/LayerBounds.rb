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
# package org.allbinary.bounds

require "org/allbinary/bounds/event/BoundsChangeEventListener"

class LayerBounds
    include BoundsChangeEventListener
    attr_accessor :logUtil, :rectangle

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @rectangle = nil
    end
    

    def initialize(rectangle)
        initialize_fields
        @rectangle = rectangle
    end
    

    def getRectangleP()
        return @rectangle
    end
    

    def visit(boundsVisitorInterface)
    end
    

    def onEvent(eventObject)
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    

    def onBoundsChangeEvent(boundsChangeEvent)
        @rectangle = boundsChangeEvent.getRectangle()
    end
end

autoload :BoundsChangeEvent, "org/allbinary/bounds/event/BoundsChangeEvent"
autoload :Rectangle, "org/allbinary/graphics/Rectangle"
autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject"
autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings"
autoload :BoundsVisitorInterface, "org/allbinary/bounds/BoundsVisitorInterface"

