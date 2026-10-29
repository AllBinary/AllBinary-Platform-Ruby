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


class UnitWaypointStrings
    attr_accessor :WANDERING, :THINKING, :THINKING_ABOUT_TARGET, :TARGET, :KILL, :STOP, :WAYPOINT_DESTROYED_SHORT, :WAYPOINT_DESTROYED, :ALL_VISITED_SHORT, :ALL_VISITED, :ALREADY_THERE_SHORT, :ALREADY_THERE, :NEXT_PATH_NODE

    def initialize_fields
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
        @NEXT_PATH_NODE = (CommonLabels.getInstance().NEXT).to_s + " Path Node"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return UnitWaypointStrings.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/string/CommonLabels"

class UnitWaypointStrings
    @@instance = UnitWaypointStrings.new()
end

