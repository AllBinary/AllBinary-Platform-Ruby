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
        GroupCommonFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GroupCommonFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = NullUtil.getInstance().NULL_OBJECT
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GroupCommonFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory"

begin
    GroupCommonFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

