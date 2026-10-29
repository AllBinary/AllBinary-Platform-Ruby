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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/displayable/event/DisplayChangeEventHandler"
require "org/allbinary/graphics/displayable/event/DisplayChangeEventListener"
require "org/allbinary/logic/util/event/handler/BasicEventHandler"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

class GameLevelDisplayChangeEventListenersFactory
    @@instance = GameLevelDisplayChangeEventListenersFactory.new()
end

