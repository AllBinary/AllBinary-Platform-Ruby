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
# package org.allbinary.data.tables


class TableDataFactory
    attr_accessor :INTEGER_MAX_VALUE_STRING, :ZERO_STRING

    def initialize_fields
        @INTEGER_MAX_VALUE_STRING = (2147483647).to_s
        @ZERO_STRING = CommonPhoneStrings.getInstance().ZERO
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return TableDataFactory.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/string/CommonPhoneStrings"

class TableDataFactory
    @@instance = TableDataFactory.new()
end

