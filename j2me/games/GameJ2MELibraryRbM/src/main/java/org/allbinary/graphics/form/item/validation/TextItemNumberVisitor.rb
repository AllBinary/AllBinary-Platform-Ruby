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
# package org.allbinary.graphics.form.item.validation

require "org/allbinary/logic/util/visitor/Visitor"

class TextItemNumberVisitor < Visitor
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def visit(anyType)
        value = anyType
        if value.length < 2
            stringValidationUtil = StringValidationUtil.getInstance()
            if stringValidationUtil.isNumber(value)
                return BooleanFactory.getInstance().TRUE
            else
                begin
                    TextNotificationUtil.getInstance().fireError("Numbers Only")
                rescue StandardError => e
                    commonStrings = CommonStrings.getInstance()
                    @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.VISIT, e)
                end
                return BooleanFactory.getInstance().FALSE
            end
        else
            return BooleanFactory.getInstance().FALSE
        end
    end
end

require "org/allbinary/game/input/TextNotificationUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/java/bool/BooleanFactory"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/string/CommonStrings"

