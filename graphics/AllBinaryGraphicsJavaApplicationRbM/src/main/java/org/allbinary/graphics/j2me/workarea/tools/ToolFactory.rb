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


module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Tools

class ToolFactory
    attr_accessor :logUtil, :commonStrings, :selectedTool, :tool, :SELECTED_LABEL

    def jfields_org_allbinary_graphics_j2me_workarea_tools_ToolFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @selectedTool = nil
        @tool = nil
        @SELECTED_LABEL = "Selected: "
    end

    def initialize
        jfields_org_allbinary_graphics_j2me_workarea_tools_ToolFactory
    end
    

    def self.getInstance()
        return ToolFactory.instance
    end
    

    def setSelectedTool(tool)
        begin
            ::Org::Allbinary::Graphics::J2me::StatusFactory.getInstance().setStatus(@SELECTED_LABEL + tool)
            @tool = tool
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "setSelectionTool", e)
        end
    end
    

    def getSelectedToolFactory()
        ::Org::Allbinary::Graphics::J2me::StatusFactory.getInstance().setStatus("Tool In Use: " + @tool)
        if @tool != nil
            @selectedTool = GraphicItemFactory.getInstance().getInstance(@tool)
            @logUtil.putF("New Tool: " + (@selectedTool).to_s, self, "getSelectedToolFactory")
            return @selectedTool
        else
            return nil
        end
    end

    def self.instance()
        ToolFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ToolFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ToolFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ToolFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Graphics; module J2me; autoload :StatusFactory, "org/allbinary/graphics/j2me/StatusFactory" unless const_defined?(:StatusFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :GraphicItemFactory, "org/allbinary/graphics/j2me/workarea/tools/GraphicItemFactory" unless const_defined?(:GraphicItemFactory, false)
autoload :GraphicsItemInterfaceFactoryInterface, "org/allbinary/graphics/j2me/workarea/tools/GraphicsItemInterfaceFactoryInterface" unless const_defined?(:GraphicsItemInterfaceFactoryInterface, false)

begin
    ToolFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

