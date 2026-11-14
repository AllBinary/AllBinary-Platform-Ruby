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

autoload :HashMap, "java/util/HashMap"
autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper"
autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :UserEmailEventsConfigurationData, "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfigurationData"
autoload :UserEmailEventsConfigurationInterface, "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfigurationInterface"
autoload :UserEmailEventsConfigurationView, "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfigurationView"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"
autoload :NodeList, "org/w3c/dom/NodeList"
autoload :UserEmailConfiguration, "org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfiguration"
autoload :UserEmailConfigurationData, "org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationData"
autoload :UserEmailConfigurationInterface, "org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationInterface"
autoload :UserEmailConfigurationMapping, "org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationMapping"

