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
# package org.allbinary.game.ag.ai

require "org/allbinary/logic/util/visitor/Visitor"

class LastKeyAIVisitor < Visitor
    attr_accessor :logUtil, :TRUE

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @TRUE = BooleanFactory.getInstance().TRUE
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def visit(anyType)
        begin
            basicAI = anyType
            key = basicAI.getLastKey()
            if key != -1
                basicAI.processKeyAI(key)
            end
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.VISIT, e)
        end
        return @TRUE
    end
end

require "org/allbinary/game/ai/BasicAI"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/java/bool/BooleanFactory"
require "org/allbinary/string/CommonStrings"

