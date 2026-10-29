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

# require "javax/servlet/jsp/PageContext"
require "org/allbinary/business/context/AbContext"

class SearchRequest < AbContext
    attr_accessor :xslFile, :pageName, :contentType, :searchParams, :storeFront

    def initialize_fields
        @xslFile = nil
        @pageName = nil
        @contentType = nil
        @searchParams = nil
        @storeFront = nil
    end
    

    def initialize(storeFront, searchParams, xslFile, contentType, propertiesHashMap, pageContext)
        super(propertiesHashMap, pageContext)
        initialize_fields
        @storeFront = storeFront
        @searchParams = searchParams
        @xslFile = xslFile
        @pageName = @pageName
        @contentType = contentType
    end
    

    def setStoreFront(storeFront)
        @storeFront = storeFront
    end
    

    def setParams(searchParams)
        @searchParams = searchParams
    end
    

    def setXslFile(value)
        @xslFile = value
    end
    

    def setFileBaseName(value)
        @pageName = value
    end
    

    def setContentType(value)
        @contentType = value
    end
    

    def getStoreFront()
        return @storeFront
    end
    

    def getParams()
        return @searchParams
    end
    

    def getXslFile()
        return @xslFile
    end
    

    def getFileBaseName()
        return @pageName
    end
    

    def getContentType()
        return @contentType
    end
    

    # throws Exception
    def getFileBaseNameNode(document)
        return ModDomHelper.createNameValueNodes(document, SearchData::FILENAME, self.getFileBaseName())
    end
end

require "java/util/HashMap"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/logic/control/search/SearchData"
require "org/allbinary/logic/control/search/SearchParams"

