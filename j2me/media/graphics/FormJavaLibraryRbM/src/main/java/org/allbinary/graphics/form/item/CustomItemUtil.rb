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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/form/item/ABCustomItem"

class CustomItemUtil
    @@instance = CustomItemUtil.new()
end

