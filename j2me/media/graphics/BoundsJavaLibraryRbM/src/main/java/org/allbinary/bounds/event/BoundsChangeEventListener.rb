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
# package org.allbinary.bounds.event

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/EventListenerInterface"

module ::Org; module Allbinary; module Bounds; module Event

module BoundsChangeEventListener
    include ::Org::Allbinary::Logic::Util::Event::EventListenerInterface
    

    def onBoundsChangeEvent(boundsChangeEvent)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :onBoundsChangeEvent, 1
end

autoload :BoundsChangeEvent, "org/allbinary/bounds/event/BoundsChangeEvent" unless const_defined?(:BoundsChangeEvent, false)

end; end; end; end

