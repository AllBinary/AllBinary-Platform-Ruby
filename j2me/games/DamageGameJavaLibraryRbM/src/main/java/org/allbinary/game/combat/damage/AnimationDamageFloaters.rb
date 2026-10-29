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

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/game/combat/damage/DamageFloaters"

class AnimationDamageFloaters < DamageFloaters
    attr_accessor :logUtil, :layerInterface, :animationInterfaceArray, :circularIndexUtil, :dx, :dy

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @layerInterface = nil
        @animationInterfaceArray = nil
        @circularIndexUtil = nil
        @dx = nil
        @dy = nil
    end
    

    def initialize(layerInterface, animationInterfaceArray, dx, dy)
        super()
        initialize_fields
        @animationInterfaceArray = animationInterfaceArray
        (@animationInterfaceArray.length - 1).step(0, -(1)) do |index|
            @animationInterfaceArray[index].setFrame(@animationInterfaceArray[index].getSize() - 1)
        end
        @layerInterface = layerInterface
        @circularIndexUtil = CircularIndexUtil.createInstance(@animationInterfaceArray.length)
        @dx = dx
        @dy = dy
    end
    

    def add(damage)
        i = @circularIndexUtil.getIndex()
        @animationInterfaceArray[i].setFrame(0)
        @circularIndexUtil.next_()
    end
    

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
            commonStrings = CommonStrings.getInstance()
            canvasStrings = CanvasStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, canvasStrings.PAINT, e)
        end
    end
end

require "org/allbinary/animation/IndexedAnimation"
require "org/allbinary/graphics/displayable/CanvasStrings"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/CircularIndexUtil"
require "org/allbinary/view/ViewPosition"
require "org/allbinary/view/ViewPositionBase"

