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

require "org/allbinary/data/tree/dom/document/mapping/DomDocumentMappingInterface"

class UserConfigurationDomDocumentMapping
    include DomDocumentMappingInterface
    attr_accessor :userConfigurationInterface

    def initialize_fields
        @userConfigurationInterface = nil
    end
    

    def initialize(userConfigurationInterface)
        initialize_fields
        @userConfigurationInterface = userConfigurationInterface
    end
    

    # throws Exception
    def toXmlDoc()
        document = DomDocumentHelper.create()
        node = UserConfigurationView.new(@userConfigurationInterface).toXmlNode(document)
        document.appendChild(node)
        return document
    end
    

    # throws Exception
    def toDomDocumentString()
        return XmlDocumentHelper.toString(self.toXmlDoc())
    end
end

require "org/allbinary/data/tree/dom/document/DomDocumentHelper"
require "org/allbinary/data/tree/dom/document/XmlDocumentHelper"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/business/user/modules/configuration/UserConfigurationInterface"
require "org/allbinary/business/user/modules/configuration/UserConfigurationView"

