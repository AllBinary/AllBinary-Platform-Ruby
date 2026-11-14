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

require "org/allbinary/logic/util/event/EventListenerInterface"

module LayerManagerEventListenerInterface
    include EventListenerInterface
    

    # throws Exception
    def onCreateLayerManagerEvent(layerManagerEvent)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    # throws Exception
    def onDeleteLayerManagerEvent(layerManagerEvent)
        return super if defined?(super)
        raise NotImplementedError
    end
end

autoload :LayerManagerEvent, "org/allbinary/layer/event/LayerManagerEvent"

