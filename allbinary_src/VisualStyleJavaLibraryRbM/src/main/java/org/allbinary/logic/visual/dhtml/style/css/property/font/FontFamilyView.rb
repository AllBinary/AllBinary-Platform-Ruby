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
# package org.allbinary.logic.visual.dhtml.style.css.property.font

require "java/lang/JavaOverload"
require "org/allbinary/logic/visual/dhtml/style/css/property/CssPropertyView"

module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Style; module Css; module Property; module Font

class FontFamilyView < ::Org::Allbinary::Logic::Visual::Dhtml::Style::Css::Property::CssPropertyView

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_logic_visual_dhtml_style_css_property_font_FontFamilyView_0(*args)
        when 1 then jnew_org_allbinary_logic_visual_dhtml_style_css_property_font_FontFamilyView_1(*args)
        else raise ArgumentError, "No constructor of FontFamilyView takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_logic_visual_dhtml_style_css_property_font_FontFamilyView_0()
        FontFamilyView.superclass.instance_method(:initialize).bind(self).call(::Org::Allbinary::Logic::Visual::Dhtml::Style::Css::Property::CssProperty.new(FontFamilyData.getInstance().VALUE))
    end
    

    def jnew_org_allbinary_logic_visual_dhtml_style_css_property_font_FontFamilyView_1(node)
        FontFamilyView.superclass.instance_method(:initialize).bind(self).call(::Org::Allbinary::Logic::Visual::Dhtml::Style::Css::Property::CssProperty.new(node))
    end
end

module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Style; module Css; module Property; autoload :CssProperty, "org/allbinary/logic/visual/dhtml/style/css/property/CssProperty" unless const_defined?(:CssProperty, false); end; end; end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :FontFamilyData, "org/allbinary/logic/visual/dhtml/style/css/property/font/FontFamilyData" unless const_defined?(:FontFamilyData, false)

end; end; end; end; end; end; end; end; end

