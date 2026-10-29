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
# package admin.taghelpers

# require "javax/servlet/jsp/PageContext"

class MultipartRequestParamForwardHelper
    attr_accessor :logUtil, :pageContext, :requestMapInterface, :page, :command, :paramVector

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @pageContext = nil
        @requestMapInterface = nil
        @page = nil
        @command = nil
        @paramVector = nil
    end
    

    def initialize(parentHelperTag, page, command, paramVector, pageContext)
        initialize_fields
        @pageContext = pageContext
        @page = page
        @command = command
        @paramVector = paramVector
        @requestMapInterface = InventoryItemViewParentTagHelper.getInstance().getRequestMapInterface(parentHelperTag)
    end
    

    # throws Exception
    def forward()
        begin
            if self.shouldForward()
                params = self.getParams()
                stringBuffer = StringMaker.new()
                stringBuffer.append(@page)
                stringBuffer.append(params)
                @pageContext.forward(stringBuffer.to_s)
            end
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(commonStrings.EXCEPTION, self, "forward()", e)
            end
        end
    end
    

    def getParams()
        commonSeps = CommonSeps.getInstance()
        _AMP = commonSeps.AMPERSAND
        _QUESTION = commonSeps.QUESTION
        _EQUALS = commonSeps.EQUALS
        hashMap = @requestMapInterface.getRequestHashMap()
        stringBuffer = StringMaker.new()
        size = @paramVector.size()
        (0...size).each do |index|
            key = @paramVector.get(index)
            value = hashMap.get(key)
            if index != 0
                stringBuffer.append(_AMP)
            else
                stringBuffer.append(_QUESTION)
            end
            stringBuffer.append(key)
            stringBuffer.append(_EQUALS)
            stringBuffer.append(value)
        end
        return stringBuffer.to_s
    end
    

    def shouldForward()
        hashMap = @requestMapInterface.getRequestHashMap()
        requestCommand = hashMap.get(GLOBALS2.ADMINCOMMAND)
        if StringValidationUtil.getInstance().isEmpty(@command) || (!StringValidationUtil.getInstance().isEmpty(requestCommand) && (@command <=> requestCommand) == 0)
            return true
        end
        return false
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/globals/GLOBALS2"
require "org/allbinary/logic/communication/http/request/RequestMapInterface"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "tags/HelperTag"
require "admin/taghelpers/InventoryItemViewParentTagHelper"

