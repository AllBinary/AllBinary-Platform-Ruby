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
# package org.allbinary.game.tick

require "java/lang/JavaOverload"
require "org/allbinary/game/tick/TickableInterface"

module ::Org; module Allbinary; module Game; module Tick

class NullTickable
    include TickableInterface
    attr_accessor :NAME

    def jfields_org_allbinary_game_tick_NullTickable
        @NAME = "NulLTickable"
    end

    def initialize
        jfields_org_allbinary_game_tick_NullTickable
    end
    

    def self.getInstance()
        return NullTickable::SINGLETON
    end
    

    # throws Exception
    def processTick(allBinaryLayerManager)
    end
    java_overload :processTick, 1
    

    def getName()
        return @NAME
    end
    java_overload :getName, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, NullTickable.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NullTickable"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end

begin
    NullTickable.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

