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
require "org/allbinary/data/tables/TableMappingInterface"

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info

module TransformInfoInterface
    include ::Org::Allbinary::DataPackage::Tables::TableMappingInterface
    

    def log()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :log, 0
    

    # throws Exception
    def override(hashMap)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :override, 1
    

    def getName()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getName, 0
    

    def setStoreName(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setStoreName, 1
    

    def getStoreName()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getStoreName, 0
    

    def getObjectFile()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getObjectFile, 0
    

    def getObject()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getObject, 0
    

    # throws Exception
    def getTemplateFilePath()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getTemplateFilePath, 0
    

    def getTemplateFile()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getTemplateFile, 0
    

    def getTemplate()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getTemplate, 0
    

    # throws Exception
    def getDataFilePath()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getDataFilePath, 0
    

    def getDataFile()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getDataFile, 0
    

    # throws Exception
    def getDataDocument()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getDataDocument, 0
    

    def setName(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setName, 1
    

    def setObjectFile(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setObjectFile, 1
    

    def setObject(anyType)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setObject, 1
    

    # throws Exception
    def setObjectConfigInterface(transformInfoObjectConfigInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setObjectConfigInterface, 1
    

    # throws Exception
    def getObjectConfigInterface()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getObjectConfigInterface, 0
    

    def setTemplateFile(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setTemplateFile, 1
    

    def setTemplate(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setTemplate, 1
    

    def setDataFile(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setDataFile, 1
    

    def setData(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setData, 1
    

    def setChild()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setChild, 0
    

    def isChild()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :isChild, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module ObjectConfig; autoload :TransformInfoObjectConfigInterface, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigInterface" unless const_defined?(:TransformInfoObjectConfigInterface, false); end; end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end

end; end; end; end; end; end

