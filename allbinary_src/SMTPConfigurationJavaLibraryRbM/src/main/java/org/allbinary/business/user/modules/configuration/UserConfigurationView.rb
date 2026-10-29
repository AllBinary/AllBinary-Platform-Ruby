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
# package org.allbinary.business.user.modules.configuration

require "org/allbinary/data/tree/dom/DomNodeInterface"

class UserConfigurationView
    include DomNodeInterface
    attr_accessor :userConfigurationInterface

    def initialize_fields
        @userConfigurationInterface = nil
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor1(node)
        initialize_fields
        @userConfigurationInterface = UserConfiguration.new()
        childNodeList = node.getChildNodes()
        emailConfigurationNode = DomSearchHelper.getNode(UserEmailConfigurationData::NAME, childNodeList)
        userEmailConfigurationView = UserEmailConfigurationView.new(emailConfigurationNode)
        userEmailConfigurationInterface = userEmailConfigurationView.getEmailConfigurationInterface()
        @userConfigurationInterface.setUserEmailConfigurationInterface(userEmailConfigurationInterface)
        timeCreatedNode = DomSearchHelper.getNode(EntryData.getInstance().TIMECREATED, childNodeList)
        timeCreatedView = TimeCreatedView.new(timeCreatedNode)
        @userConfigurationInterface.setTimeCreated(timeCreatedView.getTimeCreated())
        timeLastModifiedNode = DomSearchHelper.getNode(EntryData.getInstance().LASTMODIFIED, childNodeList)
        timeLastModifiedView = TimeLastModifiedView.new(timeLastModifiedNode)
        @userConfigurationInterface.setTimeLastModified(timeLastModifiedView.getTimeLastModified())
    end
    

    def constructor1(userConfigurationInterface)
        initialize_fields
        @userConfigurationInterface = userConfigurationInterface
    end
    

    def getUserConfigurationInterface()
        return @userConfigurationInterface
    end
    

    # throws Exception
    def toXmlNode(document)
        node = document.createElement(UserConfigurationData::NAME)
        userEmailConfigurationView = UserEmailConfigurationView.new(@userConfigurationInterface.getUserEmailConfigurationInterface())
        node.appendChild(userEmailConfigurationView.toXmlNode(document))
        timeCreatedView = TimeCreatedView.new(@userConfigurationInterface.getTimeCreated())
        node.appendChild(timeCreatedView.toXmlNode(document))
        timeLastModifiedView = TimeLastModifiedView.new(@userConfigurationInterface.getTimeLastModified())
        node.appendChild(timeLastModifiedView.toXmlNode(document))
        return node
    end
end

require "org/allbinary/business/entry/EntryData"
require "org/allbinary/business/time/created/TimeCreatedView"
require "org/allbinary/business/time/modified/TimeLastModifiedView"
require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationData"
require "org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationInterface"
require "org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationView"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/w3c/dom/NodeList"
require "org/allbinary/business/user/modules/configuration/UserConfiguration"
require "org/allbinary/business/user/modules/configuration/UserConfigurationData"
require "org/allbinary/business/user/modules/configuration/UserConfigurationInterface"

