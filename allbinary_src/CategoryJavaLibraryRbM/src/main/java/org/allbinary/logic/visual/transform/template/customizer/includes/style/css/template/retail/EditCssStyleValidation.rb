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
# package org.allbinary.logic.visual.transform.template.customizer.includes.style.css.template.retail

require "java/lang/JavaOverload"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/logic/control/validate/ValidationInterface"
require "org/allbinary/logic/visual/transform/template/customizer/includes/style/css/template/retail/CssStyleValidation"

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; module Customizer; module Includes; module Style; module Css; module Template; module Retail

class EditCssStyleValidation < CssStyleValidation
    include ::Org::Allbinary::Logic::ControlPackage::Validate::ValidationInterface
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_logic_visual_transform_template_customizer_includes_style_css_template_retail_EditCssStyleValidation_0(*args)
        when 1 then jnew_org_allbinary_logic_visual_transform_template_customizer_includes_style_css_template_retail_EditCssStyleValidation_1(*args)
        else raise ArgumentError, "No constructor of EditCssStyleValidation takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_logic_visual_transform_template_customizer_includes_style_css_template_retail_EditCssStyleValidation_1(*java_overload_args)
        return jnew_org_allbinary_logic_visual_transform_template_customizer_includes_style_css_template_retail_EditCssStyleValidation_1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::W3c::Dom::Document))
        return jnew_org_allbinary_logic_visual_transform_template_customizer_includes_style_css_template_retail_EditCssStyleValidation_1_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_logic_visual_transform_template_customizer_includes_style_css_template_retail_EditCssStyleValidation_0()
        EditCssStyleValidation.superclass.instance_method(:initialize).bind(self).call()
    end
    

    def jnew_org_allbinary_logic_visual_transform_template_customizer_includes_style_css_template_retail_EditCssStyleValidation_1_1(document)
        EditCssStyleValidation.superclass.instance_method(:initialize).bind(self).call(document)
    end
    

    def jnew_org_allbinary_logic_visual_transform_template_customizer_includes_style_css_template_retail_EditCssStyleValidation_1_2(hashMap)
        EditCssStyleValidation.superclass.instance_method(:initialize).bind(self).call(hashMap)
    end
    

    def isValid()
        return EditCssStyleValidation.superclass.java_super_method(:isValid, 0).bind(self).call()
    end
    java_overload :isValid, 0
    

    def validationInfo()
        return EditCssStyleValidation.superclass.java_super_method(:validationInfo, 0).bind(self).call()
    end
    java_overload :validationInfo, 0
    

    def toValidationInfoDoc()
        return nil
    end
    java_overload :toValidationInfoDoc, 0
    

    def toValidationInfoNode(document)
        return nil
    end
    java_overload :toValidationInfoNode, 1
    

    # throws Exception
    def toXmlNode(document)
        node = document.createElement(::Org::Allbinary::Logic::Visual::Dhtml::Style::StylesData.getInstance().NAME)
        styleNode = document.createElement(::Org::Allbinary::Logic::Visual::Dhtml::Style::StyleData.getInstance().NAME)
        node.appendChild(styleNode)
        styleNode.appendChild(::Org::Allbinary::Logic::Visual::Dhtml::Style::Color::ColorsView.new().toXmlNode(document))
        size = @cssStyleElementVector.size()
        (0...size).each do |i|
            styleDomNodeInterface = @cssStyleElementVector.get(i)
            styleNode.appendChild(styleDomNodeInterface.toXmlNode(document))
        end
        return node
    end
    java_overload :toXmlNode, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Style; autoload :StyleData, "org/allbinary/logic/visual/dhtml/style/StyleData" unless const_defined?(:StyleData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Style; autoload :StylesData, "org/allbinary/logic/visual/dhtml/style/StylesData" unless const_defined?(:StylesData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Style; module Color; autoload :ColorsView, "org/allbinary/logic/visual/dhtml/style/color/ColorsView" unless const_defined?(:ColorsView, false); end; end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end

end; end; end; end; end; end; end; end; end; end; end; end

