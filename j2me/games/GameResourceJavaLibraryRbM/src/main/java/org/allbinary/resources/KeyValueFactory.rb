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
# package org.allbinary.resources


class KeyValueFactory
    attr_accessor :MAP

    def initialize_fields
        @MAP = StdUtil.getInstance().createHashtable()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return KeyValueFactory.instance
    end
    

    def get(key)
        value = @MAP.get(key)
        if value == nil
            return key
        end
        return value
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/StdUtil"
require "org/allbinary/util/ABHashtable"

class KeyValueFactory
    @@instance = KeyValueFactory.new()
end

