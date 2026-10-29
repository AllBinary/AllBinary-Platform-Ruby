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
# package org.allbinary.logic.visual.theme

require "org/allbinary/data/tree/dom/DomNodeInterface"

class ThemePropertiesView
    include DomNodeInterface
    attr_accessor :themeInterface

    def initialize_fields
        @themeInterface = nil
    end
    

    def initialize(themeInterface)
        initialize_fields
        @themeInterface = themeInterface
    end
    

    # throws Exception
    def toXmlNode(document)
        node = ModDomHelper.createNameValueNodes(document, ThemeData.getInstance().NAME, @themeInterface.toHashMap())
        return node
    end
end

require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/logic/visual/theme/ThemeData"
require "org/allbinary/logic/visual/theme/ThemeInterface"

