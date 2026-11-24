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
# package org.allbinary.media.graphics.geography.map.event

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/EventListenerInterface"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Event

module GeographicMapCellPositionEventListenerInterface
    include ::Org::Allbinary::Logic::Util::Event::EventListenerInterface
    

    # throws Exception
    def onGeographicMapCellPositionEvent(geographicMapCellPositionEvent)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :onGeographicMapCellPositionEvent, 1
    

    # throws Exception
    def onRemoveGeographicMapCellPositionEvent(geographicMapCellPositionEvent)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :onRemoveGeographicMapCellPositionEvent, 1
end

autoload :GeographicMapCellPositionEvent, "org/allbinary/media/graphics/geography/map/event/GeographicMapCellPositionEvent" unless const_defined?(:GeographicMapCellPositionEvent, false)

end; end; end; end; end; end; end

