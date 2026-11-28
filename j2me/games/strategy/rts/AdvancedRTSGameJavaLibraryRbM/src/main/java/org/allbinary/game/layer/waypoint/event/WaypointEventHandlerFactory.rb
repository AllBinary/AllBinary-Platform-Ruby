# 
# AllBinary Open License Version 1 
# Copyright (c) 2006 AllBinary 
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
# package org.allbinary.game.layer.waypoint.event


module ::Org; module Allbinary; module Game; module Layer; module Waypoint; module Event

class WaypointEventHandlerFactory
    

    def self.getInstance(groupInterface)
        groupId = ((groupInterface.getGroupId()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
        return @@eventHandlerArray[groupId]
    end
    

    def self.removeAll()
        (@@eventHandlerArray.length - 1).step(0, -(1)) do |index|
            @@eventHandlerArray[index].removeAllListeners()
        end
    end

    def self.eventHandlerArray()
        WaypointEventHandlerFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@eventHandlerArray) ? @@eventHandlerArray : nil
    end

    def self.eventHandlerArray=(value)
        WaypointEventHandlerFactory.java_static_fields unless @java_static_fields_started
        @@eventHandlerArray = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@eventHandlerArray = [WaypointEventHandler.new(), WaypointEventHandler.new(), WaypointEventHandler.new(), WaypointEventHandler.new(), WaypointEventHandler.new(), WaypointEventHandler.new(), WaypointEventHandler.new(), WaypointEventHandler.new(), WaypointEventHandler.new(), WaypointEventHandler.new()]
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "WaypointEventHandlerFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Identification; autoload :Group, "org/allbinary/game/identification/Group" unless const_defined?(:Group, false); end; end; end; end
autoload :WaypointEventHandler, "org/allbinary/game/layer/waypoint/event/WaypointEventHandler" unless const_defined?(:WaypointEventHandler, false)

begin
    WaypointEventHandlerFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

