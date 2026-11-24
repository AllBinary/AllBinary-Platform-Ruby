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
require "org/allbinary/layer/event/LayerManagerEventListenerInterface"

module ::Org; module Allbinary; module Layer; module Event

class LayerManagerEventListener
    include LayerManagerEventListenerInterface
    

    def onEvent(eventObject)
    end
    java_overload :onEvent, 1
    

    # throws Exception
    def onCreateLayerManagerEvent(layerManagerEvent)
    end
    java_overload :onCreateLayerManagerEvent, 1
    

    # throws Exception
    def onDeleteLayerManagerEvent(layerManagerEvent)
    end
    java_overload :onDeleteLayerManagerEvent, 1
end

module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
autoload :LayerManagerEvent, "org/allbinary/layer/event/LayerManagerEvent" unless const_defined?(:LayerManagerEvent, false)

end; end; end; end

