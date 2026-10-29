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
# package org.allbinary.game.layer.resources


class BasicGameResources
    attr_accessor :logUtil, :RESOURCE, :RESOURCE_DESTROY

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @RESOURCE = StringUtil.getInstance().EMPTY_STRING
        @RESOURCE_DESTROY = StringUtil.getInstance().EMPTY_STRING
    end
    

    def initialize()
        initialize_fields
    end
    

    def init(_ROOT, _SIZE)
        begin
            scale = GameConfigurationCentral.getInstance().SCALE.getValue().to_i
            if scale > 1 && scale - 1 < _SIZE.length
                self.append(_ROOT, _SIZE[scale - 1])
            else
                raise StandardError.new(StringMaker.new().append("Invalid Value: ").appendint(scale).to_s)
            end
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.INIT, e)
        end
    end
    

    # throws Exception
    def append(_ROOT, sizeString)
        _DESTROY = "_destroy"
        string = self.getString()
        BasicGameResources.stringBuffer.delete(0, BasicGameResources.stringBuffer.length())
        BasicGameResources.stringBuffer.append(_ROOT)
        BasicGameResources.stringBuffer.append(string)
        BasicGameResources.stringBuffer.append(sizeString)
        @RESOURCE = BasicGameResources.stringBuffer.to_s
        BasicGameResources.stringBuffer.delete(0, BasicGameResources.stringBuffer.length())
        BasicGameResources.stringBuffer.append(_ROOT)
        BasicGameResources.stringBuffer.append(_DESTROY)
        BasicGameResources.stringBuffer.append(string)
        BasicGameResources.stringBuffer.append(sizeString)
        @RESOURCE_DESTROY = BasicGameResources.stringBuffer.to_s
    end
    

    # throws Exception
    def getString()
        return GameGraphicsResourceUtil.getInstance().getName()
    end

    def self.stringBuffer()
        return defined?(@@stringBuffer) ? @@stringBuffer : nil
    end

    def self.stringBuffer=(value)
        @@stringBuffer = value
    end
end

require "org/allbinary/game/configuration/GameConfigurationCentral"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/game/layer/resources/GameGraphicsResourceUtil"

class BasicGameResources
    @@stringBuffer = StringMaker.new()
end

