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
# package org.allbinary.logic.visual.transform.info

# require "javax/servlet/jsp/PageContext"
require "org/allbinary/business/context/AbContext"
require "org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface"

#Hack class should not exist
class TransformInfoBasic < AbContext
    include TransformInfoHttpInterface
    attr_accessor :storeFrontInterface

    def initialize_fields
        @storeFrontInterface = nil
    end
    

    def initialize(storeFrontInterface, propertiesHashMap, pageContext)
        super(propertiesHashMap, pageContext)
        initialize_fields
        @storeFrontInterface = storeFrontInterface
    end
    

    def getStoreName()
        return @storeFrontInterface.getName()
    end
    

    def log()
        return @commonStrings.NOT_IMPLEMENTED
    end
    

    def override(hashMap)
    end
    

    def getName()
        return nil
    end
    

    def getObjectFile()
        return nil
    end
    

    def getObject()
        return nil
    end
    

    def getObjectConfigInterface()
        return nil
    end
    

    def setObjectConfigInterface(transformInfoObjectConfigInterface)
    end
    

    def getTemplateFilePath()
        return nil
    end
    

    def getTemplateFile()
        return nil
    end
    

    def getTemplate()
        return nil
    end
    

    def getDataFilePath()
        return nil
    end
    

    def getDataFile()
        return nil
    end
    

    # throws Exception
    def getDataDocument()
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    

    def setName(value)
    end
    

    def setStoreName(value)
    end
    

    def setObjectFile(value)
    end
    

    def setObject(anyType)
    end
    

    def setObjectConfigFile(value)
    end
    

    def setTemplateFile(value)
    end
    

    def setTemplate(value)
    end
    

    def setDataFile(value)
    end
    

    def setData(value)
    end
    

    def setChild()
    end
    

    def isChild()
        return true
    end
    

    def getImportUriPath()
        return nil
    end
    

    def setImportUriPath(importUriPath)
    end
    

    # throws Exception
    def getKey()
        return nil
    end
    

    # throws Exception
    def toVector()
        return nil
    end
    

    # throws Exception
    def toHashMap()
        return nil
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigInterface"
require "org/w3c/dom/Document"

