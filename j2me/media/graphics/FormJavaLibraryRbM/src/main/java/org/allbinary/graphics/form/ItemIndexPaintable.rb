# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.graphics.form

# require "javax/microedition/lcdui/Graphics"

class ItemIndexPaintable
    

    def self.getInstance()
        return ItemIndexPaintable.instance
    end
    

    # throws Exception
    def paint(graphics, index, item, dx, dy)
        return 0
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/form/item/ABCustomItem"

class ItemIndexPaintable
    @@instance = ItemIndexPaintable.new()
end

