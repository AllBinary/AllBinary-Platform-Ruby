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


module ::Org; module Allbinary; module Log

class LOGGING
    attr_accessor :name

    def jfields_org_allbinary_log_LOGGING
        @name = nil unless instance_variable_defined?(:@name)
    end
    

    def initialize(value)
        jfields_org_allbinary_log_LOGGING
        @name = value
        @@logging.add(value)
    end
    

    def self.contains(logType)
        return @@logging.contains(logType.to_s)
    end
    

    def toString()
        return @name
    end
    alias_method :to_s, :toString

    def self.logging()
        LOGGING.java_static_fields unless @java_static_fields_started
        return defined?(@@logging) ? @@logging : nil
    end

    def self.logging=(value)
        LOGGING.java_static_fields unless @java_static_fields_started
        @@logging = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@logging = ::Org::Allbinary::Util::BasicArrayListD.new()
            const_set(:GRAPHICSPAINT, LOGGING.new("Graphics Paint"))
            const_set(:GRAPHICSCREATION, LOGGING.new("Graphics Creation"))
            const_set(:GRAPHICSDELETION, LOGGING.new("Graphics Deletion"))
            const_set(:LOADINGERROR, LOGGING.new("Loading Error"))
            const_set(:MENUEVENT, LOGGING.new("Menu Action Event"))
            const_set(:MOUSEEVENT, LOGGING.new("Mouse Action Event"))
            const_set(:KEYEVENT, LOGGING.new("Keyboard Action Event"))
            const_set(:ACTIONEVENT, LOGGING.new("Action Event"))
            const_set(:ADJUSTMENTEVENT, LOGGING.new("Adjustment Action Event"))
            const_set(:COMPONENTEVENT, LOGGING.new("Component Action Event"))
            const_set(:CONTAINEREVENT, LOGGING.new("Container Action Event"))
            const_set(:FOCUSEVENT, LOGGING.new("Focus Action Event"))
            const_set(:HIERARCHYEVENT, LOGGING.new("Hierarchy Action Event"))
            const_set(:INPUTEVENT, LOGGING.new("Input Action Event"))
            const_set(:INVOCATIONEVENT, LOGGING.new("Invocation Action Event"))
            const_set(:ITEMEVENT, LOGGING.new("Item Action Event"))
            const_set(:PAINTEVENT, LOGGING.new("Paint Action Event"))
            const_set(:TEXTEVENT, LOGGING.new("Text Action Event"))
            const_set(:WINDOWEVENT, LOGGING.new("Window Action Event"))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "LOGGING"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:GRAPHICSPAINT, :GRAPHICSCREATION, :GRAPHICSDELETION, :LOADINGERROR, :MENUEVENT, :MOUSEEVENT, :KEYEVENT, :ACTIONEVENT, :ADJUSTMENTEVENT, :COMPONENTEVENT, :CONTAINEREVENT, :FOCUSEVENT, :HIERARCHYEVENT, :INPUTEVENT, :INVOCATIONEVENT, :ITEMEVENT, :PAINTEVENT, :TEXTEVENT, :WINDOWEVENT].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end

begin
    LOGGING.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

