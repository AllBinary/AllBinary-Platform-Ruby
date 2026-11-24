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
require "org/allbinary/logic/util/event/EventListenerInterface"

module ::Org; module Allbinary; module Layer; module Event

module LayerManagerEventListenerInterface
    include ::Org::Allbinary::Logic::Util::Event::EventListenerInterface
    

    # throws Exception
    def onCreateLayerManagerEvent(layerManagerEvent)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :onCreateLayerManagerEvent, 1
    

    # throws Exception
    def onDeleteLayerManagerEvent(layerManagerEvent)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :onDeleteLayerManagerEvent, 1
end

autoload :LayerManagerEvent, "org/allbinary/layer/event/LayerManagerEvent" unless const_defined?(:LayerManagerEvent, false)

end; end; end; end

