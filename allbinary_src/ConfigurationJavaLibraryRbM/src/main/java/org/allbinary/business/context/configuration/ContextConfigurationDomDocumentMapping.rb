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

require "org/allbinary/data/tree/dom/document/mapping/DomDocumentMappingInterface"

class ContextConfigurationDomDocumentMapping
    include DomDocumentMappingInterface
    attr_accessor :contextConfigurationInterface

    def initialize_fields
        @contextConfigurationInterface = nil
    end
    

    def initialize(contextConfigurationInterface)
        initialize_fields
        @contextConfigurationInterface = contextConfigurationInterface
    end
    

    # throws Exception
    def toXmlDoc()
        document = DomDocumentHelper.create()
        node = ContextConfigurationView.new(@contextConfigurationInterface).toXmlNode(document)
        document.appendChild(node)
        return document
    end
    

    # throws Exception
    def toDomDocumentString()
        return XmlDocumentHelper.toString(self.toXmlDoc())
    end
end

autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper"
autoload :XmlDocumentHelper, "org/allbinary/data/tree/dom/document/XmlDocumentHelper"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"
autoload :ContextConfigurationInterface, "org/allbinary/business/context/configuration/ContextConfigurationInterface"
autoload :ContextConfigurationView, "org/allbinary/business/context/configuration/ContextConfigurationView"

