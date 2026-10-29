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
# package org.allbinary.game.input


class PlatformInputMappingFactory
    attr_accessor :logUtil, :inputToGameKeyMapping

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @inputToGameKeyMapping = PersistentInputMapping.getNullInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return PlatformInputMappingFactory.instance
    end
    

    def getPersistentInputMappingInstance()
        begin
            if @inputToGameKeyMapping == PersistentInputMapping.getNullInstance()
                @inputToGameKeyMapping = LaptopGameInputMapping.new()
            end
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.GET_INSTANCE, e)
        end
        return @inputToGameKeyMapping
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/input/mapping/PersistentInputMapping"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/game/input/LaptopGameInputMapping"

class PlatformInputMappingFactory
    @@instance = PlatformInputMappingFactory.new()
end

