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
# package org.allbinary.game.ag.ai.tactical

require "java/lang/JavaOverload"
require "org/allbinary/game/ai/BasicAI"

module ::Org; module Allbinary; module Game; module Ag; module Ai; module Tactical

class LurchAI < ::Org::Allbinary::Game::Ai::BasicAI
    attr_accessor :currentRelativeAngle, :currentSpeed

    def jfields_org_allbinary_game_ag_ai_tactical_LurchAI
        @currentRelativeAngle = 0
        @currentSpeed = 0 unless instance_variable_defined?(:@currentSpeed)
    end
    

    def initialize(ownerLayerInterface, gameInput)
        super(ownerLayerInterface, gameInput)
        jfields_org_allbinary_game_ag_ai_tactical_LurchAI
    end
    

    # throws Exception
    def processAI(allBinaryLayerManager)
        if @currentSpeed == -1
            @currentSpeed = 5
        else
            @currentSpeed = -1
        end
        ownerLayerInterface = self.getOwnerLayerInterface()
        x = ownerLayerInterface.getXP()
        if ownerLayerInterface.getXP() - @currentSpeed <= 0
            self.reverse()
            self.drop()
        end
        if ownerLayerInterface.getX2() + @currentSpeed > ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance().getLastWidth()
            self.reverse()
            self.accelerate()
            self.drop()
        end
        if @currentRelativeAngle == 0
            x += @currentSpeed
        elsif @currentRelativeAngle == 180
            x -= @currentSpeed
        end
        ownerLayerInterface.setPosition(x, ownerLayerInterface.getYP(), ownerLayerInterface.getZP())
        if @currentRelativeAngle == 0
            LurchAI.superclass.java_super_method(:processKeyAI, 1).bind(self).call(::Javax::Microedition::Lcdui::Canvas::KEY_NUM0)
        elsif @currentRelativeAngle == 180
            LurchAI.superclass.java_super_method(:processKeyAI, 1).bind(self).call(::Javax::Microedition::Lcdui::Canvas::KEY_POUND)
        end
    end
    java_overload :processAI, 1
    

    def reverse()
        if @currentRelativeAngle == 180
            @currentRelativeAngle = 0
        elsif @currentRelativeAngle == 0
            @currentRelativeAngle = 180
        end
    end
    java_overload :reverse, 0
    

    def accelerate()
        if @currentSpeed < 20
            @currentSpeed += 1
        end
    end
    java_overload :accelerate, 0
    

    def drop()
        ownerLayerInterface = self.getOwnerLayerInterface()
        y = ownerLayerInterface.getYP()
        if ownerLayerInterface.getY2() + ownerLayerInterface.getHeight() > ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance().getLastHeight()
            y = 0
        else
            y += ownerLayerInterface.getHeight() + 1
        end
        ownerLayerInterface.setPosition(ownerLayerInterface.getXP(), y, ownerLayerInterface.getZP())
    end
    java_overload :drop, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameInput, "org/allbinary/game/input/GameInput" unless const_defined?(:GameInput, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end

end; end; end; end; end; end

