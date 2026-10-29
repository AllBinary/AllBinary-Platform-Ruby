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
# package org.allbinary.logic.java.bool


class BooleanFactory
    attr_accessor :TRUE, :FALSE, :TRUE_STRING, :FALSE_STRING, :YES, :NO

    def initialize_fields
        @TRUE = true
        @FALSE = false
        @TRUE_STRING = @TRUE.to_s
        @FALSE_STRING = @FALSE.to_s
        @YES = "yes"
        @NO = "no"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return BooleanFactory.instance
    end
    

    def toStringb(bool)
        if bool
            return @TRUE_STRING
        else
            return @FALSE_STRING
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class BooleanFactory
    @@instance = BooleanFactory.new()
end

