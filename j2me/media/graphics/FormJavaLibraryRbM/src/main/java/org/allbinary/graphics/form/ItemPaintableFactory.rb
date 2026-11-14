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
# package org.allbinary.graphics.form

require "org/allbinary/graphics/form/ItemPaintable"

class ItemPaintableFactory < ItemPaintable
    

    def self.getInstance()
        return ItemPaintableFactory.instance
    end
    

    # throws Exception
    def getInstanceItemPaintable(paintableForm)
        return ItemPaintableFactory.instance
    end

    def self.instance()
        ItemPaintableFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ItemPaintableFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ItemPaintableFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ItemPaintableFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :PaintableForm, "org/allbinary/graphics/form/PaintableForm"

begin
    ItemPaintableFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

