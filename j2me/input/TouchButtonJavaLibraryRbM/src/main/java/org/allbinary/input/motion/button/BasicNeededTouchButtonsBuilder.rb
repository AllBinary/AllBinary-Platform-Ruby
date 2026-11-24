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
# package org.allbinary.input.motion.button

require "java/lang/JavaOverload"
require "org/allbinary/input/motion/button/BaseTouchInput"

module ::Org; module Allbinary; module Input; module Motion; module Button

class BasicNeededTouchButtonsBuilder < BaseTouchInput
    attr_accessor :logUtil

    def jfields_org_allbinary_input_motion_button_BasicNeededTouchButtonsBuilder
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end

    def initialize
        super()
        jfields_org_allbinary_input_motion_button_BasicNeededTouchButtonsBuilder
    end
    

    def getList()
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
            list = ::Org::Allbinary::Util::BasicArrayListD.new()
            touchButtonLocationHelper = TouchButtonLocationHelper.new()
            basicTouchButtonCellPositionFactory = BasicTouchButtonCellPositionFactory.new()
            commonButtons = CommonButtons.getInstance()
            animationInterface = ::Org::Allbinary::Animation::NullAnimationFactory.getFactoryInstance().getInstance(0)
            _UP = TouchButton.new(BasicTouchInputFactory.getInstance().UP, animationInterface, animationInterface, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.SECOND_FROM_BOTTOM_LEFT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf())
            _DOWN = TouchButton.new(BasicTouchInputFactory.getInstance().DOWN, animationInterface, animationInterface, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_LEFT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf())
            _LEFT = TouchButton.new(BasicTouchInputFactory.getInstance().LEFT, animationInterface, animationInterface, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_SECOND_FROM_RIGHT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf())
            _RIGHT = TouchButton.new(BasicTouchInputFactory.getInstance().RIGHT, animationInterface, animationInterface, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_RIGHT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf())
            list.add(_UP)
            list.add(_DOWN)
            list.add(_LEFT)
            list.add(_RIGHT)
            return list
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.GET_LIST, e)
            return ::Org::Allbinary::Util::BasicArrayListUtil.getInstance().getImmutableInstance()
        end
    end
    java_overload :getList, 0
end

module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :NullAnimationFactory, "org/allbinary/animation/NullAnimationFactory" unless const_defined?(:NullAnimationFactory, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil" unless const_defined?(:BasicArrayListUtil, false); end; end; end
autoload :BasicTouchButtonCellPositionFactory, "org/allbinary/input/motion/button/BasicTouchButtonCellPositionFactory" unless const_defined?(:BasicTouchButtonCellPositionFactory, false)
autoload :BasicTouchInputFactory, "org/allbinary/input/motion/button/BasicTouchInputFactory" unless const_defined?(:BasicTouchInputFactory, false)
autoload :CommonButtons, "org/allbinary/input/motion/button/CommonButtons" unless const_defined?(:CommonButtons, false)
autoload :TouchButton, "org/allbinary/input/motion/button/TouchButton" unless const_defined?(:TouchButton, false)
autoload :TouchButtonLocationHelper, "org/allbinary/input/motion/button/TouchButtonLocationHelper" unless const_defined?(:TouchButtonLocationHelper, false)

end; end; end; end; end

