# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.terrain

require "java/lang/JavaOverload"
require "org/allbinary/game/terrain/TerrainEventListenerInterface"

module ::Org; module Allbinary; module Game; module Terrain

class TerrainEventListener
    include TerrainEventListenerInterface
    attr_accessor :list

    def jfields_org_allbinary_game_terrain_TerrainEventListener
        @list = ::Org::Allbinary::Util::BasicArrayListD.new()
    end

    def initialize
        jfields_org_allbinary_game_terrain_TerrainEventListener
    end
    

    def onEvent(eventObject)
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    java_overload :onEvent, 1
    

    def onTerrainEvent(terrainEvent)
        @list.clear()
        @list.add(terrainEvent)
    end
    java_overload :onTerrainEvent, 1
    

    def getList()
        return @list
    end
    java_overload :getList, 0
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings" unless const_defined?(:EventStrings, false); end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :TerrainEvent, "org/allbinary/game/terrain/TerrainEvent" unless const_defined?(:TerrainEvent, false)

end; end; end; end

