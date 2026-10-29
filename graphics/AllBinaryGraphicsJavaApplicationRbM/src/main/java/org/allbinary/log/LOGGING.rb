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
# package org.allbinary.log


class LOGGING
    attr_accessor :name

    def initialize_fields
        @name = nil
    end
    

    def initialize(value)
        initialize_fields
        @name = value
        LOGGING.logging.add(value)
    end
    

    def self.contains(logType)
        return LOGGING.logging.contains(logType.to_s)
    end
    

    def toString()
        return @name
    end
    alias_method :to_s, :toString

    def self.logging()
        return defined?(@@logging) ? @@logging : nil
    end

    def self.logging=(value)
        @@logging = value
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/StdUtil"

class LOGGING
    @@logging = BasicArrayListD.new()
    GRAPHICSPAINT = LOGGING.new("Graphics Paint")
    GRAPHICSCREATION = LOGGING.new("Graphics Creation")
    GRAPHICSDELETION = LOGGING.new("Graphics Deletion")
    LOADINGERROR = LOGGING.new("Loading Error")
    MENUEVENT = LOGGING.new("Menu Action Event")
    MOUSEEVENT = LOGGING.new("Mouse Action Event")
    KEYEVENT = LOGGING.new("Keyboard Action Event")
    ACTIONEVENT = LOGGING.new("Action Event")
    ADJUSTMENTEVENT = LOGGING.new("Adjustment Action Event")
    COMPONENTEVENT = LOGGING.new("Component Action Event")
    CONTAINEREVENT = LOGGING.new("Container Action Event")
    FOCUSEVENT = LOGGING.new("Focus Action Event")
    HIERARCHYEVENT = LOGGING.new("Hierarchy Action Event")
    INPUTEVENT = LOGGING.new("Input Action Event")
    INVOCATIONEVENT = LOGGING.new("Invocation Action Event")
    ITEMEVENT = LOGGING.new("Item Action Event")
    PAINTEVENT = LOGGING.new("Paint Action Event")
    TEXTEVENT = LOGGING.new("Text Action Event")
    WINDOWEVENT = LOGGING.new("Window Action Event")
end

