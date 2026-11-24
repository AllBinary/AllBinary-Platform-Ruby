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

class GraphicItemFactory
    attr_accessor :graphicItems, :DEFAULT

    def jfields_org_allbinary_graphics_j2me_workarea_tools_GraphicItemFactory
        @graphicItems = nil unless instance_variable_defined?(:@graphicItems)
        @DEFAULT = SelectionToolFactory.new()
    end
    

    def self.getInstance()
        return GraphicItemFactory.instance
    end
    

    def initialize()
        jfields_org_allbinary_graphics_j2me_workarea_tools_GraphicItemFactory
        @graphicItems = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        @graphicItems.put(LinesGraphicItem.getStaticName(), LinesGraphicItemFactory.new())
    end
    

    def getInstance_j1_1(itemName)
        graphicsItemInterfaceFactoryInterface = @graphicItems.get(itemName)
        if graphicsItemInterfaceFactoryInterface == nil
            graphicsItemInterfaceFactoryInterface = @DEFAULT
        end
        return graphicsItemInterfaceFactoryInterface
    end
    

    # throws Exception
    def getInstance_j1_2(graphicItemNodeList)
        numberOfItems = graphicItemNodeList.size()
        graphicItemHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        if ::Org::Allbinary::Log::LOGGING.contains(::Org::Allbinary::Log::LOGGING::MENUEVENT)
        end
        (0...numberOfItems).each do |index|
            graphicItem = GraphicItemBuilder.getInstance(graphicItemNodeList.get(index))
            graphicItemHashMap.put(graphicItem.getTreeNode(), graphicItem)
        end
        return graphicItemHashMap
    end

    def getInstance(*java_overload_args)
        return getInstance_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method getInstance takes #{java_overload_args.length} arguments"
    end

    def getInstance_j1(*java_overload_args)
        return getInstance_j1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::String))
        return getInstance_j1_2(*java_overload_args)
    end

    def self.instance()
        GraphicItemFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GraphicItemFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = GraphicItemFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GraphicItemFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Log; autoload :LOGGING, "org/allbinary/log/LOGGING" unless const_defined?(:LOGGING, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :GraphicItemBuilder, "org/allbinary/graphics/j2me/workarea/tools/GraphicItemBuilder" unless const_defined?(:GraphicItemBuilder, false)
autoload :GraphicItemInterface, "org/allbinary/graphics/j2me/workarea/tools/GraphicItemInterface" unless const_defined?(:GraphicItemInterface, false)
autoload :GraphicsItemInterfaceFactoryInterface, "org/allbinary/graphics/j2me/workarea/tools/GraphicsItemInterfaceFactoryInterface" unless const_defined?(:GraphicsItemInterfaceFactoryInterface, false)
autoload :LinesGraphicItem, "org/allbinary/graphics/j2me/workarea/tools/LinesGraphicItem" unless const_defined?(:LinesGraphicItem, false)
autoload :LinesGraphicItemFactory, "org/allbinary/graphics/j2me/workarea/tools/LinesGraphicItemFactory" unless const_defined?(:LinesGraphicItemFactory, false)
autoload :SelectionToolFactory, "org/allbinary/graphics/j2me/workarea/tools/SelectionToolFactory" unless const_defined?(:SelectionToolFactory, false)

begin
    GraphicItemFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

