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
require "org/allbinary/graphics/paint/Paintable"

module ::Org; module Allbinary; module Input; module Motion; module Button

class TouchButtonsMappingPaintable < ::Org::Allbinary::Graphics::Paint::Paintable
    attr_accessor :logUtil, :foregroundColor, :paintableTable, :touchButtonLocationHelper

    def jfields_org_allbinary_input_motion_button_TouchButtonsMappingPaintable
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @foregroundColor = nil unless instance_variable_defined?(:@foregroundColor)
        @paintableTable = Array.new(0) { Array.new(0, nil) }
        @touchButtonLocationHelper = TouchButtonLocationHelper.new()
    end
    

    def initialize(basicColor)
        super()
        jfields_org_allbinary_input_motion_button_TouchButtonsMappingPaintable
        @foregroundColor = basicColor.to_i
        self.init()
    end
    

    def init()
        begin
            @paintableTable = self.createPaintableTable()
        rescue StandardError => e
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, "updateRectangle", e)
        end
    end
    java_overload :init, 0
    

    # throws Exception
    def createPaintableTable()
        totalColumns = @touchButtonLocationHelper.getTotalColumns()
        totalRows = @touchButtonLocationHelper.getTotalRows()
        paintableTable = Array.new(totalColumns) { Array.new(totalRows, nil) }
        cellPositionFactory = ::Org::Allbinary::Graphics::CellPositionFactory.getInstance()
        commonButtons = CommonButtons.getInstance()
        (totalColumns - 1).step(0, -(1)) do |index|
            (totalRows - 1).step(0, -(1)) do |rowIndex|
                @paintableTable[index][rowIndex] = TouchButton.createButton(BasicTouchInputFactory.getInstance().NONE, TouchButtonBlankResource.getInstance(), commonButtons.NORMAL_BUTTON, cellPositionFactory.getInstanceColRow(index, rowIndex), @touchButtonLocationHelper.getColumnsRemainderHalf(), @touchButtonLocationHelper.getRowsRemainderHalf())
            end
        end
        return paintableTable
    end
    java_overload :createPaintableTable, 0
    

    def paint(graphics)
        totalColumns = @touchButtonLocationHelper.getTotalColumns()
        totalRows = @touchButtonLocationHelper.getTotalRows()
        (totalColumns - 1).step(0, -(1)) do |index|
            (totalRows - 1).step(0, -(1)) do |rowIndex|
                @paintableTable[index][rowIndex].paint(graphics)
            end
        end
    end
    java_overload :paint, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :CellPositionFactory, "org/allbinary/graphics/CellPositionFactory" unless const_defined?(:CellPositionFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :BasicTouchInputFactory, "org/allbinary/input/motion/button/BasicTouchInputFactory" unless const_defined?(:BasicTouchInputFactory, false)
autoload :CommonButtons, "org/allbinary/input/motion/button/CommonButtons" unless const_defined?(:CommonButtons, false)
autoload :TouchButton, "org/allbinary/input/motion/button/TouchButton" unless const_defined?(:TouchButton, false)
autoload :TouchButtonBlankResource, "org/allbinary/input/motion/button/TouchButtonBlankResource" unless const_defined?(:TouchButtonBlankResource, false)
autoload :TouchButtonLocationHelper, "org/allbinary/input/motion/button/TouchButtonLocationHelper" unless const_defined?(:TouchButtonLocationHelper, false)

end; end; end; end; end

