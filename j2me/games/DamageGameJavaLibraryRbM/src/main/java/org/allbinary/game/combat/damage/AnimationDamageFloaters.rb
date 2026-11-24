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
# package org.allbinary.game.combat.damage

require "java/lang/JavaOverload"
require "org/allbinary/game/combat/damage/DamageFloaters"

module ::Org; module Allbinary; module Game; module Combat; module Damage

class AnimationDamageFloaters < DamageFloaters
    attr_accessor :logUtil, :layerInterface, :animationInterfaceArray, :circularIndexUtil, :dx, :dy

    def jfields_org_allbinary_game_combat_damage_AnimationDamageFloaters
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @layerInterface = nil unless instance_variable_defined?(:@layerInterface)
        @animationInterfaceArray = nil unless instance_variable_defined?(:@animationInterfaceArray)
        @circularIndexUtil = nil unless instance_variable_defined?(:@circularIndexUtil)
        @dx = nil unless instance_variable_defined?(:@dx)
        @dy = nil unless instance_variable_defined?(:@dy)
    end
    

    def initialize(layerInterface, animationInterfaceArray, dx, dy)
        super()
        jfields_org_allbinary_game_combat_damage_AnimationDamageFloaters
        @animationInterfaceArray = animationInterfaceArray
        (@animationInterfaceArray.length - 1).step(0, -(1)) do |index|
            @animationInterfaceArray[index].setFrame(@animationInterfaceArray[index].getSize() - 1)
        end
        @layerInterface = layerInterface
        @circularIndexUtil = ::Org::Allbinary::Util::CircularIndexUtil.createInstance(@animationInterfaceArray.length)
        @dx = dx
        @dy = dy
    end
    

    def add(damage)
        i = @circularIndexUtil.getIndex()
        @animationInterfaceArray[i].setFrame(0)
        @circularIndexUtil.next_()
    end
    java_overload :add, 1
    

    def paint(graphics)
        begin
            viewPosition = @layerInterface.getViewPosition()
            x = viewPosition.getX()
            y = viewPosition.getY()
            (0...@animationInterfaceArray.length).each do |index|
                animationInterface = @animationInterfaceArray[index]
                if animationInterface.getFrame() < animationInterface.getAnimationSize() - 1
                    delta = animationInterface.getFrame() * 20
                    animationInterface.paintXY(graphics, x + @dx, y - delta + @dy)
                    animationInterface.nextFrame()
                end
            end
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            canvasStrings = ::Org::Allbinary::Graphics::Displayable::CanvasStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, canvasStrings.PAINT, e)
        end
    end
    java_overload :paint, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :IndexedAnimation, "org/allbinary/animation/IndexedAnimation" unless const_defined?(:IndexedAnimation, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :CanvasStrings, "org/allbinary/graphics/displayable/CanvasStrings" unless const_defined?(:CanvasStrings, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :CircularIndexUtil, "org/allbinary/util/CircularIndexUtil" unless const_defined?(:CircularIndexUtil, false); end; end; end
module ::Org; module Allbinary; module View; autoload :ViewPosition, "org/allbinary/view/ViewPosition" unless const_defined?(:ViewPosition, false); end; end; end
module ::Org; module Allbinary; module View; autoload :ViewPositionBase, "org/allbinary/view/ViewPositionBase" unless const_defined?(:ViewPositionBase, false); end; end; end

end; end; end; end; end

