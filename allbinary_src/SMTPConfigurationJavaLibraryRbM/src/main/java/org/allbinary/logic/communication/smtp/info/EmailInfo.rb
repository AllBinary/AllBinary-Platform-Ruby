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
# package org.allbinary.logic.communication.smtp.info


class EmailInfo
    attr_accessor :logUtil, :basicEmailInfo, :htmlAttachment, :contentBase

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @basicEmailInfo = nil
        @htmlAttachment = nil
        @contentBase = nil
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 3 then constructor3(*args)
        end
    end
    

    def constructor1(basicEmailInfo)
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGING)
            commonStrings = CommonStrings.getInstance()
            @logUtil.putF(commonStrings.START, self, commonStrings.CONSTRUCTOR)
        end
        self.init(basicEmailInfo, nil, nil)
    end
    

    def constructor3(basicEmailInfo, htmlAttachment, contentBase)
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGING)
            commonStrings = CommonStrings.getInstance()
            @logUtil.putF(commonStrings.START, self, commonStrings.CONSTRUCTOR)
        end
        self.init(basicEmailInfo, nil, nil)
    end
    

    def init(basicEmailInfo, htmlAttachment, contentBase)
        @basicEmailInfo = basicEmailInfo
        @htmlAttachment = htmlAttachment
        @contentBase = contentBase
    end
    

    def getBasicEmailInfo()
        return @basicEmailInfo
    end
    

    def getHtmlAttachment()
        return @htmlAttachment
    end
    

    def getContentBase()
        return @contentBase
    end
    

    def toString()
        return "Email Info: \n " + self.getBasicEmailInfo().to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/communication/smtp/info/BasicEmailInfo"

