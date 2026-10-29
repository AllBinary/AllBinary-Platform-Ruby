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
# package org.allbinary.logic.util.visitor

require "org/allbinary/logic/util/visitor/VisitorInterface"

class Visitor
    include VisitorInterface
    attr_accessor :nullUtil

    def initialize_fields
        @nullUtil = NullUtil.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def visit(anyType)
        return @nullUtil.NULL_OBJECT
    end
    

    def self.getInstance()
        return Visitor.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/NullUtil"

class Visitor
    @@instance = Visitor.new()
end

