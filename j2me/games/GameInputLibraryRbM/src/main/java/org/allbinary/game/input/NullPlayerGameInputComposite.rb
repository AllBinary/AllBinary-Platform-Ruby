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

require "java/lang/JavaOverload"
require "org/allbinary/game/input/PlayerGameInputCompositeInterface"

module ::Org; module Allbinary; module Game; module Input

class NullPlayerGameInputComposite
    include PlayerGameInputCompositeInterface
    

    def getName()
        return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
    end
    java_overload :getName, 0
    

    # throws Exception
    def processInput(layerManager)
    end
    java_overload :processInput, 1
    

    def initInputProcessors()
    end
    java_overload :initInputProcessors, 0
    

    def getPlayerGameInput()
        return NoPlayerGameInput.getInstance()
    end
    java_overload :getPlayerGameInput, 0

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

module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
autoload :NoPlayerGameInput, "org/allbinary/game/input/NoPlayerGameInput" unless const_defined?(:NoPlayerGameInput, false)
autoload :PlayerGameInput, "org/allbinary/game/input/PlayerGameInput" unless const_defined?(:PlayerGameInput, false)

begin
    NullPlayerGameInputComposite.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

