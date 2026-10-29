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
# package org.allbinary.logic.communication.smtp.configuration.server

require "org/allbinary/data/tree/dom/DomNodeInterface"

class EmailServerConfigurationView
    include DomNodeInterface
    attr_accessor :emailServerConfigurationInterface

    def initialize_fields
        @emailServerConfigurationInterface = nil
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor1(node)
        initialize_fields
        childNodeList = node.getChildNodes()
        server = DomNodeHelper.getTextNodeValue(EmailServerConfigurationData::SERVER, childNodeList)
        accountName = DomNodeHelper.getTextNodeValue(EmailServerConfigurationData::ACCOUNT, childNodeList)
        password = DomNodeHelper.getTextNodeValue(EmailServerConfigurationData::PASSWORD, childNodeList)
        @emailServerConfigurationInterface = EmailServerConfiguration.new(accountName, password, server)
    end
    

    def constructor1(emailServerConfigurationInterface)
        initialize_fields
        @emailServerConfigurationInterface = emailServerConfigurationInterface
    end
    

    def getEmailConfigurationInterface()
        return @emailServerConfigurationInterface
    end
    

    # throws Exception
    def toXmlNode(document)
        emailConfigurationMapping = EmailServerConfigurationMapping.new(@emailServerConfigurationInterface)
        hashMap = emailConfigurationMapping.toHashMap()
        node = ModDomHelper.createNodeWithValueNodes(document, EmailServerConfigurationData::NAME, hashMap)
        return node
    end
end

require "java/util/HashMap"
require "org/allbinary/data/tree/dom/DomNodeHelper"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/w3c/dom/NodeList"
require "org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfiguration"
require "org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfigurationData"
require "org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfigurationInterface"
require "org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfigurationMapping"

