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
# package org.allbinary.logic.io


class AbIOSystem
    attr_accessor :type

    def initialize_fields
        @type = "java.io"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return AbIOSystem.instance
    end
    

    def getType()
        return @type
    end
    

    def isType(type)
        if (@type <=> type) == 0
            return true
        else
            return false
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class AbIOSystem
    @@instance = AbIOSystem.new()
end

