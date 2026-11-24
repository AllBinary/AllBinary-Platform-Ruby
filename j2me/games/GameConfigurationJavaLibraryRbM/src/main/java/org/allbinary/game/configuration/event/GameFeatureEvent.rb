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
# package org.allbinary.game.configuration.event

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/AllBinaryEventObject"

module ::Org; module Allbinary; module Game; module Configuration; module Event

class GameFeatureEvent < ::Org::Allbinary::Logic::Util::Event::AllBinaryEventObject
    attr_accessor :whatChanged

    def jfields_org_allbinary_game_configuration_event_GameFeatureEvent
        @whatChanged = nil unless instance_variable_defined?(:@whatChanged)
    end
    

    def initialize(anyType, whatChanged)
        super(anyType)
        jfields_org_allbinary_game_configuration_event_GameFeatureEvent
        @whatChanged = whatChanged
    end
    

    def getWhatChanged()
        return @whatChanged
    end
    java_overload :getWhatChanged, 0
    

    def getGameOption()
        return self.getSource()
    end
    java_overload :getGameOption, 0
end

end; end; end; end; end

