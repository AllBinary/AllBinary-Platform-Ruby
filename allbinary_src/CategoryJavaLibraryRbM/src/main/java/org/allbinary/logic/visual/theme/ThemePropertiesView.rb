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

require "java/lang/JavaOverload"
require "org/allbinary/data/tree/dom/DomNodeInterface"

module ::Org; module Allbinary; module Logic; module Visual; module Theme

class ThemePropertiesView
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :themeInterface

    def jfields_org_allbinary_logic_visual_theme_ThemePropertiesView
        @themeInterface = nil unless instance_variable_defined?(:@themeInterface)
    end
    

    def initialize(themeInterface)
        jfields_org_allbinary_logic_visual_theme_ThemePropertiesView
        @themeInterface = themeInterface
    end
    

    # throws Exception
    def toXmlNode(document)
        node = ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, ThemeData.getInstance().NAME, @themeInterface.toHashMap())
        return node
    end
    java_overload :toXmlNode, 1
end

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :ThemeData, "org/allbinary/logic/visual/theme/ThemeData" unless const_defined?(:ThemeData, false)
autoload :ThemeInterface, "org/allbinary/logic/visual/theme/ThemeInterface" unless const_defined?(:ThemeInterface, false)

end; end; end; end; end

