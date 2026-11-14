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
# package org.allbinary.logic.communication.smtp.configuration.user.event

require "org/allbinary/data/tree/dom/DomNodeInterface"

class UserEmailEventConfigurationView
    include DomNodeInterface
    attr_accessor :userEmailEventConfigurationInterface

    def initialize_fields
        @userEmailEventConfigurationInterface = nil
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
        hashMap = StdUtil.getInstance().createHashMap()
        name = DomNodeHelper.getTextNodeValue(UserEmailEventConfigurationData::NAME, childNodeList)
        hashMap.put(UserEmailEventConfigurationData::NAME, name)
        eventListenerClassPath = DomNodeHelper.getTextNodeValue(UserEmailEventConfigurationData::LISTENER_CLASSPATH, childNodeList)
        hashMap.put(UserEmailEventConfigurationData::LISTENER_CLASSPATH, eventListenerClassPath)
        self.setUserEmailEventConfigurationInterface(UserEmailEventConfiguration.new(hashMap))
    end
    

    def constructor1(userEmailEventConfigurationInterface)
        initialize_fields
        self.setUserEmailEventConfigurationInterface(userEmailEventConfigurationInterface)
    end
    

    # throws Exception
    def toXmlNode(document)
        userEmailEventConfigurationMapping = UserEmailEventConfigurationMapping.new(self.getUserEmailEventConfigurationInterface())
        hashMap = userEmailEventConfigurationMapping.toHashMap()
        node = ModDomHelper.createNameValueNodes(document, UserEmailEventConfigurationData::NAME, hashMap)
        return node
    end
    

    def getUserEmailEventConfigurationInterface()
        return @userEmailEventConfigurationInterface
    end
    

    def setUserEmailEventConfigurationInterface(userEmailEventConfigurationInterface)
        @userEmailEventConfigurationInterface = userEmailEventConfigurationInterface
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper"
autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"
autoload :NodeList, "org/w3c/dom/NodeList"
autoload :UserEmailEventConfiguration, "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfiguration"
autoload :UserEmailEventConfigurationData, "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationData"
autoload :UserEmailEventConfigurationInterface, "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationInterface"
autoload :UserEmailEventConfigurationMapping, "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationMapping"

