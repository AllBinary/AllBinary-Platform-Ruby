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
# package org.allbinary.game.input.mapping

require "java/lang/JavaOverload"
require "org/allbinary/game/input/mapping/InputMapping"

module ::Org; module Allbinary; module Game; module Input; module Mapping

class InputToGameKeyMapping < InputMapping
    attr_accessor :gameKeyFactory, :mappedGameKeys, :platformToGameKeyMapping, :negativePlatformToGameKeyMapping

    def jfields_org_allbinary_game_input_mapping_InputToGameKeyMapping
        @gameKeyFactory = ::Org::Allbinary::Game::Input::GameKeyFactory.getInstance()
        @mappedGameKeys = [@gameKeyFactory.UP, @gameKeyFactory.DOWN, @gameKeyFactory.LEFT, @gameKeyFactory.RIGHT]
        @platformToGameKeyMapping = Array.new(::Org::Allbinary::Game::Input::InputFactory.getInstance().MAX, nil)
        @negativePlatformToGameKeyMapping = Array.new(0, nil)
    end
    

    def self.getNullInstance()
        if InputToGameKeyMapping.instance == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            InputToGameKeyMapping.instance = InputToGameKeyMapping.new()
        end
        return InputToGameKeyMapping.instance
    end
    

    def initialize()
        super()
        jfields_org_allbinary_game_input_mapping_InputToGameKeyMapping
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        self.clear()
    end
    

    def clear()
        (@platformToGameKeyMapping.length - 1).step(0, -(1)) do |index|
            @platformToGameKeyMapping[index] = @gameKeyFactory.NONE
        end
    end
    java_overload :clear, 0
    

    def removeAll()
        InputToGameKeyMapping.superclass.java_super_method(:removeAll, 0).bind(self).call()
        self.clear()
    end
    java_overload :removeAll, 0
    

    def addMapping(inputToGameKeyMapping)
        (inputToGameKeyMapping.getMaxMappable() - 1).step(0, -(1)) do |index|
            input = inputToGameKeyMapping.getInstance(index)
            if input != @gameKeyFactory.NONE
                self.addAll(input, inputToGameKeyMapping.getMappedInput(input))
            end
        end
    end
    java_overload :addMapping, 1
    

    def addAll(input, list)
        (list.size() - 1).step(0, -(1)) do |index|
            mappedToInput = list.objectArray[index]
            self.add(input, mappedToInput)
        end
    end
    java_overload :addAll, 2
    

    def add(input, mappedToInput)
        InputToGameKeyMapping.superclass.java_super_method(:add, 2).bind(self).call(input, mappedToInput)
        self.set(input, mappedToInput)
    end
    java_overload :add, 2
    

    def remove(input, mappedToInput)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().START_LABEL).append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(input)).append(" == ").append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(mappedToInput)).to_s, self, "InputToGameKeyMapping::remove")
        InputToGameKeyMapping.superclass.java_super_method(:remove, 2).bind(self).call(input, mappedToInput)
        self.set(input, @gameKeyFactory.NONE)
    end
    java_overload :remove, 2
    

    def set(input, mappedToInput)
        id = mappedToInput.getId()
        if id >= 0 && id < @platformToGameKeyMapping.length
            @platformToGameKeyMapping[id] = input
        end
    end
    java_overload :set, 2
    

    def getMaxMappable()
        return @platformToGameKeyMapping.length
    end
    java_overload :getMaxMappable, 0
    

    def getReverseInstance(id)
        list = ::Org::Allbinary::Util::BasicArrayListD.new()
        inputFactory = ::Org::Allbinary::Game::Input::InputFactory.getInstance()
        (0...@platformToGameKeyMapping.length).each do |index|
            if @platformToGameKeyMapping[index].getId() == id
                input = inputFactory.getInstanceById(index)
                if input != nil
                    list.add(input)
                end
            end
        end
        return list
    end
    java_overload :getReverseInstance, 1
    

    # throws Exception
    def initGameKey(canvas, gameKey)
        key = canvas.getKeyCode(gameKey.getId())
        if key < 0 && -key < @negativePlatformToGameKeyMapping.length
            @negativePlatformToGameKeyMapping[-key] = gameKey
        elsif key > 0
            if @platformToGameKeyMapping[key] == @gameKeyFactory.NONE
                @platformToGameKeyMapping[key] = gameKey
            end
        else
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(gameKey.to_s).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().COLON_SEP).appendint(key).to_s, self, @commonStrings.INIT, StandardError.new())
        end
    end
    java_overload :initGameKey, 2
    

    # throws Exception
    def getSmallestCanvasGameKeyCode(canvas)
        nextKey = 0
        smallestKey = 0
        index = @mappedGameKeys.length
        while (index -= 1) >= 0
            nextKey = canvas.getKeyCode(@mappedGameKeys[index].getId())
            if nextKey < smallestKey
                smallestKey = nextKey
            end
        end
        return smallestKey
    end
    java_overload :getSmallestCanvasGameKeyCode, 1
    

    def init(canvas)
        begin
            negativePlatformToGameKeyMapping = Array.new(0, nil)
            smallestKey = self.getSmallestCanvasGameKeyCode(canvas)
            if smallestKey < 0
                smallestKey -= 1
                if smallestKey < -256
                    smallestKey = -256
                end
                negativePlatformToGameKeyMapping = Array.new(-smallestKey, nil)
                index = negativePlatformToGameKeyMapping.length
                while (index -= 1) >= 0
                    negativePlatformToGameKeyMapping[index] = @gameKeyFactory.NONE
                end
                @negativePlatformToGameKeyMapping = negativePlatformToGameKeyMapping
            end
            index = @mappedGameKeys.length
            while (index -= 1) >= 0
                self.initGameKey(canvas, @mappedGameKeys[index])
            end
        rescue StandardError => t
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.INIT, t)
        end
    end
    java_overload :init, 1
    

    def getInstanceForCanvas(canvas, id)
        if id >= 0 && id < @platformToGameKeyMapping.length
            return @platformToGameKeyMapping[id]
        elsif id < 0 && -id < @negativePlatformToGameKeyMapping.length
            return @negativePlatformToGameKeyMapping[-id]
        else
            return @gameKeyFactory.NONE
        end
    end
    java_overload :getInstanceForCanvas, 2
    

    def getInstance(id)
        if id >= 0 && id < @platformToGameKeyMapping.length
            return @platformToGameKeyMapping[id]
        elsif id < 0 && -id < @negativePlatformToGameKeyMapping.length
            return @negativePlatformToGameKeyMapping[-id]
        else
            return @gameKeyFactory.NONE
        end
    end
    java_overload :getInstance, 1

    def self.instance()
        InputToGameKeyMapping.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        InputToGameKeyMapping.java_static_fields unless @java_static_fields_started
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
        if name == "InputToGameKeyMapping"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameKey, "org/allbinary/game/input/GameKey" unless const_defined?(:GameKey, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameKeyFactory, "org/allbinary/game/input/GameKeyFactory" unless const_defined?(:GameKeyFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :Input, "org/allbinary/game/input/Input" unless const_defined?(:Input, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :InputFactory, "org/allbinary/game/input/InputFactory" unless const_defined?(:InputFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end

begin
    InputToGameKeyMapping.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

