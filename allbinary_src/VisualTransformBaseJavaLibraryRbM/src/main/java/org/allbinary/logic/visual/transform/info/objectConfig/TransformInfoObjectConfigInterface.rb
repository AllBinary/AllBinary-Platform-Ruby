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

require "java/lang/JavaOverload"
require "org/allbinary/data/tree/dom/document/mapping/DomDocumentMappingInterface"

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module ObjectConfig

module TransformInfoObjectConfigInterface
    include ::Org::Allbinary::DataPackage::Tree::Dom::Document::Mapping::DomDocumentMappingInterface
    

    def containsView(transformInfoInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :containsView, 1
    

    # throws Exception
    def getName()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getName, 0
    

    # throws Exception
    def getTransformsGroup(group)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getTransformsGroup, 1
    

    # throws Exception
    def getTransforms()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getTransforms, 0
    

    # throws Exception
    def getParentTransforms()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getParentTransforms, 0
    

    # throws Exception
    def getGroupTransforms()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getGroupTransforms, 0
    

    # throws Exception
    def getOutputTypeName()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getOutputTypeName, 0
    

    def setOutputTypeName(value)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setOutputTypeName, 1
    

    # throws Exception
    def getInputOutputTypeName()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getInputOutputTypeName, 0
    

    # throws Exception
    def getInputOutputTypeFile()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getInputOutputTypeFile, 0
    

    # throws Exception
    def getImportUriPath()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getImportUriPath, 0
    

    def toString()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end

end; end; end; end; end; end; end

