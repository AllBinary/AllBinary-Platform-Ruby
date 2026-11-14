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
# package org.allbinary.business.context.configuration

require "org/allbinary/data/tree/dom/DomNodeInterface"

class ContextConfigurationView
    include DomNodeInterface
    attr_accessor :contextConfigurationInterface

    def initialize_fields
        @contextConfigurationInterface = nil
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
        @contextConfigurationInterface = ContextConfiguration.new()
        emailConfigurationNode = DomSearchHelper.getNode(EmailServerConfigurationData::NAME, childNodeList)
        emailServerConfigurationView = EmailServerConfigurationView.new(emailConfigurationNode)
        @contextConfigurationInterface.setEmailServerConfigurationInterface(emailServerConfigurationView.getEmailConfigurationInterface())
    end
    

    def constructor1(contextConfigurationInterface)
        initialize_fields
        @contextConfigurationInterface = contextConfigurationInterface
    end
    

    def getContextConfigurationInterface()
        return @contextConfigurationInterface
    end
    

    # throws Exception
    def toXmlNode(document)
        node = document.createElement(ContextConfigurationData.getInstance().NAME)
        emailServerConfigurationView = EmailServerConfigurationView.new(self.getContextConfigurationInterface().getEmailServerConfigurationInterface())
        node.appendChild(emailServerConfigurationView.toXmlNode(document))
        return node
    end
end

autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper"
autoload :EmailServerConfigurationData, "org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfigurationData"
autoload :EmailServerConfigurationInterface, "org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfigurationInterface"
autoload :EmailServerConfigurationView, "org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfigurationView"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"
autoload :NodeList, "org/w3c/dom/NodeList"
autoload :ContextConfiguration, "org/allbinary/business/context/configuration/ContextConfiguration"
autoload :ContextConfigurationData, "org/allbinary/business/context/configuration/ContextConfigurationData"
autoload :ContextConfigurationInterface, "org/allbinary/business/context/configuration/ContextConfigurationInterface"

