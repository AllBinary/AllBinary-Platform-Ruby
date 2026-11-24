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
# package org.allbinary.game.ag.layer.pickup.health

require "java/lang/JavaOverload"
require "org/allbinary/game/health/HealthVisitorInterface"
require "org/allbinary/layer/AllBinaryLayer"

module ::Org; module Allbinary; module Game; module Ag; module Layer; module Pickup; module Health

class HealLayer < ::Org::Allbinary::Layer::AllBinaryLayer
    include ::Org::Allbinary::Game::Health::HealthVisitorInterface
    

    def initialize()
        super(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Org::Allbinary::Graphics::Rectangle.new(::Org::Allbinary::Graphics::PointFactory.getInstance().ZERO_ZERO, 0, 0), ::Org::Allbinary::View::ViewPosition.getInstanceD())
    end
    

    def paint(graphics)
    end
    java_overload :paint, 1
    

    def visit(healthInterface)
        if healthInterface.isAlive()
            healthInterface.healMax()
        else
            @logUtil.putF("Heal attempt on dead: Does not currently occur", self, "visit")
        end
    end
    java_overload :visit, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Game; module Health; autoload :HealthInterface, "org/allbinary/game/health/HealthInterface" unless const_defined?(:HealthInterface, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module View; autoload :ViewPosition, "org/allbinary/view/ViewPosition" unless const_defined?(:ViewPosition, false); end; end; end

end; end; end; end; end; end; end

