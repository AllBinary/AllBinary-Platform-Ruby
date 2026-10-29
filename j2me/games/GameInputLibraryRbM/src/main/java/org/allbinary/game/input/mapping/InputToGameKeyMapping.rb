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

# require "javax/microedition/lcdui/Canvas"
require "org/allbinary/game/input/mapping/InputMapping"

class InputToGameKeyMapping < InputMapping
    attr_accessor :gameKeyFactory, :mappedGameKeys, :platformToGameKeyMapping, :negativePlatformToGameKeyMapping

    def initialize_fields
        @gameKeyFactory = GameKeyFactory.getInstance()
        @mappedGameKeys = [@gameKeyFactory.UP, @gameKeyFactory.DOWN, @gameKeyFactory.LEFT, @gameKeyFactory.RIGHT]
        @platformToGameKeyMapping = Array.new(InputFactory.getInstance().MAX, nil)
        @negativePlatformToGameKeyMapping = Array.new(0, nil)
    end
    

    def self.getNullInstance()
        if InputToGameKeyMapping.instance == NullUtil.getInstance().NULL_OBJECT
            InputToGameKeyMapping.instance = InputToGameKeyMapping.new()
        end
        return InputToGameKeyMapping.instance
    end
    

    def initialize()
        super()
        initialize_fields
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        self.clear()
    end
    

    def clear()
        (@platformToGameKeyMapping.length - 1).step(0, -(1)) do |index|
            @platformToGameKeyMapping[index] = @gameKeyFactory.NONE
        end
    end
    

    def removeAll()
        super()
        self.clear()
    end
    

    def addMapping(inputToGameKeyMapping)
        (inputToGameKeyMapping.getMaxMappable() - 1).step(0, -(1)) do |index|
            input = inputToGameKeyMapping.getInstance(index)
            if input != @gameKeyFactory.NONE
                self.addAll(input, inputToGameKeyMapping.getMappedInput(input))
            end
        end
    end
    

    def addAll(input, list)
        (list.size() - 1).step(0, -(1)) do |index|
            mappedToInput = list.objectArray[index]
            self.add(input, mappedToInput)
        end
    end
    

    def add(input, mappedToInput)
        super(input, mappedToInput)
        self.set(input, mappedToInput)
    end
    

    def remove(input, mappedToInput)
        @logUtil.putF(StringMaker.new().append(CommonLabels.getInstance().START_LABEL).append(StringUtil.getInstance().toString(input)).append(" == ").append(StringUtil.getInstance().toString(mappedToInput)).to_s, self, "InputToGameKeyMapping::remove")
        super(input, mappedToInput)
        self.set(input, @gameKeyFactory.NONE)
    end
    

    def set(input, mappedToInput)
        id = mappedToInput.getId()
        if id >= 0 && id < @platformToGameKeyMapping.length
            @platformToGameKeyMapping[id] = input
        end
    end
    

    def getMaxMappable()
        return @platformToGameKeyMapping.length
    end
    

    def getReverseInstance(id)
        list = BasicArrayListD.new()
        inputFactory = InputFactory.getInstance()
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
            PreLogUtil.putOE(StringMaker.new().append(gameKey.to_s).append(CommonSeps.getInstance().COLON_SEP).appendint(key).to_s, self, @commonStrings.INIT, StandardError.new())
        end
    end
    

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
    

    def getInstanceForCanvas(canvas, id)
        if id >= 0 && id < @platformToGameKeyMapping.length
            return @platformToGameKeyMapping[id]
        elsif id < 0 && -id < @negativePlatformToGameKeyMapping.length
            return @negativePlatformToGameKeyMapping[-id]
        else
            return @gameKeyFactory.NONE
        end
    end
    

    def getInstance(id)
        if id >= 0 && id < @platformToGameKeyMapping.length
            return @platformToGameKeyMapping[id]
        elsif id < 0 && -id < @negativePlatformToGameKeyMapping.length
            return @negativePlatformToGameKeyMapping[-id]
        else
            return @gameKeyFactory.NONE
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/input/GameKey"
require "org/allbinary/game/input/GameKeyFactory"
require "org/allbinary/game/input/Input"
require "org/allbinary/game/input/InputFactory"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

class InputToGameKeyMapping
    @@instance = NullUtil.getInstance().NULL_OBJECT
end

