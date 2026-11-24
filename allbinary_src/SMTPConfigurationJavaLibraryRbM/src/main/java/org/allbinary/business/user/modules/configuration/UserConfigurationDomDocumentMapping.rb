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

require "java/lang/JavaOverload"
require "org/allbinary/data/tree/dom/document/mapping/DomDocumentMappingInterface"

module ::Org; module Allbinary; module Business; module User; module Modules; module Configuration

class UserConfigurationDomDocumentMapping
    include ::Org::Allbinary::DataPackage::Tree::Dom::Document::Mapping::DomDocumentMappingInterface
    attr_accessor :userConfigurationInterface

    def jfields_org_allbinary_business_user_modules_configuration_UserConfigurationDomDocumentMapping
        @userConfigurationInterface = nil unless instance_variable_defined?(:@userConfigurationInterface)
    end
    

    def initialize(userConfigurationInterface)
        jfields_org_allbinary_business_user_modules_configuration_UserConfigurationDomDocumentMapping
        @userConfigurationInterface = userConfigurationInterface
    end
    

    # throws Exception
    def toXmlDoc()
        document = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create()
        node = UserConfigurationView.new(@userConfigurationInterface).toXmlNode(document)
        document.appendChild(node)
        return document
    end
    java_overload :toXmlDoc, 0
    

    # throws Exception
    def toDomDocumentString()
        return ::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(self.toXmlDoc())
    end
    java_overload :toDomDocumentString, 0
end

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper" unless const_defined?(:DomDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :XmlDocumentHelper, "org/allbinary/data/tree/dom/document/XmlDocumentHelper" unless const_defined?(:XmlDocumentHelper, false); end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :UserConfigurationInterface, "org/allbinary/business/user/modules/configuration/UserConfigurationInterface" unless const_defined?(:UserConfigurationInterface, false)
autoload :UserConfigurationView, "org/allbinary/business/user/modules/configuration/UserConfigurationView" unless const_defined?(:UserConfigurationView, false)

end; end; end; end; end; end

