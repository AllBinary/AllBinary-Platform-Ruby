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
# package org.allbinary.game.ag.ai.scroller

require "java/lang/JavaOverload"
require "org/allbinary/game/ag/ai/scroller/PacePatrolAI"

module ::Org; module Allbinary; module Game; module Ag; module Ai; module Scroller

class TerrainPatrolAI < PacePatrolAI
    attr_accessor :terrainEventListener, :DOWN, :CLIFF

    def jfields_org_allbinary_game_ag_ai_scroller_TerrainPatrolAI
        @terrainEventListener = ::Org::Allbinary::Game::Terrain::TerrainEventListener.new()
        @DOWN = ::Org::Allbinary::MathPackage::AngleFactory.getInstance().DOWN
        @CLIFF = ::Org::Allbinary::Game::Terrain::BasicTerrainInfo.new(@DOWN)
    end
    

    def initialize(hashtable, ownerLayerInterface, gameInput)
        super(hashtable, ownerLayerInterface, gameInput)
        jfields_org_allbinary_game_ag_ai_scroller_TerrainPatrolAI
        ::Org::Allbinary::Game::Terrain::TerrainEventHandler.getInstance(ownerLayerInterface).addListener(@terrainEventListener)
        @terrainEventListener.onTerrainEvent(::Org::Allbinary::Game::Terrain::TerrainEventCircularStaticPool.getInstance().getNext(@CLIFF))
    end
    

    def update()
        TerrainPatrolAI.superclass.java_super_method(:update, 0).bind(self).call()
        self.changeDirectionIfCliffReached()
    end
    java_overload :update, 0
    

    def changeDirectionIfCliffReached()
        list = @terrainEventListener.getList()
        size = list.size()
        (0...size).each do |index|
            terrainEvent = list.removeAt(index)
            basicTerrainInfo = terrainEvent.getBasicTerrainInfo()
            angle = basicTerrainInfo.getAngle()
            if angle == @DOWN
                self.nextDirection()
                if !@isFollowLimitedByTerrain
                    @logUtil.putF("Following Limited", self, "onTerrainEvent")
                    @isFollowLimitedByTerrain = true
                end
            end
        end
    end
    java_overload :changeDirectionIfCliffReached, 0
end

module ::Org; module Allbinary; module Game; module Input; autoload :GameInput, "org/allbinary/game/input/GameInput" unless const_defined?(:GameInput, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Terrain; autoload :BasicTerrainInfo, "org/allbinary/game/terrain/BasicTerrainInfo" unless const_defined?(:BasicTerrainInfo, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Terrain; autoload :TerrainEvent, "org/allbinary/game/terrain/TerrainEvent" unless const_defined?(:TerrainEvent, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Terrain; autoload :TerrainEventCircularStaticPool, "org/allbinary/game/terrain/TerrainEventCircularStaticPool" unless const_defined?(:TerrainEventCircularStaticPool, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Terrain; autoload :TerrainEventHandler, "org/allbinary/game/terrain/TerrainEventHandler" unless const_defined?(:TerrainEventHandler, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Terrain; autoload :TerrainEventListener, "org/allbinary/game/terrain/TerrainEventListener" unless const_defined?(:TerrainEventListener, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :Angle, "org/allbinary/math/Angle" unless const_defined?(:Angle, false); end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleFactory, "org/allbinary/math/AngleFactory" unless const_defined?(:AngleFactory, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end

end; end; end; end; end; end

