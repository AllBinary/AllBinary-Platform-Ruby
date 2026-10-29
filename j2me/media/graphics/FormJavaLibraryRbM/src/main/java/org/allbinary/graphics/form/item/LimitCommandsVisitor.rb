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

# require "javax/microedition/lcdui/Command"
require "org/allbinary/logic/util/visitor/Visitor"

class LimitCommandsVisitor < Visitor
    attr_accessor :isNotSmallDisplay

    def initialize_fields
        @isNotSmallDisplay = nil
    end
    

    def initialize()
        super()
        initialize_fields
        displayInfo = DisplayInfoSingleton.getInstance()
        @isNotSmallDisplay = (displayInfo.isPortrait() && displayInfo.getLastHeight() > ScreenInfo.getInstance().SMALL_WIDTH) || (!displayInfo.isPortrait() && displayInfo.getLastHeight() > ScreenInfo.getInstance().SMALL_HEIGHT)
    end
    

    def visit(anyType)
        command = anyType
        booleanFactory = BooleanFactory.getInstance()
        if @isNotSmallDisplay || command.getPriority() == 1 || command == GameCommandsFactory.getInstance().EXIT_COMMAND || command == GameCommandsFactory.getInstance().EXIT_WITHOUT_PROGRESS_COMMAND
            return booleanFactory.TRUE
        else
            return booleanFactory.FALSE
        end
    end
end

require "org/allbinary/game/commands/GameCommandsFactory"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/graphics/form/ScreenInfo"
require "org/allbinary/logic/java/bool/BooleanFactory"

