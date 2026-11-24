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
# package org.allbinary.game.configuration.event

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/AllBinaryEventObject"

module ::Org; module Allbinary; module Game; module Configuration; module Event

class GameInitializedEvent < ::Org::Allbinary::Logic::Util::Event::AllBinaryEventObject
    attr_accessor :resourceLoadingLevel, :level

    def jfields_org_allbinary_game_configuration_event_GameInitializedEvent
        @resourceLoadingLevel = ::Org::Allbinary::Game::Resource::ResourceLoadingLevelFactory.getInstance().LEVEL
        @level = 0 unless instance_variable_defined?(:@level)
    end
    

    def initialize(anyType)
        super(anyType)
        jfields_org_allbinary_game_configuration_event_GameInitializedEvent
    end
    

    def setLevel(level)
        @level = level
        @resourceLoadingLevel = ::Org::Allbinary::Game::Resource::ResourceLoadingLevelFactory.getInstance().LEVEL
    end
    java_overload :setLevel, 1
    

    def getLevel()
        return @level
    end
    java_overload :getLevel, 0
    

    def setResourceLoadingLevel(resourceLoadingLevel)
        @resourceLoadingLevel = resourceLoadingLevel
        @level = @resourceLoadingLevel.getLevel()
    end
    java_overload :setResourceLoadingLevel, 1
    

    def getResourceLoadingLevel()
        return @resourceLoadingLevel
    end
    java_overload :getResourceLoadingLevel, 0
end

module ::Org; module Allbinary; module Game; module Resource; autoload :ResourceLoadingLevel, "org/allbinary/game/resource/ResourceLoadingLevel" unless const_defined?(:ResourceLoadingLevel, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Resource; autoload :ResourceLoadingLevelFactory, "org/allbinary/game/resource/ResourceLoadingLevelFactory" unless const_defined?(:ResourceLoadingLevelFactory, false); end; end; end; end

end; end; end; end; end

