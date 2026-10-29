# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.media.graphics.geography.map

require "org/allbinary/logic/util/event/handler/BasicEventHandler"

class GeographicMapEventHandler < BasicEventHandler
    attr_accessor :list

    def initialize_fields
        @list = BasicArrayListD.new()
    end
    

    def self.getInstance()
        return GeographicMapEventHandler.instance
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def addListener(gameLayer)
        if !@list.contains(gameLayer)
            @list.add(gameLayer)
        end
    end
    

    def removeAllListeners()
        @list.clear()
        super()
    end
    

    def removeListener(eventListenerInterface)
        @list.remove(eventListenerInterface)
        super(eventListenerInterface)
    end
    

    def fireEvent()
        index = @list.size()
        while (index -= 1) >= 0
            begin
                gameLayer = @list.get(index)
                gameLayer.move()
            rescue StandardError => e
                @logUtil.put(@commonStrings.EXCEPTION, self, EventStrings.getInstance().FIRE_EVENT, e)
            end
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/layer/AllBinaryGameLayer"
require "org/allbinary/logic/util/event/EventListenerInterface"
require "org/allbinary/logic/util/event/EventStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

class GeographicMapEventHandler
    @@instance = GeographicMapEventHandler.new()
end

