# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.game.input

require "org/allbinary/game/input/PlayerGameInputCompositeInterface"

class NullPlayerGameInputComposite
    include PlayerGameInputCompositeInterface
    

    def getName()
        return StringUtil.getInstance().EMPTY_STRING
    end
    

    # throws Exception
    def processInput(layerManager)
    end
    

    def initInputProcessors()
    end
    

    def getPlayerGameInput()
        return NoPlayerGameInput.getInstance()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_PLAYER_GAME_INPUT_COMPOSITE, NullPlayerGameInputComposite.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NullPlayerGameInputComposite"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_PLAYER_GAME_INPUT_COMPOSITE].include?(name)
        end
        super
    end
end

autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :NoPlayerGameInput, "org/allbinary/game/input/NoPlayerGameInput"
autoload :PlayerGameInput, "org/allbinary/game/input/PlayerGameInput"

begin
    NullPlayerGameInputComposite.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

