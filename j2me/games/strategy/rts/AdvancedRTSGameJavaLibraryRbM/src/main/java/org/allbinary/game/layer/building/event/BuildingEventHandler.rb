# 
# AllBinary Open License Version 1 
# Copyright (c) 2006 AllBinary 
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
# package org.allbinary.game.layer.building.event

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/handler/BasicEventHandler"

module ::Org; module Allbinary; module Game; module Layer; module Building; module Event

class BuildingEventHandler < ::Org::Allbinary::Logic::Util::Event::Handler::BasicEventHandler
    

    def initialize()
        super()
    end
    

    def self.getInstance()
        return @@eventHandler
    end
    

    # throws Exception
    def process(eventObject, eventListenerInterface)
        buildingEventListenerInterface = (eventListenerInterface)
        buildingEventListenerInterface.onBuildingEvent(eventObject)
    end
    java_overload :process, 2

    def self.eventHandler()
        BuildingEventHandler.java_static_fields unless @java_static_fields_started
        return defined?(@@eventHandler) ? @@eventHandler : nil
    end

    def self.eventHandler=(value)
        BuildingEventHandler.java_static_fields unless @java_static_fields_started
        @@eventHandler = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@eventHandler = BuildingEventHandler.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BuildingEventHandler"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Layer; autoload :RTSLayerEvent, "org/allbinary/game/layer/RTSLayerEvent" unless const_defined?(:RTSLayerEvent, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventListenerInterface, "org/allbinary/logic/util/event/EventListenerInterface" unless const_defined?(:EventListenerInterface, false); end; end; end; end; end
autoload :BuildingEventListenerInterface, "org/allbinary/game/layer/building/event/BuildingEventListenerInterface" unless const_defined?(:BuildingEventListenerInterface, false)

begin
    BuildingEventHandler.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

