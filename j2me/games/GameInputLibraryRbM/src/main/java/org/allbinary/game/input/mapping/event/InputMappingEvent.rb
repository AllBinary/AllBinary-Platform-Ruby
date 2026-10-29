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

require "org/allbinary/logic/util/event/AllBinaryEventObject"

class InputMappingEvent < AllBinaryEventObject
    attr_accessor :inputToGameKeyMapping

    def initialize_fields
        @inputToGameKeyMapping = InputToGameKeyMapping.getNullInstance()
    end
    

    def initialize(anyType)
        super(anyType)
        initialize_fields
    end
    

    def setInputToGameKeyMapping(inputToGameKeyMapping)
        @inputToGameKeyMapping = inputToGameKeyMapping
    end
    

    def getInputToGameKeyMapping()
        return @inputToGameKeyMapping
    end
end

require "org/allbinary/game/input/mapping/InputToGameKeyMapping"

