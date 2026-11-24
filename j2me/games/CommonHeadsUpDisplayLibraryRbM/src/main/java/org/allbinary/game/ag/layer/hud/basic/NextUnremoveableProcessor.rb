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
# package org.allbinary.game.ag.layer.hud.basic

require "java/lang/JavaOverload"
require "org/allbinary/canvas/Processor"

module ::Org; module Allbinary; module Game; module Ag; module Layer; module Hud; module Basic

class NextUnremoveableProcessor < ::Org::Allbinary::Canvas::Processor
    attr_accessor :updateMeasurementProcessor

    def jfields_org_allbinary_game_ag_layer_hud_basic_NextUnremoveableProcessor
        @updateMeasurementProcessor = nil unless instance_variable_defined?(:@updateMeasurementProcessor)
    end
    

    def initialize(updateMeasurementProcessor)
        super()
        jfields_org_allbinary_game_ag_layer_hud_basic_NextUnremoveableProcessor
        @updateMeasurementProcessor = updateMeasurementProcessor
    end
    

    # throws Exception
    def process()
        @updateMeasurementProcessor.setNextUnremoveableProcess()
    end
    java_overload :process, 0
end

autoload :PlayerGameNotificationHud, "org/allbinary/game/ag/layer/hud/basic/PlayerGameNotificationHud" unless const_defined?(:PlayerGameNotificationHud, false)

end; end; end; end; end; end; end

