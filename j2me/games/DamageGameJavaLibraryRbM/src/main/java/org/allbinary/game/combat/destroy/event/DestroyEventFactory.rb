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

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/AllBinaryEventObjectFactoryInterface"

module ::Org; module Allbinary; module Game; module Combat; module Destroy; module Event

class DestroyEventFactory
    include ::Org::Allbinary::Logic::Util::Event::AllBinaryEventObjectFactoryInterface
    attr_accessor :combatGameCanvas

    def jfields_org_allbinary_game_combat_destroy_event_DestroyEventFactory
        @combatGameCanvas = nil unless instance_variable_defined?(:@combatGameCanvas)
    end
    

    def initialize(combatGameCanvas)
        jfields_org_allbinary_game_combat_destroy_event_DestroyEventFactory
        @combatGameCanvas = combatGameCanvas
    end
    

    def getInstance()
        return DestroyedEvent.new(@combatGameCanvas)
    end
    java_overload :getInstance, 0
end

module ::Org; module Allbinary; module Game; module Displayable; module Canvas; autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas" unless const_defined?(:AllBinaryGameCanvas, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
autoload :DestroyedEvent, "org/allbinary/game/combat/destroy/event/DestroyedEvent" unless const_defined?(:DestroyedEvent, false)

end; end; end; end; end; end

