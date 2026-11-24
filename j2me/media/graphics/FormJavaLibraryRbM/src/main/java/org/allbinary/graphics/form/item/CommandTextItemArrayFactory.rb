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
# package org.allbinary.graphics.form.item


module ::Org; module Allbinary; module Graphics; module Form; module Item

class CommandTextItemArrayFactory
    attr_accessor :list, :visitorInterface

    def jfields_org_allbinary_graphics_form_item_CommandTextItemArrayFactory
        @list = ::Org::Allbinary::Util::BasicArrayListD.new()
        @visitorInterface = nil unless instance_variable_defined?(:@visitorInterface)
    end
    

    def initialize(visitorInterface)
        jfields_org_allbinary_graphics_form_item_CommandTextItemArrayFactory
        @visitorInterface = visitorInterface
    end
    

    def getInstance(vector, backgroundBasicColor, foregroundBasicColor)
        vectorUtil = ::Org::Allbinary::Logic::VectorUtil.getInstance()
        size = vectorUtil.getSize(vector)
        @list.clear()
        textItem = nil
        priorityLimit = 7
        displayInfo = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
        isLargeEnoughDisplayForBigMenu = (displayInfo.isPortrait() && displayInfo.getLastHeight() >= ::Org::Allbinary::Graphics::Form::ScreenInfo.getInstance().MEDIUM_WIDTH) || (!displayInfo.isPortrait() && displayInfo.getLastWidth() >= ::Org::Allbinary::Graphics::Form::ScreenInfo.getInstance().MEDIUM_WIDTH)
        if !isLargeEnoughDisplayForBigMenu && size > 3
            priorityLimit = 3
        end
        command = nil
        (0...size).each do |index|
            command = vectorUtil.elementAt(vector, index)
            if command.getPriority() < priorityLimit
                aBoolean = @visitorInterface.visit(command)
                if aBoolean
                    textItem = CommandTextItem.new(command, ::Javax::Microedition::Lcdui::ImageItem::LAYOUT_DEFAULT, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, backgroundBasicColor, foregroundBasicColor)
                    @list.add(textItem)
                end
            end
        end
        textItemArray = Array.new(@list.size(), nil)
        size2 = textItemArray.length
        (0...size2).each do |index|
            textItemArray[index] = @list.objectArray[index]
        end
        return textItemArray
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Command, "javax/microedition/lcdui/Command" unless const_defined?(:Command, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :ImageItem, "javax/microedition/lcdui/ImageItem" unless const_defined?(:ImageItem, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :ScreenInfo, "org/allbinary/graphics/form/ScreenInfo" unless const_defined?(:ScreenInfo, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :VectorUtil, "org/allbinary/logic/VectorUtil" unless const_defined?(:VectorUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Visitor; autoload :Visitor, "org/allbinary/logic/util/visitor/Visitor" unless const_defined?(:Visitor, false); end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :ABCustomItem, "org/allbinary/graphics/form/item/ABCustomItem" unless const_defined?(:ABCustomItem, false)
autoload :CommandTextItem, "org/allbinary/graphics/form/item/CommandTextItem" unless const_defined?(:CommandTextItem, false)

end; end; end; end; end

