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
# package org.allbinary.logic.visual.transform.info.objectConfig

require "org/allbinary/data/tree/dom/document/mapping/DomDocumentMappingInterface"

module TransformInfoObjectConfigInterface
    include DomDocumentMappingInterface
    

    def containsView(transformInfoInterface)
        raise NotImplementedError
    end
    

    # throws Exception
    def getName()
        raise NotImplementedError
    end
    

    # throws Exception
    def getTransformsGroup(group)
        raise NotImplementedError
    end
    

    # throws Exception
    def getTransforms()
        raise NotImplementedError
    end
    

    # throws Exception
    def getParentTransforms()
        raise NotImplementedError
    end
    

    # throws Exception
    def getGroupTransforms()
        raise NotImplementedError
    end
    

    # throws Exception
    def getOutputTypeName()
        raise NotImplementedError
    end
    

    def setOutputTypeName(value)
        raise NotImplementedError
    end
    

    # throws Exception
    def getInputOutputTypeName()
        raise NotImplementedError
    end
    

    # throws Exception
    def getInputOutputTypeFile()
        raise NotImplementedError
    end
    

    # throws Exception
    def getImportUriPath()
        raise NotImplementedError
    end
    

    def toString()
        raise NotImplementedError
    end
    alias_method :to_s, :toString
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"

