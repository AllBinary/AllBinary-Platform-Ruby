# 
# AllBinary Open License Version 1 
# Copyright (c) 2007 AllBinary 
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

class UpgradeDowngradeTouchButtonsBuilder < BaseTouchInput
    attr_accessor :logUtil

    def jfields_org_allbinary_input_motion_button_UpgradeDowngradeTouchButtonsBuilder
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end

    def initialize
        super()
        jfields_org_allbinary_input_motion_button_UpgradeDowngradeTouchButtonsBuilder
    end
    

    def getList()
        begin
            @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
            list = ::Org::Allbinary::Util::BasicArrayListD.new()
            touchButtonLocationHelper = TouchButtonLocationHelper.new()
            cellPositionFactory = ::Org::Allbinary::Graphics::CellPositionFactory.getInstance()
            basicTouchButtonCellPositionFactory = BasicTouchButtonCellPositionFactory.new()
            if basicTouchButtonCellPositionFactory.SECOND_FROM_TOP_LEFT != cellPositionFactory.NONE && basicTouchButtonCellPositionFactory.SECOND_FROM_TOP_RIGHT != cellPositionFactory.NONE
                commonButtons = CommonButtons.getInstance()
                _UP = TouchButton.createButton(BasicTouchInputFactory.getInstance().SPECIAL_BUTTON_TWO, ::Org::Allbinary::Game::Input::Resource::TouchButtonUpgradeResource.getInstance(), commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.SECOND_FROM_TOP_LEFT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf())
                _DOWN = TouchButton.createButton(BasicTouchInputFactory.getInstance().SPECIAL_BUTTON_ONE, ::Org::Allbinary::Game::Input::Resource::TouchButtonDowngradeResource.getInstance(), commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.SECOND_FROM_TOP_RIGHT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf())
                list.add(_UP)
                list.add(_DOWN)
            end
            return list
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.CONSTRUCTOR, e)
            return ::Org::Allbinary::Util::BasicArrayListUtil.getInstance().getImmutableInstance()
        end
    end
    java_overload :getList, 0
end

module ::Org; module Allbinary; module Game; module Input; module Resource; autoload :TouchButtonDowngradeResource, "org/allbinary/game/input/resource/TouchButtonDowngradeResource" unless const_defined?(:TouchButtonDowngradeResource, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Resource; autoload :TouchButtonUpgradeResource, "org/allbinary/game/input/resource/TouchButtonUpgradeResource" unless const_defined?(:TouchButtonUpgradeResource, false); end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil" unless const_defined?(:BasicArrayListUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :CellPositionFactory, "org/allbinary/graphics/CellPositionFactory" unless const_defined?(:CellPositionFactory, false); end; end; end
autoload :BasicTouchButtonCellPositionFactory, "org/allbinary/input/motion/button/BasicTouchButtonCellPositionFactory" unless const_defined?(:BasicTouchButtonCellPositionFactory, false)
autoload :BasicTouchInputFactory, "org/allbinary/input/motion/button/BasicTouchInputFactory" unless const_defined?(:BasicTouchInputFactory, false)
autoload :CommonButtons, "org/allbinary/input/motion/button/CommonButtons" unless const_defined?(:CommonButtons, false)
autoload :TouchButton, "org/allbinary/input/motion/button/TouchButton" unless const_defined?(:TouchButton, false)
autoload :TouchButtonLocationHelper, "org/allbinary/input/motion/button/TouchButtonLocationHelper" unless const_defined?(:TouchButtonLocationHelper, false)

end; end; end; end; end

