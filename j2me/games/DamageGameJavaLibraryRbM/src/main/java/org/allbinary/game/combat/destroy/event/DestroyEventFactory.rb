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
# package org.allbinary.game.combat.destroy.event

require "org/allbinary/logic/util/event/AllBinaryEventObjectFactoryInterface"

class DestroyEventFactory
    include AllBinaryEventObjectFactoryInterface
    attr_accessor :combatGameCanvas

    def initialize_fields
        @combatGameCanvas = nil
    end
    

    def initialize(combatGameCanvas)
        initialize_fields
        @combatGameCanvas = combatGameCanvas
    end
    

    def getInstance()
        return DestroyedEvent.new(@combatGameCanvas)
    end
end

require "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/game/combat/destroy/event/DestroyedEvent"

