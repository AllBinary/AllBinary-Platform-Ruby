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

# require "java/util/Set"
require "org/allbinary/data/tree/dom/DomNodeInterface"

class UserEmailEventsConfigurationView
    include DomNodeInterface
    attr_accessor :logUtil, :commonStrings, :userEmailEventsConfigurationInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @userEmailEventsConfigurationInterface = nil
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor1(node)
        initialize_fields
        @userEmailEventsConfigurationInterface = UserEmailEventsConfiguration.new()
        childNodeList = node.getChildNodes()
        emailEventConfigurationNodeVector = DomSearchHelper.getAllNodesNoThrow(UserEmailEventConfigurationData::NAME, childNodeList)
        size = emailEventConfigurationNodeVector.size()
        (0...size).each do |index|
            userEmailConfigurationNode = emailEventConfigurationNodeVector.get(index)
            userEmailEventConfigurationView = UserEmailEventConfigurationView.new(userEmailConfigurationNode)
            @userEmailEventsConfigurationInterface.addUserEmailEventConfiguration(userEmailEventConfigurationView.getUserEmailEventConfigurationInterface())
        end
    end
    

    def constructor1(userEmailEventsConfigurationInterface)
        initialize_fields
        @userEmailEventsConfigurationInterface = userEmailEventsConfigurationInterface
    end
    

    def getUserEmailEventsConfigurationInterface()
        return @userEmailEventsConfigurationInterface
    end
    

    # throws Exception
    def toXmlNode(document)
        userEmailConfigurationMapping = UserEmailEventsConfigurationMapping.new(@userEmailEventsConfigurationInterface)
        node = document.createElement(UserEmailEventsConfigurationData::NAME)
        emailEventHashMap = self.getUserEmailEventsConfigurationInterface().getEventConfigurationHashMap()
        set = emailEventHashMap.keySet()
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGING)
            @logUtil.putF("Number Of Email Events Specified in file: " + (set.size()).to_s, self, @commonStrings.CONSTRUCTOR)
        end
        eventNameArray = set.toArray()
        size = eventNameArray.length
        (0...size).each do |index|
            eventName = eventNameArray[index]
            userEmailEventsConfigurationInterface = emailEventHashMap.get(eventName)
            userEmailEventConfigurationView = UserEmailEventConfigurationView.new(userEmailEventsConfigurationInterface)
            node.appendChild(userEmailEventConfigurationView.toXmlNode(document))
        end
        return node
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/w3c/dom/NodeList"
require "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationData"
require "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationInterface"
require "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationView"
require "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfiguration"
require "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfigurationData"
require "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfigurationInterface"
require "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfigurationMapping"

