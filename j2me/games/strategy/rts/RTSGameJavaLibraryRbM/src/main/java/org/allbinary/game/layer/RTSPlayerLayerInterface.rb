# 
# AllBinary Open License Version 1 
# Copyright (c) 2003 AllBinary 
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
require "org/allbinary/game/ag/layer/hud/basic/notification/GameNotificationHudCompositeInterface"
require "org/allbinary/game/input/BuildMenuCompositeInterface"
require "org/allbinary/game/combat/destroy/event/DestroyedEventListenerInterface"
require "org/allbinary/game/input/PlayerGameInputCompositeInterface"
require "org/allbinary/game/tick/TickableInterface"
require "org/allbinary/game/layer/PathFindingLayerInterface"

module ::Org; module Allbinary; module Game; module Layer

module RTSPlayerLayerInterface
    include ::Org::Allbinary::Game::Ag::Layer::Hud::Basic::Notification::GameNotificationHudCompositeInterface
    include ::Org::Allbinary::Game::Input::BuildMenuCompositeInterface
    include ::Org::Allbinary::Game::Input::PlayerGameInputCompositeInterface
    include ::Org::Allbinary::Game::Combat::Destroy::Event::DestroyedEventListenerInterface
    include ::Org::Allbinary::Game::Tick::TickableInterface
    include PathFindingLayerInterface
    

    def getCapital()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getCapital, 0
    

    def getRTSFormInput()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getRTSFormInput, 0
    

    def add(sound)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :add, 1
    

    def getPlayerOwnedRTSLayers()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getPlayerOwnedRTSLayers, 0
    

    def implmentsArtificialIntelligenceCompositeInterface()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :implmentsArtificialIntelligenceCompositeInterface, 0
end

module ::Org; module Allbinary; module Game; module Input; module Form; autoload :RTSFormInput, "org/allbinary/game/input/form/RTSFormInput" unless const_defined?(:RTSFormInput, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Capital; autoload :Capital, "org/allbinary/game/layer/capital/Capital" unless const_defined?(:Capital, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :Sound, "org/allbinary/media/audio/Sound" unless const_defined?(:Sound, false); end; end; end; end
autoload :PlayerOwnedRTSLayers, "org/allbinary/game/layer/PlayerOwnedRTSLayers" unless const_defined?(:PlayerOwnedRTSLayers, false)

end; end; end; end

