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
# package org.allbinary.logic.communication.smtp

require "org/allbinary/data/tree/dom/DomNodeInterface"

class EmailsNotUsed
    include DomNodeInterface
    attr_accessor :logUtil, :commonStrings, :emailInfoVector

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @emailInfoVector = nil
    end
    

    def initialize()
        initialize_fields
        @emailInfoVector = BasicArrayListD.new()
    end
    

    # throws Exception
    def toXmlNode(document)
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PAYMENT)
                @logUtil.putF(@commonStrings.START, self, "toXmlNode")
            end
            node = document.createElement(EmailData::NAME)
            size = @emailInfoVector.size()
            (0...size).each do |index|
                email = @emailInfoVector.get(index)
                emailNode = email.toXmlNode(document)
                if emailNode != nil
                    node.appendChild(emailNode)
                end
            end
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PAYMENT)
                @logUtil.putF(@commonStrings.END_, self, "toXmlNode()")
            end
            return node
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGINGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "toXmlNode()", e)
            end
            error = "Error Processing Order.  Please contact us if error persists.<p/>"
            return BasicErrorNodeUtil.get(document, error)
        end
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/data/tree/dom/BasicErrorNodeUtil"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/logic/communication/smtp/Email"
require "org/allbinary/logic/communication/smtp/EmailData"

