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
# package org.allbinary.logic.visual.transform

require "java/lang/JavaOverload"
require "org/allbinary/data/tree/dom/document/mapping/DomDocumentMappingInterface"
require "org/allbinary/logic/visual/transform/info/CompositeTransformInfoInterface"

module ::Org; module Allbinary; module Logic; module Visual; module Transform

module TransformInterface
    include ::Org::Allbinary::DataPackage::Tree::Dom::Document::Mapping::DomDocumentMappingInterface
    include ::Org::Allbinary::Logic::Visual::Transform::Info::CompositeTransformInfoInterface
    

    def getTypeId()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getTypeId, 0
    

    def setTransformDocumentInterface(viewDocumentInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setTransformDocumentInterface, 1
    

    def getTransformDocumentInterface()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getTransformDocumentInterface, 0
    

    # throws Exception
    def view()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :view, 0
end

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module DataPackage; autoload :TransformDocumentInterface, "org/allbinary/logic/visual/transform/data/TransformDocumentInterface" unless const_defined?(:TransformDocumentInterface, false); end; end; end; end; end; end

end; end; end; end; end

