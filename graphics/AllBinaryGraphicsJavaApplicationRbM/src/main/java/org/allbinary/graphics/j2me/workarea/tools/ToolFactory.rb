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
# package org.allbinary.graphics.j2me.workarea.tools


class ToolFactory
    attr_accessor :logUtil, :commonStrings, :selectedTool, :tool, :SELECTED_LABEL

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @selectedTool = nil
        @tool = nil
        @SELECTED_LABEL = "Selected: "
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return ToolFactory.instance
    end
    

    def setSelectedTool(tool)
        begin
            StatusFactory.getInstance().setStatus(@SELECTED_LABEL + tool)
            @tool = tool
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "setSelectionTool", e)
        end
    end
    

    def getSelectedToolFactory()
        StatusFactory.getInstance().setStatus("Tool In Use: " + @tool)
        if @tool != nil
            @selectedTool = GraphicItemFactory.getInstance().getInstance(@tool)
            @logUtil.putF("New Tool: " + (@selectedTool).to_s, self, "getSelectedToolFactory")
            return @selectedTool
        else
            return nil
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/j2me/StatusFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/graphics/j2me/workarea/tools/GraphicItemFactory"
require "org/allbinary/graphics/j2me/workarea/tools/GraphicsItemInterfaceFactoryInterface"

class ToolFactory
    @@instance = ToolFactory.new()
end

