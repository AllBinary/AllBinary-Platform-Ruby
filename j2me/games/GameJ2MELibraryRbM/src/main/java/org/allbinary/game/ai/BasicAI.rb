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
# package org.allbinary.game.ai

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/ai/ArtificialIntelligence"
require "org/allbinary/game/input/GameKeyEventSourceInterface"

module ::Org; module Allbinary; module Game; module Ai

class BasicAI < ::Org::Allbinary::Ai::ArtificialIntelligence
    include ::Org::Allbinary::Game::Input::GameKeyEventSourceInterface
    attr_accessor :logUtil, :commonStrings, :gameKeyEventFactory, :ownerLayerInterface, :gameInput, :lastKey

    def jfields_org_allbinary_game_ai_BasicAI
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @gameKeyEventFactory = ::Org::Allbinary::Game::Input::Event::GameKeyEventFactory.getInstance()
        @ownerLayerInterface = nil unless instance_variable_defined?(:@ownerLayerInterface)
        @gameInput = nil unless instance_variable_defined?(:@gameInput)
        @lastKey = -1
    end
    

    def initialize(ownerLayerInterface, gameInput)
        super()
        jfields_org_allbinary_game_ai_BasicAI
        @ownerLayerInterface = ownerLayerInterface
        @gameInput = gameInput
    end
    

    # throws Exception
    def processAI(allBinaryLayerManager)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    java_overload :processAI, 1
    

    # throws Exception
    def processKeyAI(key)
        if key != -1
            @gameInput.add(@gameKeyEventFactory.getInstanceForKey(self, key))
        end
    end
    java_overload :processKeyAI, 1
    

    def setLastKey(lastKey)
        @lastKey = lastKey
    end
    java_overload :setLastKey, 1
    

    def getLastKey()
        return @lastKey
    end
    java_overload :getLastKey, 0
    

    def getOwnerLayerInterface()
        return @ownerLayerInterface
    end
    java_overload :getOwnerLayerInterface, 0
    

    def getGameInput()
        return @gameInput
    end
    java_overload :getGameInput, 0
    

    def getName()
        return self.class.java_name
    end
    java_overload :getName, 0
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().NEW_LINE)
        stringBuffer.append(self.getName())
        stringBuffer.append(" LastKey: ")
        stringBuffer.append(::Org::Allbinary::Game::Displayable::Canvas::CanvasUtil.getKeyName(self.getLastKey()))
        return stringBuffer.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
    

    def getSourceId()
        return 1
    end
    java_overload :getSourceId, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:AI_VISITOR, ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(2))
            const_set(:ID, ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(1))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasicAI"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:AI_VISITOR, :ID].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Displayable; module Canvas; autoload :CanvasUtil, "org/allbinary/game/displayable/canvas/CanvasUtil" unless const_defined?(:CanvasUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameInput, "org/allbinary/game/input/GameInput" unless const_defined?(:GameInput, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEventFactory, "org/allbinary/game/input/event/GameKeyEventFactory" unless const_defined?(:GameKeyEventFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

begin
    BasicAI.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

