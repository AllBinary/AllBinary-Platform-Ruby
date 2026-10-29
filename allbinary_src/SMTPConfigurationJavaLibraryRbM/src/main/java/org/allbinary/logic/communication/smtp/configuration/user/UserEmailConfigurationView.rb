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
# package org.allbinary.logic.communication.smtp.configuration.user

require "org/allbinary/data/tree/dom/DomNodeInterface"

class UserEmailConfigurationView
    include DomNodeInterface
    attr_accessor :logUtil, :commonStrings, :userEmailConfigurationInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @userEmailConfigurationInterface = nil
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor1(node)
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGING)
            @logUtil.putF(@commonStrings.CONSTRUCTOR, self, @commonStrings.CONSTRUCTOR)
        end
        @userEmailConfigurationInterface = UserEmailConfiguration.new()
        childNodeList = node.getChildNodes()
        userEmailEventsConfigurationNode = DomSearchHelper.getNodeNoThrow(UserEmailEventsConfigurationData::NAME, childNodeList)
        userEmailEventsConfigurationView = UserEmailEventsConfigurationView.new(userEmailEventsConfigurationNode)
        @userEmailConfigurationInterface.setUserEmailEventsConfigurationInterface(userEmailEventsConfigurationView.getUserEmailEventsConfigurationInterface())
    end
    

    def constructor1(userEmailConfigurationInterface)
        initialize_fields
        @userEmailConfigurationInterface = userEmailConfigurationInterface
    end
    

    def getEmailConfigurationInterface()
        return @userEmailConfigurationInterface
    end
    

    # throws Exception
    def toXmlNode(document)
        emailConfigurationMapping = UserEmailConfigurationMapping.new(@userEmailConfigurationInterface)
        hashMap = emailConfigurationMapping.toHashMap()
        node = ModDomHelper.createNameValueNodes(document, UserEmailConfigurationData::NAME, hashMap)
        userEmailConfigurationInterface = self.getEmailConfigurationInterface()
        userEmailEventsConfigurationInterface = userEmailConfigurationInterface.getUserEmailEventsConfigurationInterface()
        userEmailEventsConfigurationView = UserEmailEventsConfigurationView.new(userEmailEventsConfigurationInterface)
        node.appendChild(userEmailEventsConfigurationView.toXmlNode(document))
        return node
    end
end

require "java/util/HashMap"
require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfigurationData"
require "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfigurationInterface"
require "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfigurationView"
require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/w3c/dom/NodeList"
require "org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfiguration"
require "org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationData"
require "org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationInterface"
require "org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationMapping"

