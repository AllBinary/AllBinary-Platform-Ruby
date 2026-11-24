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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
# require "javax/servlet/jsp/PageContext"
require "org/allbinary/business/context/AbContext"
require "org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface"

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info

#Hack class should not exist
class TransformInfoBasic < ::Org::Allbinary::Business::Context::AbContext
    include TransformInfoHttpInterface
    attr_accessor :storeFrontInterface

    def jfields_org_allbinary_logic_visual_transform_info_TransformInfoBasic
        @storeFrontInterface = nil unless instance_variable_defined?(:@storeFrontInterface)
    end
    

    def initialize(storeFrontInterface, propertiesHashMap, pageContext)
        super(propertiesHashMap, pageContext)
        jfields_org_allbinary_logic_visual_transform_info_TransformInfoBasic
        @storeFrontInterface = storeFrontInterface
    end
    

    def getStoreName()
        return @storeFrontInterface.getName()
    end
    java_overload :getStoreName, 0
    

    def log()
        return @commonStrings.NOT_IMPLEMENTED
    end
    java_overload :log, 0
    

    def override(hashMap)
    end
    java_overload :override, 1
    

    def getName()
        return nil
    end
    java_overload :getName, 0
    

    def getObjectFile()
        return nil
    end
    java_overload :getObjectFile, 0
    

    def getObject()
        return nil
    end
    java_overload :getObject, 0
    

    def getObjectConfigInterface()
        return nil
    end
    java_overload :getObjectConfigInterface, 0
    

    def setObjectConfigInterface(transformInfoObjectConfigInterface)
    end
    java_overload :setObjectConfigInterface, 1
    

    def getTemplateFilePath()
        return nil
    end
    java_overload :getTemplateFilePath, 0
    

    def getTemplateFile()
        return nil
    end
    java_overload :getTemplateFile, 0
    

    def getTemplate()
        return nil
    end
    java_overload :getTemplate, 0
    

    def getDataFilePath()
        return nil
    end
    java_overload :getDataFilePath, 0
    

    def getDataFile()
        return nil
    end
    java_overload :getDataFile, 0
    

    # throws Exception
    def getDataDocument()
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    java_overload :getDataDocument, 0
    

    def setName(value)
    end
    java_overload :setName, 1
    

    def setStoreName(value)
    end
    java_overload :setStoreName, 1
    

    def setObjectFile(value)
    end
    java_overload :setObjectFile, 1
    

    def setObject(anyType)
    end
    java_overload :setObject, 1
    

    def setObjectConfigFile(value)
    end
    java_overload :setObjectConfigFile, 1
    

    def setTemplateFile(value)
    end
    java_overload :setTemplateFile, 1
    

    def setTemplate(value)
    end
    java_overload :setTemplate, 1
    

    def setDataFile(value)
    end
    java_overload :setDataFile, 1
    

    def setData(value)
    end
    java_overload :setData, 1
    

    def setChild()
    end
    java_overload :setChild, 0
    

    def isChild()
        return true
    end
    java_overload :isChild, 0
    

    def getImportUriPath()
        return nil
    end
    java_overload :getImportUriPath, 0
    

    def setImportUriPath(importUriPath)
    end
    java_overload :setImportUriPath, 1
    

    # throws Exception
    def getKey()
        return nil
    end
    java_overload :getKey, 0
    

    # throws Exception
    def toVector()
        return nil
    end
    java_overload :toVector, 0
    

    # throws Exception
    def toHashMap()
        return nil
    end
    java_overload :toHashMap, 0
    

    def getWeblisketSession()
        return TransformInfoBasic.superclass.java_super_method(:getWeblisketSession, 0).bind(self).call()
    end
    java_overload :getWeblisketSession, 0
    

    def getPageContext()
        return TransformInfoBasic.superclass.java_super_method(:getPageContext, 0).bind(self).call()
    end
    java_overload :getPageContext, 0
    

    def getPropertiesHashMap()
        return TransformInfoBasic.superclass.java_super_method(:getPropertiesHashMap, 0).bind(self).call()
    end
    java_overload :getPropertiesHashMap, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module ObjectConfig; autoload :TransformInfoObjectConfigInterface, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigInterface" unless const_defined?(:TransformInfoObjectConfigInterface, false); end; end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session; autoload :WeblisketSessionInterface, "org/allbinary/logic/communication/http/request/session/WeblisketSessionInterface" unless const_defined?(:WeblisketSessionInterface, false); end; end; end; end; end; end; end

end; end; end; end; end; end

