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


module ::Org; module Allbinary; module Game; module Identification

class GroupCommonFactory
    attr_accessor :ID, :GROUP_NAME_LABEL, :ID_LABEL, :ADDING_LABEL, :TO_LABEL

    def jfields_org_allbinary_game_identification_GroupCommonFactory
        @ID = ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(10)
        @GROUP_NAME_LABEL = "Group Name: "
        @ID_LABEL = " Id: "
        @ADDING_LABEL = "Adding: "
        @TO_LABEL = " to: "
    end

    def initialize
        jfields_org_allbinary_game_identification_GroupCommonFactory
    end
    

    def self.getInstance()
        if @@instance == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            @@instance = GroupCommonFactory.new()
        end
        return @@instance
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
            @@instance = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
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

module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end

begin
    GroupCommonFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

