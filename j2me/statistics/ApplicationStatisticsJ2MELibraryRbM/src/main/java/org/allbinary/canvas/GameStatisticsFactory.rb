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
# package org.allbinary.canvas

require "java/lang/JavaOverload"
require "org/allbinary/canvas/BaseGameStatistics"

module ::Org; module Allbinary; module Canvas

#ActualPlatform
class GameStatisticsFactory < BaseGameStatistics
    attr_accessor :stringBuffer

    def jfields_org_allbinary_canvas_GameStatisticsFactory
        @stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
    end

    def initialize
        super()
        jfields_org_allbinary_canvas_GameStatisticsFactory
    end
    

    def self.getInstance()
        return GameStatisticsFactory.instance
    end
    

    def add(string)
        if @stringBuffer.length() > 12000
            @stringBuffer.delete(0, @stringBuffer.length())
            @stringBuffer.append("Old Stats Cleared")
        end
        @stringBuffer.append(string)
    end
    java_overload :add, 1
    

    def toString()
        return ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(super.to_s).append(@stringBuffer.to_s).to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString

    def self.instance()
        GameStatisticsFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GameStatisticsFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = GameStatisticsFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameStatisticsFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end

begin
    GameStatisticsFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

