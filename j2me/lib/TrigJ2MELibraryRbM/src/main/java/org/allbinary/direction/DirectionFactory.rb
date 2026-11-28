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
# package org.allbinary.direction


module ::Org; module Allbinary; module Direction

class DirectionFactory
    attr_accessor :NAME, :LEFT, :RIGHT, :DOWN, :UP, :UP_LEFT, :UP_RIGHT, :DOWN_LEFT, :DOWN_RIGHT, :NOT_BORDERED_WITH, :NO_DIRECTION, :TOP, :BOTTOM, :ALL_DIRECTION

    def jfields_org_allbinary_direction_DirectionFactory
        @NAME = "DIRECTION"
        @LEFT = Direction.new(::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().LEFT, "WEST", 0, 1)
        @RIGHT = Direction.new(::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().RIGHT, "EAST", 1, 0)
        @DOWN = Direction.new(::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().DOWN, "SOUTH", 2, 0)
        @UP = Direction.new(::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().UP, "NORTH", 3, 0)
        @UP_LEFT = nil unless instance_variable_defined?(:@UP_LEFT)
        @UP_RIGHT = nil unless instance_variable_defined?(:@UP_RIGHT)
        @DOWN_LEFT = nil unless instance_variable_defined?(:@DOWN_LEFT)
        @DOWN_RIGHT = nil unless instance_variable_defined?(:@DOWN_RIGHT)
        @NOT_BORDERED_WITH = Direction.new("NOT_BORDERED_WITH", "NOT_BORDERED_WITH", 8, 0)
        @NO_DIRECTION = Direction.new("NO_DIRECTION", "NO_DIRECTION", 9, 0)
        @TOP = Direction.new("TOP", "TOP", 10, 0)
        @BOTTOM = Direction.new("BOTTOM", "BOTTOM", 11, 0)
        @ALL_DIRECTION = Direction.new("ALL_DIRECTION", "ALL_DIRECTION", 12, 0)
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_direction_DirectionFactory
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        @UP_LEFT = Direction.new("UP LEFT", stringBuffer.append(@UP.getOtherName()).append(commonSeps.SPACE).append(@LEFT.getOtherName()).to_s, 4, 0)
        stringBuffer.delete(0, stringBuffer.length())
        @UP_RIGHT = Direction.new("UP RIGHT", stringBuffer.append(@UP.getOtherName()).append(commonSeps.SPACE).append(@RIGHT.getOtherName()).to_s, 5, 0)
        stringBuffer.delete(0, stringBuffer.length())
        @DOWN_LEFT = Direction.new("DOWN LEFT", stringBuffer.append(@DOWN.getOtherName()).append(commonSeps.SPACE).append(@LEFT.getOtherName()).to_s, 6, 0)
        stringBuffer.delete(0, stringBuffer.length())
        @DOWN_RIGHT = Direction.new("DOWN RIGHT", stringBuffer.append(@DOWN.getOtherName()).append(commonSeps.SPACE).append(@RIGHT.getOtherName()).to_s, 7, 0)
    end

    def self.instance()
        DirectionFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        DirectionFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = DirectionFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "DirectionFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonPhoneStrings, "org/allbinary/string/CommonPhoneStrings" unless const_defined?(:CommonPhoneStrings, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
autoload :Direction, "org/allbinary/direction/Direction" unless const_defined?(:Direction, false)

begin
    DirectionFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

