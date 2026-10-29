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
# package org.allbinary.logic.math


class ScaleFactorFactory
    attr_accessor :DEFAULT_SCALE_FACTOR, :DEFAULT_SCALE_VALUE

    def initialize_fields
        @DEFAULT_SCALE_FACTOR = 10
        @DEFAULT_SCALE_VALUE = 1024
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return ScaleFactorFactory.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class ScaleFactorFactory
    @@instance = ScaleFactorFactory.new()
end

