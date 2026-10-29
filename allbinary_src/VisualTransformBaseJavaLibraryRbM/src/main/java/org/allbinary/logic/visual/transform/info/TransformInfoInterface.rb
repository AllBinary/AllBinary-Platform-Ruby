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

require "org/allbinary/data/tables/TableMappingInterface"

module TransformInfoInterface
    include TableMappingInterface
    

    def log()
        raise NotImplementedError
    end
    

    # throws Exception
    def override(hashMap)
        raise NotImplementedError
    end
    

    def getName()
        raise NotImplementedError
    end
    

    def setStoreName(value)
        raise NotImplementedError
    end
    

    def getStoreName()
        raise NotImplementedError
    end
    

    def getObjectFile()
        raise NotImplementedError
    end
    

    def getObject()
        raise NotImplementedError
    end
    

    # throws Exception
    def getTemplateFilePath()
        raise NotImplementedError
    end
    

    def getTemplateFile()
        raise NotImplementedError
    end
    

    def getTemplate()
        raise NotImplementedError
    end
    

    # throws Exception
    def getDataFilePath()
        raise NotImplementedError
    end
    

    def getDataFile()
        raise NotImplementedError
    end
    

    # throws Exception
    def getDataDocument()
        raise NotImplementedError
    end
    

    def setName(value)
        raise NotImplementedError
    end
    

    def setObjectFile(value)
        raise NotImplementedError
    end
    

    def setObject(anyType)
        raise NotImplementedError
    end
    

    # throws Exception
    def setObjectConfigInterface(transformInfoObjectConfigInterface)
        raise NotImplementedError
    end
    

    # throws Exception
    def getObjectConfigInterface()
        raise NotImplementedError
    end
    

    def setTemplateFile(value)
        raise NotImplementedError
    end
    

    def setTemplate(value)
        raise NotImplementedError
    end
    

    def setDataFile(value)
        raise NotImplementedError
    end
    

    def setData(value)
        raise NotImplementedError
    end
    

    def setChild()
        raise NotImplementedError
    end
    

    def isChild()
        raise NotImplementedError
    end
end

require "java/util/HashMap"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigInterface"
require "org/w3c/dom/Document"

