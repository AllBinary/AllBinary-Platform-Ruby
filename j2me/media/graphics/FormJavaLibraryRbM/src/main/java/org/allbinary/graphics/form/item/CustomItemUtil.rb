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


class CustomItemUtil
    attr_accessor :CUSTOM_ITEM_ARRAY

    def initialize_fields
        @CUSTOM_ITEM_ARRAY = Array.new(0, nil)
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return CustomItemUtil.instance
    end

    def self.instance()
        CustomItemUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        CustomItemUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = CustomItemUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CustomItemUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :ABCustomItem, "org/allbinary/graphics/form/item/ABCustomItem"

begin
    CustomItemUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

