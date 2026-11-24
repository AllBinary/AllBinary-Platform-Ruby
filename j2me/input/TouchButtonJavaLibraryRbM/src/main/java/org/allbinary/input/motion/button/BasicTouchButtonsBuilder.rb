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

class BasicTouchButtonsBuilder < BaseTouchInput
    attr_accessor :logUtil

    def jfields_org_allbinary_input_motion_button_BasicTouchButtonsBuilder
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end

    def initialize
        super()
        jfields_org_allbinary_input_motion_button_BasicTouchButtonsBuilder
    end
    

    def getList()
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
            list = ::Org::Allbinary::Util::BasicArrayListD.new()
            commonButtons = CommonButtons.getInstance()
            touchButtonLocationHelper = TouchButtonLocationHelper.new()
            basicTouchButtonCellPositionFactory = BasicTouchButtonCellPositionFactory.new()
            _UP = TouchButton.createButton(BasicTouchInputFactory.getInstance().UP, TouchButtonUpResource.getInstance(), commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.SECOND_FROM_BOTTOM_LEFT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf())
            _DOWN = TouchButton.createButton(BasicTouchInputFactory.getInstance().DOWN, TouchButtonDownResource.getInstance(), commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_LEFT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf())
            _LEFT = TouchButton.createButton(BasicTouchInputFactory.getInstance().SPECIAL_BUTTON_FOUR, TouchButtonTurnLeftResource.getInstance(), commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_SECOND_FROM_RIGHT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf())
            _RIGHT = TouchButton.createButton(BasicTouchInputFactory.getInstance().SPECIAL_BUTTON_THREE, TouchButtonTurnRightResource.getInstance(), commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_RIGHT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf())
            list.add(_UP)
            list.add(_LEFT)
            list.add(_RIGHT)
            list.add(_DOWN)
            return list
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.GET_LIST, e)
            return ::Org::Allbinary::Util::BasicArrayListUtil.getInstance().getImmutableInstance()
        end
    end
    java_overload :getList, 0
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil" unless const_defined?(:BasicArrayListUtil, false); end; end; end
autoload :BasicTouchButtonCellPositionFactory, "org/allbinary/input/motion/button/BasicTouchButtonCellPositionFactory" unless const_defined?(:BasicTouchButtonCellPositionFactory, false)
autoload :BasicTouchInputFactory, "org/allbinary/input/motion/button/BasicTouchInputFactory" unless const_defined?(:BasicTouchInputFactory, false)
autoload :CommonButtons, "org/allbinary/input/motion/button/CommonButtons" unless const_defined?(:CommonButtons, false)
autoload :TouchButton, "org/allbinary/input/motion/button/TouchButton" unless const_defined?(:TouchButton, false)
autoload :TouchButtonDownResource, "org/allbinary/input/motion/button/TouchButtonDownResource" unless const_defined?(:TouchButtonDownResource, false)
autoload :TouchButtonLocationHelper, "org/allbinary/input/motion/button/TouchButtonLocationHelper" unless const_defined?(:TouchButtonLocationHelper, false)
autoload :TouchButtonTurnLeftResource, "org/allbinary/input/motion/button/TouchButtonTurnLeftResource" unless const_defined?(:TouchButtonTurnLeftResource, false)
autoload :TouchButtonTurnRightResource, "org/allbinary/input/motion/button/TouchButtonTurnRightResource" unless const_defined?(:TouchButtonTurnRightResource, false)
autoload :TouchButtonUpResource, "org/allbinary/input/motion/button/TouchButtonUpResource" unless const_defined?(:TouchButtonUpResource, false)

end; end; end; end; end

