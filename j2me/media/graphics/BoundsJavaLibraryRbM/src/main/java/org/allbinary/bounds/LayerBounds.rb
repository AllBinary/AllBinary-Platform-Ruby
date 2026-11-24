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

require "java/lang/JavaOverload"
require "org/allbinary/bounds/event/BoundsChangeEventListener"

module ::Org; module Allbinary; module Bounds

class LayerBounds
    include ::Org::Allbinary::Bounds::Event::BoundsChangeEventListener
    attr_accessor :logUtil, :rectangle

    def jfields_org_allbinary_bounds_LayerBounds
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @rectangle = nil unless instance_variable_defined?(:@rectangle)
    end
    

    def initialize(rectangle)
        jfields_org_allbinary_bounds_LayerBounds
        @rectangle = rectangle
    end
    

    def getRectangleP()
        return @rectangle
    end
    java_overload :getRectangleP, 0
    

    def visit(boundsVisitorInterface)
    end
    java_overload :visit, 1
    

    def onEvent(eventObject)
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    java_overload :onEvent, 1
    

    def onBoundsChangeEvent(boundsChangeEvent)
        @rectangle = boundsChangeEvent.getRectangle()
    end
    java_overload :onBoundsChangeEvent, 1
end

module ::Org; module Allbinary; module Bounds; module Event; autoload :BoundsChangeEvent, "org/allbinary/bounds/event/BoundsChangeEvent" unless const_defined?(:BoundsChangeEvent, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings" unless const_defined?(:EventStrings, false); end; end; end; end; end
autoload :BoundsVisitorInterface, "org/allbinary/bounds/BoundsVisitorInterface" unless const_defined?(:BoundsVisitorInterface, false)

end; end; end

