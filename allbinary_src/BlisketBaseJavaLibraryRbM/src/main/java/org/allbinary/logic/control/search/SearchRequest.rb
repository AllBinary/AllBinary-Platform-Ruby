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
# package org.allbinary.logic.control.search

require "java/lang/JavaOverload"
# require "javax/servlet/jsp/PageContext"
require "org/allbinary/business/context/AbContext"

module ::Org; module Allbinary; module Logic; module ControlPackage; module Search

class SearchRequest < ::Org::Allbinary::Business::Context::AbContext
    attr_accessor :xslFile, :pageName, :contentType, :searchParams, :storeFront

    def jfields_org_allbinary_logic_control_search_SearchRequest
        @xslFile = nil unless instance_variable_defined?(:@xslFile)
        @pageName = nil unless instance_variable_defined?(:@pageName)
        @contentType = nil unless instance_variable_defined?(:@contentType)
        @searchParams = nil unless instance_variable_defined?(:@searchParams)
        @storeFront = nil unless instance_variable_defined?(:@storeFront)
    end
    

    def initialize(storeFront, searchParams, xslFile, contentType, propertiesHashMap, pageContext)
        super(propertiesHashMap, pageContext)
        jfields_org_allbinary_logic_control_search_SearchRequest
        @storeFront = storeFront
        @searchParams = searchParams
        @xslFile = xslFile
        @pageName = @pageName
        @contentType = contentType
    end
    

    def setStoreFront(storeFront)
        @storeFront = storeFront
    end
    java_overload :setStoreFront, 1
    

    def setParams(searchParams)
        @searchParams = searchParams
    end
    java_overload :setParams, 1
    

    def setXslFile(value)
        @xslFile = value
    end
    java_overload :setXslFile, 1
    

    def setFileBaseName(value)
        @pageName = value
    end
    java_overload :setFileBaseName, 1
    

    def setContentType(value)
        @contentType = value
    end
    java_overload :setContentType, 1
    

    def getStoreFront()
        return @storeFront
    end
    java_overload :getStoreFront, 0
    

    def getParams()
        return @searchParams
    end
    java_overload :getParams, 0
    

    def getXslFile()
        return @xslFile
    end
    java_overload :getXslFile, 0
    

    def getFileBaseName()
        return @pageName
    end
    java_overload :getFileBaseName, 0
    

    def getContentType()
        return @contentType
    end
    java_overload :getContentType, 0
    

    # throws Exception
    def getFileBaseNameNode(document)
        return ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, SearchData::FILENAME, self.getFileBaseName())
    end
    java_overload :getFileBaseNameNode, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :SearchData, "org/allbinary/logic/control/search/SearchData" unless const_defined?(:SearchData, false)
autoload :SearchParams, "org/allbinary/logic/control/search/SearchParams" unless const_defined?(:SearchParams, false)

end; end; end; end; end

