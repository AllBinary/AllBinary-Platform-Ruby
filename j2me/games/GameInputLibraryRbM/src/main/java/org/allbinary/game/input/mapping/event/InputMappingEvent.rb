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
# package org.allbinary.game.input.mapping.event

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/AllBinaryEventObject"

module ::Org; module Allbinary; module Game; module Input; module Mapping; module Event

class InputMappingEvent < ::Org::Allbinary::Logic::Util::Event::AllBinaryEventObject
    attr_accessor :inputToGameKeyMapping

    def jfields_org_allbinary_game_input_mapping_event_InputMappingEvent
        @inputToGameKeyMapping = ::Org::Allbinary::Game::Input::Mapping::InputToGameKeyMapping.getNullInstance()
    end
    

    def initialize(anyType)
        super(anyType)
        jfields_org_allbinary_game_input_mapping_event_InputMappingEvent
    end
    

    def setInputToGameKeyMapping(inputToGameKeyMapping)
        @inputToGameKeyMapping = inputToGameKeyMapping
    end
    java_overload :setInputToGameKeyMapping, 1
    

    def getInputToGameKeyMapping()
        return @inputToGameKeyMapping
    end
    java_overload :getInputToGameKeyMapping, 0
end

module ::Org; module Allbinary; module Game; module Input; module Mapping; autoload :InputToGameKeyMapping, "org/allbinary/game/input/mapping/InputToGameKeyMapping" unless const_defined?(:InputToGameKeyMapping, false); end; end; end; end; end

end; end; end; end; end; end

