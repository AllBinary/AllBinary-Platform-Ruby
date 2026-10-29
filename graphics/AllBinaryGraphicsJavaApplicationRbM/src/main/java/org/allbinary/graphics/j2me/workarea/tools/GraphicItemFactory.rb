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


class GraphicItemFactory
    attr_accessor :graphicItems, :DEFAULT

    def initialize_fields
        @graphicItems = nil
        @DEFAULT = SelectionToolFactory.new()
    end
    

    def self.getInstance()
        return GraphicItemFactory.instance
    end
    

    def initialize()
        initialize_fields
        @graphicItems = StdUtil.getInstance().createHashMap()
        @graphicItems.put(LinesGraphicItem.getStaticName(), LinesGraphicItemFactory.new())
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getInstance(itemName)
        graphicsItemInterfaceFactoryInterface = @graphicItems.get(itemName)
        if graphicsItemInterfaceFactoryInterface == nil
            graphicsItemInterfaceFactoryInterface = @DEFAULT
        end
        return graphicsItemInterfaceFactoryInterface
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(graphicItemNodeList)
        numberOfItems = graphicItemNodeList.size()
        graphicItemHashMap = StdUtil.getInstance().createHashMap()
        if LOGGING.contains(LOGGING.MENUEVENT)
        end
        (0...numberOfItems).each do |index|
            graphicItem = GraphicItemBuilder.getInstance(graphicItemNodeList.get(index))
            graphicItemHashMap.put(graphicItem.getTreeNode(), graphicItem)
        end
        return graphicItemHashMap
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "java/util/HashMap"
require "org/allbinary/log/LOGGING"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/util/BasicArrayList"
require "org/w3c/dom/Node"
require "org/allbinary/graphics/j2me/workarea/tools/GraphicItemBuilder"
require "org/allbinary/graphics/j2me/workarea/tools/GraphicItemInterface"
require "org/allbinary/graphics/j2me/workarea/tools/GraphicsItemInterfaceFactoryInterface"
require "org/allbinary/graphics/j2me/workarea/tools/LinesGraphicItem"
require "org/allbinary/graphics/j2me/workarea/tools/LinesGraphicItemFactory"
require "org/allbinary/graphics/j2me/workarea/tools/SelectionToolFactory"

class GraphicItemFactory
    @@instance = GraphicItemFactory.new()
end

