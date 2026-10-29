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

class TransformInfoInterfaceView
    include DomNodeInterface
    attr_accessor :transformInfoInterface

    def initialize_fields
        @transformInfoInterface = nil
    end
    

    def initialize(transformInfoInterface)
        initialize_fields
        @transformInfoInterface = transformInfoInterface
    end
    

    # throws Exception
    def toXmlNode(document)
        return ModDomHelper.createNameValueNodes(document, TransformInfoData.getInstance().NAME, @transformInfoInterface.toHashMap())
    end
end

require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/logic/visual/transform/info/TransformInfoData"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"

