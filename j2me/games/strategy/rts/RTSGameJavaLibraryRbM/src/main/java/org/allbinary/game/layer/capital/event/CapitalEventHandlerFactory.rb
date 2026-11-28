# 
# AllBinary Open License Version 1 
# Copyright (c) 2003 AllBinary 
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
# package org.allbinary.game.layer.capital.event


module ::Org; module Allbinary; module Game; module Layer; module Capital; module Event

class CapitalEventHandlerFactory
    

    def self.static_init
        (@@capitalEventHandlerArray.length - 1).step(0, -(1)) do |index|
            @@capitalEventHandlerArray[index] = CapitalEventHandler.new()
        end
    end
    

    def self.getInstance(groupInterface)
        groupId = ((groupInterface.getGroupId()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
        return @@capitalEventHandlerArray[groupId]
    end
    

    def self.removeAll()
        (@@capitalEventHandlerArray.length - 1).step(0, -(1)) do |index|
            @@capitalEventHandlerArray[index].removeAllListeners()
        end
    end

    def self.capitalEventHandlerArray()
        CapitalEventHandlerFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@capitalEventHandlerArray) ? @@capitalEventHandlerArray : nil
    end

    def self.capitalEventHandlerArray=(value)
        CapitalEventHandlerFactory.java_static_fields unless @java_static_fields_started
        @@capitalEventHandlerArray = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@capitalEventHandlerArray = Array.new(10, nil)
            static_init
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CapitalEventHandlerFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Identification; autoload :Group, "org/allbinary/game/identification/Group" unless const_defined?(:Group, false); end; end; end; end
autoload :CapitalEventHandler, "org/allbinary/game/layer/capital/event/CapitalEventHandler" unless const_defined?(:CapitalEventHandler, false)

begin
    CapitalEventHandlerFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

