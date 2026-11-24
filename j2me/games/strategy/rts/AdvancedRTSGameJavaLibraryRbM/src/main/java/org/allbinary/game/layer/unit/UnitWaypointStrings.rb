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
# package org.allbinary.game.layer.unit


module ::Org; module Allbinary; module Game; module Layer; module Unit

class UnitWaypointStrings
    attr_accessor :PATHING, :WANDERING, :THINKING, :THINKING_ABOUT_TARGET, :TARGET, :KILL, :STOP, :WAYPOINT_DESTROYED_SHORT, :WAYPOINT_DESTROYED, :ALL_VISITED_SHORT, :ALL_VISITED, :ALREADY_THERE_SHORT, :ALREADY_THERE, :NEXT_PATH_NODE, :_ALL_VISITED_SHORT, :_ALREADY_THERE_SHORT, :VISITED_MOST_OF_THE_PATH, :RETURNING_AS_WAYPOINT_PATH_LIST

    def jfields_org_allbinary_game_layer_unit_UnitWaypointStrings
        @PATHING = "Pathing"
        @WANDERING = "Order?"
        @THINKING = "Thinking"
        @THINKING_ABOUT_TARGET = "Hmmm"
        @TARGET = "Target"
        @KILL = "Kill!"
        @STOP = "Stop"
        @WAYPOINT_DESTROYED_SHORT = "Uh Oh"
        @WAYPOINT_DESTROYED = "Waypoint Destroyed"
        @ALL_VISITED_SHORT = "Arrived"
        @ALL_VISITED = "All Visited"
        @ALREADY_THERE_SHORT = "Again?"
        @ALREADY_THERE = "Already There"
        @NEXT_PATH_NODE = (::Org::Allbinary::StringPackage::CommonLabels.getInstance().NEXT).to_s + " Path Node"
        @_ALL_VISITED_SHORT = " Arrived"
        @_ALREADY_THERE_SHORT = " Again?"
        @VISITED_MOST_OF_THE_PATH = " visited most of the path"
        @RETURNING_AS_WAYPOINT_PATH_LIST = " returning as waypointPathsList was runningWaypointPathList"
    end

    def initialize
        jfields_org_allbinary_game_layer_unit_UnitWaypointStrings
    end
    

    def self.getInstance()
        return UnitWaypointStrings.instance
    end

    def self.instance()
        UnitWaypointStrings.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        UnitWaypointStrings.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = UnitWaypointStrings.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "UnitWaypointStrings"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end

begin
    UnitWaypointStrings.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

