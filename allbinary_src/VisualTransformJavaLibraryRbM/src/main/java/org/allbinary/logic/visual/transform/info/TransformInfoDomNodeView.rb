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
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/logic/visual/transform/info/TransformInfoDomNode"

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info

class TransformInfoDomNodeView < TransformInfoDomNode
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface

    def initialize(*args)
        case args.length
        when 2 then jnew_org_allbinary_logic_visual_transform_info_TransformInfoDomNodeView_2(*args)
        when 1 then jnew_org_allbinary_logic_visual_transform_info_TransformInfoDomNodeView_1(*args)
        else raise ArgumentError, "No constructor of TransformInfoDomNodeView takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_logic_visual_transform_info_TransformInfoDomNodeView_2(*java_overload_args)
        return jnew_org_allbinary_logic_visual_transform_info_TransformInfoDomNodeView_2_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(TransformInfoInterface)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::String))
        return jnew_org_allbinary_logic_visual_transform_info_TransformInfoDomNodeView_2_2(*java_overload_args)
    end

    def jnew_org_allbinary_logic_visual_transform_info_TransformInfoDomNodeView_1(*java_overload_args)
        return jnew_org_allbinary_logic_visual_transform_info_TransformInfoDomNodeView_1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(TransformInfoInterface))
        return jnew_org_allbinary_logic_visual_transform_info_TransformInfoDomNodeView_1_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_logic_visual_transform_info_TransformInfoDomNodeView_2_1(transformInfoInterface, mapping)
        TransformInfoDomNodeView.superclass.instance_method(:initialize).bind(self).call(transformInfoInterface, mapping)
    end
    

    def jnew_org_allbinary_logic_visual_transform_info_TransformInfoDomNodeView_1_1(transformInfoInterface)
        TransformInfoDomNodeView.superclass.instance_method(:initialize).bind(self).call(transformInfoInterface)
    end
    

    def jnew_org_allbinary_logic_visual_transform_info_TransformInfoDomNodeView_2_2(name, mappedName)
        TransformInfoDomNodeView.superclass.instance_method(:initialize).bind(self).call(name, mappedName)
    end
    

    def jnew_org_allbinary_logic_visual_transform_info_TransformInfoDomNodeView_1_2(name)
        TransformInfoDomNodeView.superclass.instance_method(:initialize).bind(self).call(name, nil)
    end
    

    # throws Exception
    def toXmlNode(document)
        transformInfoData = TransformInfoData.getInstance()
        subViewNode = document.createElement(transformInfoData.NAME)
        viewNameAttr = document.createAttribute(transformInfoData.NAME)
        viewNameAttr.setValue(self.getTransformInfoInterface().getName())
        componentNodeAttributes = subViewNode.getAttributes()
        componentNodeAttributes.setNamedItem(viewNameAttr)
        if self.getMappedName() != nil
            mappedNameAttr = document.createAttribute(transformInfoData.MAPPED)
            mappedNameAttr.setValue(self.getMappedName())
            componentNodeAttributes.setNamedItem(mappedNameAttr)
        end
        return subViewNode
    end
    java_overload :toXmlNode, 1
end

module ::Org; module W3c; module Dom; autoload :Attr, "org/w3c/dom/Attr" unless const_defined?(:Attr, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :NamedNodeMap, "org/w3c/dom/NamedNodeMap" unless const_defined?(:NamedNodeMap, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :TransformInfoData, "org/allbinary/logic/visual/transform/info/TransformInfoData" unless const_defined?(:TransformInfoData, false)
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false)

end; end; end; end; end; end

