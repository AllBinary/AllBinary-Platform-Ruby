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
# package org.allbinary.logic.visual.dhtml.style.css.property

require "java/lang/JavaOverload"
require "org/allbinary/data/tree/dom/DomNodeInterface"

module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Style; module Css; module Property

class CssPropertyView
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :commonStrings, :cssProperty

    def jfields_org_allbinary_logic_visual_dhtml_style_css_property_CssPropertyView
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @cssProperty = nil unless instance_variable_defined?(:@cssProperty)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_logic_visual_dhtml_style_css_property_CssPropertyView_1(*args)
        else raise ArgumentError, "No constructor of CssPropertyView takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_logic_visual_dhtml_style_css_property_CssPropertyView_1(*java_overload_args)
        return jnew_org_allbinary_logic_visual_dhtml_style_css_property_CssPropertyView_1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::String))
        return jnew_org_allbinary_logic_visual_dhtml_style_css_property_CssPropertyView_1_2(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::W3c::Dom::Node))
        return jnew_org_allbinary_logic_visual_dhtml_style_css_property_CssPropertyView_1_3(*java_overload_args)
    end
    

    def jnew_org_allbinary_logic_visual_dhtml_style_css_property_CssPropertyView_1_1(name)
        jfields_org_allbinary_logic_visual_dhtml_style_css_property_CssPropertyView
        @cssProperty = CssProperty.new(name)
    end
    

    def jnew_org_allbinary_logic_visual_dhtml_style_css_property_CssPropertyView_1_2(node)
        jfields_org_allbinary_logic_visual_dhtml_style_css_property_CssPropertyView
        @cssProperty = CssProperty.new(node)
    end
    

    def jnew_org_allbinary_logic_visual_dhtml_style_css_property_CssPropertyView_1_3(cssProperty)
        jfields_org_allbinary_logic_visual_dhtml_style_css_property_CssPropertyView
        @cssProperty = cssProperty
    end
    

    def getProperty()
        return @cssProperty
    end
    java_overload :getProperty, 0
    

    # throws Exception
    def toXmlNode(document)
        return @cssProperty.toXmlNode(document)
    end
    java_overload :toXmlNode, 1
end

module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :CssProperty, "org/allbinary/logic/visual/dhtml/style/css/property/CssProperty" unless const_defined?(:CssProperty, false)

end; end; end; end; end; end; end; end

