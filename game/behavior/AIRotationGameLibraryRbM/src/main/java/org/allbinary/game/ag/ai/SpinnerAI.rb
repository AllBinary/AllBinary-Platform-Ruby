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
# package org.allbinary.game.ag.ai

require "java/lang/JavaOverload"
require "org/allbinary/game/ai/BasicAI"

module ::Org; module Allbinary; module Game; module Ag; module Ai

class SpinnerAI < ::Org::Allbinary::Game::Ai::BasicAI
    attr_accessor :isEven, :direction

    def jfields_org_allbinary_game_ag_ai_SpinnerAI
        @isEven = false unless instance_variable_defined?(:@isEven)
        @direction = nil unless instance_variable_defined?(:@direction)
    end
    

    def initialize(direction, ownerLayerInterface, gameInput)
        super(ownerLayerInterface, gameInput)
        jfields_org_allbinary_game_ag_ai_SpinnerAI
        @direction = direction
    end
    

    # throws Exception
    def processAI(allBinaryLayerManager)
        if @isEven
            SpinnerAI.superclass.java_super_method(:processKeyAI, 1).bind(self).call(@direction[0])
            @isEven = false
        else
            SpinnerAI.superclass.java_super_method(:processKeyAI, 1).bind(self).call(::Javax::Microedition::Lcdui::Canvas::KEY_NUM1)
            @isEven = true
        end
    end
    java_overload :processAI, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameInput, "org/allbinary/game/input/GameInput" unless const_defined?(:GameInput, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end

end; end; end; end; end

