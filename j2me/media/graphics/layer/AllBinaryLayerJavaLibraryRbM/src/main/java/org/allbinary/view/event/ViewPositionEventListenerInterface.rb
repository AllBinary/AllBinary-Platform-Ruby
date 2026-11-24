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
# package org.allbinary.view.event

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/EventListenerInterface"

module ::Org; module Allbinary; module View; module Event

module ViewPositionEventListenerInterface
    include ::Org::Allbinary::Logic::Util::Event::EventListenerInterface
    

    # throws Exception
    def onChangeEvent(layerManagerEvent)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :onChangeEvent, 1
end

autoload :ViewPositionEvent, "org/allbinary/view/event/ViewPositionEvent" unless const_defined?(:ViewPositionEvent, false)

end; end; end; end

