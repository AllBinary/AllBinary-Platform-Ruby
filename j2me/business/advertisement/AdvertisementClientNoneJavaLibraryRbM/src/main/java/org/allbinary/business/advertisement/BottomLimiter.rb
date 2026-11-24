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
# package org.allbinary.business.advertisement


module ::Org; module Allbinary; module Business; module Advertisement

class BottomLimiter
    attr_accessor :bottom, :deltaY, :lower, :higher

    def jfields_org_allbinary_business_advertisement_BottomLimiter
        @bottom = 0 unless instance_variable_defined?(:@bottom)
        @deltaY = 0 unless instance_variable_defined?(:@deltaY)
        @lower = 0 unless instance_variable_defined?(:@lower)
        @higher = 0 unless instance_variable_defined?(:@higher)
    end
    

    def self.getInstance()
        return BottomLimiter.instance
    end
    

    def initialize()
        jfields_org_allbinary_business_advertisement_BottomLimiter
    end
    

    def init(lower, higher)
        @lower = lower
        @higher = higher
    end
    

    def update()
        displayInfo = ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance()
        gameAdState = GameAdStateFactory.getInstance().getCurrentInstance()
        if gameAdState.isShowingAt()
            @deltaY = @higher
        else
            @deltaY = @lower
        end
        @bottom = displayInfo.getLastHeight() - @deltaY
    end
    

    def getDeltaY()
        return @deltaY
    end
    

    def getBottom()
        return @bottom
    end

    def self.instance()
        BottomLimiter.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        BottomLimiter.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = BottomLimiter.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BottomLimiter"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; autoload :GameAdState, "org/allbinary/game/GameAdState" unless const_defined?(:GameAdState, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
autoload :GameAdStateFactory, "org/allbinary/business/advertisement/GameAdStateFactory" unless const_defined?(:GameAdStateFactory, false)

begin
    BottomLimiter.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

