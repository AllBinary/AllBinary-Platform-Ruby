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
# package org.allbinary.game.displayable


class GameLevelDisplayChangeEventListenersFactory
    attr_accessor :list

    def initialize_fields
        @list = BasicArrayListD.new()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return GameLevelDisplayChangeEventListenersFactory.instance
    end
    

    def add(displayChangeEventListener)
        @list.add(displayChangeEventListener)
        DisplayChangeEventHandler.getInstance().addListenerInterface(displayChangeEventListener)
    end
    

    def clear()
        displayChangeEventHandler = DisplayChangeEventHandler.getInstance()
        displayChangeEventListener = nil
        index = @list.size()
        while (index -= 1) >= 0
            displayChangeEventListener = @list.objectArray[index]
            displayChangeEventHandler.removeListener(displayChangeEventListener)
        end
        @list.clear()
    end

    def self.instance()
        GameLevelDisplayChangeEventListenersFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GameLevelDisplayChangeEventListenersFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = GameLevelDisplayChangeEventListenersFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameLevelDisplayChangeEventListenersFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :DisplayChangeEventHandler, "org/allbinary/graphics/displayable/event/DisplayChangeEventHandler"
autoload :DisplayChangeEventListener, "org/allbinary/graphics/displayable/event/DisplayChangeEventListener"
autoload :BasicEventHandler, "org/allbinary/logic/util/event/handler/BasicEventHandler"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"

begin
    GameLevelDisplayChangeEventListenersFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

