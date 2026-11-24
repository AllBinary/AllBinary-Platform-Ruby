# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.game.layer

require "java/lang/JavaOverload"
require "org/allbinary/game/combat/destroy/DestroyableInterface"
require "org/allbinary/game/identification/GroupInterfaceCompositeInterface"
require "org/allbinary/game/input/GameKeyEventSourceInterface"
require "org/allbinary/game/layer/waypoint/WaypointLayerInterface"

module ::Org; module Allbinary; module Game; module Layer

module PathFindingLayerInterface
    include ::Org::Allbinary::Game::Layer::Waypoint::WaypointLayerInterface
    include ::Org::Allbinary::Game::Input::GameKeyEventSourceInterface
    include ::Org::Allbinary::Game::Identification::GroupInterfaceCompositeInterface
    include ::Org::Allbinary::Game::Combat::Destroy::DestroyableInterface
    

    # throws Exception
    def getEndGeographicMapCellPositionList()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getEndGeographicMapCellPositionList, 0
    

    def shouldHandleStartSameAsEnd()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :shouldHandleStartSameAsEnd, 0
    

    def getGeographicMapCellPositionArea()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getGeographicMapCellPositionArea, 0
    

    def getHudPaintable()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getHudPaintable, 0
    

    # throws Exception
    def handleCost(ownerLayer)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :handleCost, 1
    

    def getParentLayer()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getParentLayer, 0
    

    def getRTSLayer2LogHelper()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getRTSLayer2LogHelper, 0
    

    # throws Exception
    def setTarget(targetGameLayer)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setTarget, 1
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :GeographicMapCellPositionAreaBase, "org/allbinary/game/layer/GeographicMapCellPositionAreaBase" unless const_defined?(:GeographicMapCellPositionAreaBase, false)
autoload :RTSLayer2LogHelper, "org/allbinary/game/layer/RTSLayer2LogHelper" unless const_defined?(:RTSLayer2LogHelper, false)
autoload :SelectionHudPaintable, "org/allbinary/game/layer/SelectionHudPaintable" unless const_defined?(:SelectionHudPaintable, false)

end; end; end; end

