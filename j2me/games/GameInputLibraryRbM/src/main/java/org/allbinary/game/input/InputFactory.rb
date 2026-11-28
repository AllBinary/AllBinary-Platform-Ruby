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
# package org.allbinary.game.input


module ::Org; module Allbinary; module Game; module Input

class InputFactory
    attr_accessor :logUtil, :commonStrings, :KEY_CODE_LABEL, :DEVICE_ID_LABEL, :MAX, :inputIntegerArray, :NO_INPUT

    def jfields_org_allbinary_game_input_InputFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @KEY_CODE_LABEL = "KeyCode: "
        @DEVICE_ID_LABEL = "DeviceId: "
        @MAX = ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getMin()
        @inputIntegerArray = Array.new(@MAX, nil)
        @NO_INPUT = Input.new(0, @commonStrings.UNKNOWN)
    end
    

    def self.getInstance()
        if @@instance == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            @@instance = InputFactory.new()
        end
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_game_input_InputFactory
        size = @inputIntegerArray.length
        (0...size).each do |index|
            @inputIntegerArray[index] = @NO_INPUT
        end
    end
    

    def add(id, input)
        @inputIntegerArray[id] = input
    end
    

    def getInstanceById(id)
        if id < 0
            id = -id
        end
        if id > @inputIntegerArray.length
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Warning id: ").appendint(id).to_s, self, @commonStrings.GET_INSTANCE)
            return @NO_INPUT
        end
        return @inputIntegerArray[id]
    end

    def self.instance()
        InputFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        InputFactory.java_static_fields unless @java_static_fields_started
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
        if name == "InputFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :Input, "org/allbinary/game/input/Input" unless const_defined?(:Input, false)

begin
    InputFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

