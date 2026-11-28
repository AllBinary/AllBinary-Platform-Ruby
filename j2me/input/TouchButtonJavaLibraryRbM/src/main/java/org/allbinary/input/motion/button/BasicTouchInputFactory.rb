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
# package org.allbinary.input.motion.button

require "java/lang/Object"

module ::Org; module Allbinary; module Input; module Motion; module Button

class BasicTouchInputFactory
    attr_accessor :logUtil, :SPECIAL_BUTTON_SEVEN_TESTING_ONLY, :SPECIAL_BUTTON_EIGHT_TESTING_ONLY, :SPECIAL_BUTTON_SIX, :SPECIAL_BUTTON_FIVE, :SPECIAL_BUTTON_FOUR, :SPECIAL_BUTTON_THREE, :SPECIAL_BUTTON_TWO, :SPECIAL_BUTTON_ONE, :UP, :LEFT, :RIGHT, :DOWN, :NONE, :initialized, :list

    def jfields_org_allbinary_input_motion_button_BasicTouchInputFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @SPECIAL_BUTTON_SEVEN_TESTING_ONLY = nil unless instance_variable_defined?(:@SPECIAL_BUTTON_SEVEN_TESTING_ONLY)
        @SPECIAL_BUTTON_EIGHT_TESTING_ONLY = nil unless instance_variable_defined?(:@SPECIAL_BUTTON_EIGHT_TESTING_ONLY)
        @SPECIAL_BUTTON_SIX = nil unless instance_variable_defined?(:@SPECIAL_BUTTON_SIX)
        @SPECIAL_BUTTON_FIVE = nil unless instance_variable_defined?(:@SPECIAL_BUTTON_FIVE)
        @SPECIAL_BUTTON_FOUR = nil unless instance_variable_defined?(:@SPECIAL_BUTTON_FOUR)
        @SPECIAL_BUTTON_THREE = nil unless instance_variable_defined?(:@SPECIAL_BUTTON_THREE)
        @SPECIAL_BUTTON_TWO = nil unless instance_variable_defined?(:@SPECIAL_BUTTON_TWO)
        @SPECIAL_BUTTON_ONE = nil unless instance_variable_defined?(:@SPECIAL_BUTTON_ONE)
        @UP = nil unless instance_variable_defined?(:@UP)
        @LEFT = nil unless instance_variable_defined?(:@LEFT)
        @RIGHT = nil unless instance_variable_defined?(:@RIGHT)
        @DOWN = nil unless instance_variable_defined?(:@DOWN)
        @NONE = nil unless instance_variable_defined?(:@NONE)
        @initialized = false
        @list = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def self.getInstance()
        if @@instance == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            @@instance = BasicTouchInputFactory.new()
        end
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_input_motion_button_BasicTouchInputFactory
        _MAX = ::Org::Allbinary::Game::Input::InputFactory.getInstance().MAX
        @SPECIAL_BUTTON_SEVEN_TESTING_ONLY = TouchButtonInput.new(_MAX - 41, "Button 7 - Testing Only May Cross Over Key Values")
        @SPECIAL_BUTTON_EIGHT_TESTING_ONLY = TouchButtonInput.new(_MAX - 42, "Button 8 - Testing Only May Cross Over Key Values")
        @SPECIAL_BUTTON_SIX = TouchButtonInput.new(_MAX - 30, "Button 6")
        @SPECIAL_BUTTON_FIVE = TouchButtonInput.new(_MAX - 31, "Button 5")
        @SPECIAL_BUTTON_FOUR = TouchButtonInput.new(_MAX - 32, "Button 4")
        @SPECIAL_BUTTON_THREE = TouchButtonInput.new(_MAX - 33, "Button 3")
        @SPECIAL_BUTTON_TWO = TouchButtonInput.new(_MAX - 34, "Button 2")
        @SPECIAL_BUTTON_ONE = TouchButtonInput.new(_MAX - 35, "Button 1")
        @UP = TouchButtonInput.new(_MAX - 36, "Up Button")
        @LEFT = TouchButtonInput.new(_MAX - 37, "Left Button")
        @RIGHT = TouchButtonInput.new(_MAX - 38, "Right Button")
        @DOWN = TouchButtonInput.new(_MAX - 39, "Down Button")
        @NONE = TouchButtonInput.new(_MAX - 40, "No Button")
    end
    

    def init(inputToGameKeyMapping)
        java_monitor.synchronize do
        if !@initialized
            @initialized = true
            @list.add(@UP)
            @list.add(@LEFT)
            @list.add(@RIGHT)
            @list.add(@DOWN)
            @list.add(@SPECIAL_BUTTON_TWO)
            @list.add(@SPECIAL_BUTTON_FOUR)
            @list.add(@SPECIAL_BUTTON_THREE)
            @list.add(@SPECIAL_BUTTON_ONE)
            @list.add(@SPECIAL_BUTTON_FIVE)
            @list.add(@SPECIAL_BUTTON_SIX)
            @list.add(@SPECIAL_BUTTON_SIX)
            @list.add(@SPECIAL_BUTTON_SEVEN_TESTING_ONLY)
            @list.add(@SPECIAL_BUTTON_EIGHT_TESTING_ONLY)
            self.updateAllFromList(@list, inputToGameKeyMapping)
        end
        end
    end
    

    def updateAll(inputToGameKeyMapping)
        self.updateAllFromList(@list, inputToGameKeyMapping)
    end
    

    def updateAllFromList(list, inputToGameKeyMapping)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().START_LABEL).appendint(list.size()).to_s, self, "updateAll")
        touchButtonInput = nil
        (list.size() - 1).step(0, -(1)) do |index|
            touchButtonInput = list.objectArray[index]
            touchButtonInput.update(inputToGameKeyMapping)
        end
    end
    

    def getList()
        return @list
    end

    def self.instance()
        BasicTouchInputFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        BasicTouchInputFactory.java_static_fields unless @java_static_fields_started
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
        if name == "BasicTouchInputFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Input; autoload :InputFactory, "org/allbinary/game/input/InputFactory" unless const_defined?(:InputFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Mapping; autoload :InputToGameKeyMapping, "org/allbinary/game/input/mapping/InputToGameKeyMapping" unless const_defined?(:InputToGameKeyMapping, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :TouchButtonInput, "org/allbinary/input/motion/button/TouchButtonInput" unless const_defined?(:TouchButtonInput, false)

begin
    BasicTouchInputFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

