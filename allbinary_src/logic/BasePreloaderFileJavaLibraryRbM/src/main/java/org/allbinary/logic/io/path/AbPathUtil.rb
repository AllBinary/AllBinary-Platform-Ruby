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
# package org.allbinary.logic.io.path


class AbPathUtil
    attr_accessor :NO_ABPATH

    def initialize_fields
        @NO_ABPATH = AbPath.createAbPath()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return AbPathUtil.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/io/path/AbPath"

class AbPathUtil
    @@instance = AbPathUtil.new()
end

