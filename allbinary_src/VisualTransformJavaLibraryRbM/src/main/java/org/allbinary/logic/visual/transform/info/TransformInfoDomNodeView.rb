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

require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/logic/visual/transform/info/TransformInfoDomNode"

class TransformInfoDomNodeView < TransformInfoDomNode
    include DomNodeInterface

    def initialize(*args)
        case args.length
        when 2 then constructor2(*args)
        when 1 then constructor1(*args)
        when 2 then constructor2(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor2(transformInfoInterface, mapping)
        method(:initialize).super_method.call(transformInfoInterface, mapping)
    end
    

    def constructor1(transformInfoInterface)
        method(:initialize).super_method.call(transformInfoInterface)
    end
    

    def constructor2(name, mappedName)
        method(:initialize).super_method.call(name, mappedName)
    end
    

    def constructor1(name)
        method(:initialize).super_method.call(name, nil)
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
end

require "org/w3c/dom/Attr"
require "org/w3c/dom/Document"
require "org/w3c/dom/NamedNodeMap"
require "org/w3c/dom/Node"
require "org/allbinary/logic/visual/transform/info/TransformInfoData"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"

