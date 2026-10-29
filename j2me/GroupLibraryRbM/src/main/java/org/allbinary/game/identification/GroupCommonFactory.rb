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
# package org.allbinary.game.identification


class GroupCommonFactory
    attr_accessor :ID, :GROUP_NAME_LABEL, :ID_LABEL, :ADDING_LABEL, :TO_LABEL

    def initialize_fields
        @ID = SmallIntegerSingletonFactory.getInstance().getAt(10)
        @GROUP_NAME_LABEL = "Group Name: "
        @ID_LABEL = " Id: "
        @ADDING_LABEL = "Adding: "
        @TO_LABEL = " to: "
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        if GroupCommonFactory.instance == NullUtil.getInstance().NULL_OBJECT
            GroupCommonFactory.instance = GroupCommonFactory.new()
        end
        return GroupCommonFactory.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"

class GroupCommonFactory
    @@instance = NullUtil.getInstance().NULL_OBJECT
end

