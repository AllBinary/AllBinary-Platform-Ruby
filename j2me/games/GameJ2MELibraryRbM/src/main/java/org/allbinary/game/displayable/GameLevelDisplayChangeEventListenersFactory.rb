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


module ::Org; module Allbinary; module Game; module Displayable

class GameLevelDisplayChangeEventListenersFactory
    attr_accessor :list

    def jfields_org_allbinary_game_displayable_GameLevelDisplayChangeEventListenersFactory
        @list = ::Org::Allbinary::Util::BasicArrayListD.new()
    end

    def initialize
        jfields_org_allbinary_game_displayable_GameLevelDisplayChangeEventListenersFactory
    end
    

    def self.getInstance()
        return GameLevelDisplayChangeEventListenersFactory.instance
    end
    

    def add(displayChangeEventListener)
        @list.add(displayChangeEventListener)
        ::Org::Allbinary::Graphics::Displayable::Event::DisplayChangeEventHandler.getInstance().addListenerInterface(displayChangeEventListener)
    end
    

    def clear()
        displayChangeEventHandler = ::Org::Allbinary::Graphics::Displayable::Event::DisplayChangeEventHandler.getInstance()
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

module ::Org; module Allbinary; module Graphics; module Displayable; module Event; autoload :DisplayChangeEventHandler, "org/allbinary/graphics/displayable/event/DisplayChangeEventHandler" unless const_defined?(:DisplayChangeEventHandler, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; module Event; autoload :DisplayChangeEventListener, "org/allbinary/graphics/displayable/event/DisplayChangeEventListener" unless const_defined?(:DisplayChangeEventListener, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; module Handler; autoload :BasicEventHandler, "org/allbinary/logic/util/event/handler/BasicEventHandler" unless const_defined?(:BasicEventHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end

begin
    GameLevelDisplayChangeEventListenersFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

