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
# package org.allbinary.game.ag.layer.pickup.life

require "java/lang/JavaOverload"
require "org/allbinary/game/ag/life/LifeVisitorInterface"
require "org/allbinary/layer/AllBinaryLayer"

module ::Org; module Allbinary; module Game; module Ag; module Layer; module Pickup; module Life

class LifeLayer < ::Org::Allbinary::Layer::AllBinaryLayer
    include ::Org::Allbinary::Game::Ag::Life::LifeVisitorInterface
    

    def initialize()
        super(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Org::Allbinary::Graphics::Rectangle.new(::Org::Allbinary::Graphics::PointFactory.getInstance().ZERO_ZERO, 0, 0), ::Org::Allbinary::View::ViewPosition.getInstanceD())
    end
    

    def paint(graphics)
    end
    java_overload :paint, 1
    

    def visit(lifeInterface)
        lifeInterface.add((((1).to_i + 32768) % 65536 - 32768))
    end
    java_overload :visit, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Game; module Ag; module Life; autoload :Life, "org/allbinary/game/ag/life/Life" unless const_defined?(:Life, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module View; autoload :ViewPosition, "org/allbinary/view/ViewPosition" unless const_defined?(:ViewPosition, false); end; end; end

end; end; end; end; end; end; end

