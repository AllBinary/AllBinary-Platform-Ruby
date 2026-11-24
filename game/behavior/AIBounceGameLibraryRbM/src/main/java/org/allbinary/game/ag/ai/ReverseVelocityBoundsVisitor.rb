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
require "org/allbinary/bounds/BoundsVisitorInterface"

module ::Org; module Allbinary; module Game; module Ag; module Ai

class ReverseVelocityBoundsVisitor
    include ::Org::Allbinary::Bounds::BoundsVisitorInterface
    attr_accessor :logUtil, :velocityInterface, :layerInterface

    def jfields_org_allbinary_game_ag_ai_ReverseVelocityBoundsVisitor
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @velocityInterface = nil unless instance_variable_defined?(:@velocityInterface)
        @layerInterface = nil unless instance_variable_defined?(:@layerInterface)
    end
    

    def initialize(layerInterface)
        jfields_org_allbinary_game_ag_ai_ReverseVelocityBoundsVisitor
        @layerInterface = layerInterface
        velocityInterfaceCompositeInterface = layerInterface
        @velocityInterface = velocityInterfaceCompositeInterface.getVelocityProperties()
    end
    

    def getX()
        return @layerInterface.getXP()
    end
    java_overload :getX, 0
    

    def getY()
        return @layerInterface.getYP()
    end
    java_overload :getY, 0
    

    def minX()
        if @velocityInterface.getVelocityXBasicDecimalP().getUnscaled() < 0
            @velocityInterface.getVelocityXBasicDecimalP().multiplyint(-1)
        end
    end
    java_overload :minX, 0
    

    def maxX()
        if @velocityInterface.getVelocityXBasicDecimalP().getUnscaled() > 0
            @velocityInterface.getVelocityXBasicDecimalP().multiplyint(-1)
        end
    end
    java_overload :maxX, 0
    

    def minY()
        if @velocityInterface.getVelocityYBasicDecimalP().getUnscaled() < 0
            @velocityInterface.getVelocityYBasicDecimalP().multiplyint(-1)
        end
    end
    java_overload :minY, 0
    

    def maxY()
        if @velocityInterface.getVelocityYBasicDecimalP().getUnscaled() > 0
            @velocityInterface.getVelocityYBasicDecimalP().multiplyint(-1)
        end
    end
    java_overload :maxY, 0
end

module ::Org; module Allbinary; module Game; module Physics; module Velocity; autoload :VelocityInterface, "org/allbinary/game/physics/velocity/VelocityInterface" unless const_defined?(:VelocityInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Physics; module Velocity; autoload :VelocityInterfaceCompositeInterface, "org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface" unless const_defined?(:VelocityInterfaceCompositeInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :LayerInterface, "org/allbinary/layer/LayerInterface" unless const_defined?(:LayerInterface, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end

end; end; end; end; end

