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
require "org/allbinary/data/tree/dom/DomNodeInterface"

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info

class TransformInfoInterfaceView
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :transformInfoInterface

    def jfields_org_allbinary_logic_visual_transform_info_TransformInfoInterfaceView
        @transformInfoInterface = nil unless instance_variable_defined?(:@transformInfoInterface)
    end
    

    def initialize(transformInfoInterface)
        jfields_org_allbinary_logic_visual_transform_info_TransformInfoInterfaceView
        @transformInfoInterface = transformInfoInterface
    end
    

    # throws Exception
    def toXmlNode(document)
        return ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, TransformInfoData.getInstance().NAME, @transformInfoInterface.toHashMap())
    end
    java_overload :toXmlNode, 1
end

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :TransformInfoData, "org/allbinary/logic/visual/transform/info/TransformInfoData" unless const_defined?(:TransformInfoData, false)
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false)

end; end; end; end; end; end

