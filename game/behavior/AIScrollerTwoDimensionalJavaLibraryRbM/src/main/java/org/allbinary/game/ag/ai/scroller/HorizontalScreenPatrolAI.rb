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
require "org/allbinary/game/ai/BasicAI"

module ::Org; module Allbinary; module Game; module Ag; module Ai; module Scroller

class HorizontalScreenPatrolAI < ::Org::Allbinary::Game::Ai::BasicAI
    attr_accessor :keyDirection, :displayInfoSingleton, :firingX, :firedIndex, :MAX_FIRE, :timeDelayHelper, :secondaryPlayerQueue, :sound

    def jfields_org_allbinary_game_ag_ai_scroller_HorizontalScreenPatrolAI
        @keyDirection = ::Javax::Microedition::Lcdui::Canvas::LEFT
        @displayInfoSingleton = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
        @firingX = @displayInfoSingleton.getLastHalfWidth()
        @firedIndex = 0
        @MAX_FIRE = 28
        @timeDelayHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(240)
        @secondaryPlayerQueue = ::Org::Allbinary::Media::Audio::SecondaryPlayerQueueFactory.getInstance()
        @sound = nil unless instance_variable_defined?(:@sound)
    end
    

    def initialize(hashtable, ownerLayerInterface, gameInput)
        super(ownerLayerInterface, gameInput)
        jfields_org_allbinary_game_ag_ai_scroller_HorizontalScreenPatrolAI
        @sound = hashtable.get(HorizontalScreenPatrolAI::SOUND)
        if @sound == nil
            raise StandardError.new("No Sound Provided!!")
        end
    end
    

    # throws Exception
    def processAI(allBinaryLayerManager)
        HorizontalScreenPatrolAI.superclass.java_super_method(:processKeyAI, 1).bind(self).call(@keyDirection)
        if @timeDelayHelper.isTimeTNT()
            layerInterface = self.getOwnerLayerInterface()
            currentOwnerLayerX = layerInterface.getXP()
            if currentOwnerLayerX < -layerInterface.getWidth()
                y = ::Org::Allbinary::Game::Rand::MyRandomFactory.getInstance().getAbsoluteNextIntAllowZero(50)
                layerInterface.setPosition(@displayInfoSingleton.getLastWidth() + layerInterface.getWidth() + 50, y, layerInterface.getZP())
                @firedIndex = 0
                @firingX = @displayInfoSingleton.getLastHalfWidth() + ::Org::Allbinary::Game::Rand::MyRandomFactory.getInstance().getNextInt(@displayInfoSingleton.getLastHalfWidth())
                @secondaryPlayerQueue.add(@sound)
            end
            if currentOwnerLayerX < @firingX && currentOwnerLayerX > -layerInterface.getWidth()
                HorizontalScreenPatrolAI.superclass.java_super_method(:processKeyAI, 1).bind(self).call(::Javax::Microedition::Lcdui::Canvas::KEY_NUM1)
                gameLayerManager = allBinaryLayerManager
                _FIRE = (gameLayerManager.getGameInfo().getCurrentLevel() + 12) >> 2
                if _FIRE > @MAX_FIRE
                    _FIRE = @MAX_FIRE
                end
                if @firedIndex > _FIRE
                    @firedIndex = 0
                    @firingX = (-2147483648)
                end
                @firedIndex += 1
            end
        end
    end
    java_overload :processAI, 1
    

    def nextDirection()
    end
    java_overload :nextDirection, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SOUND, ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(433))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "HorizontalScreenPatrolAI"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SOUND].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameInput, "org/allbinary/game/input/GameInput" unless const_defined?(:GameInput, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Rand; autoload :MyRandomFactory, "org/allbinary/game/rand/MyRandomFactory" unless const_defined?(:MyRandomFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :PlayerQueue, "org/allbinary/media/audio/PlayerQueue" unless const_defined?(:PlayerQueue, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :SecondaryPlayerQueueFactory, "org/allbinary/media/audio/SecondaryPlayerQueueFactory" unless const_defined?(:SecondaryPlayerQueueFactory, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :Sound, "org/allbinary/media/audio/Sound" unless const_defined?(:Sound, false); end; end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end

begin
    HorizontalScreenPatrolAI.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

