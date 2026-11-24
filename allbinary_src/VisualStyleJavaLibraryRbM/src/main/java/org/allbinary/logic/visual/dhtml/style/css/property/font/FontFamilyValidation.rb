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
require "org/allbinary/logic/control/validate/ValidationInterface"
require "org/allbinary/logic/visual/dhtml/style/css/property/font/FontFamilyView"

module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Style; module Css; module Property; module Font

class FontFamilyValidation < FontFamilyView
    include ::Org::Allbinary::Logic::ControlPackage::Validate::ValidationInterface
    attr_accessor :logUtil

    def jfields_org_allbinary_logic_visual_dhtml_style_css_property_font_FontFamilyValidation
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_logic_visual_dhtml_style_css_property_font_FontFamilyValidation_0(*args)
        when 1 then jnew_org_allbinary_logic_visual_dhtml_style_css_property_font_FontFamilyValidation_1(*args)
        else raise ArgumentError, "No constructor of FontFamilyValidation takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_logic_visual_dhtml_style_css_property_font_FontFamilyValidation_0()
        FontFamilyValidation.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_logic_visual_dhtml_style_css_property_font_FontFamilyValidation
    end
    

    def jnew_org_allbinary_logic_visual_dhtml_style_css_property_font_FontFamilyValidation_1(node)
        FontFamilyValidation.superclass.instance_method(:initialize).bind(self).call(node)
        jfields_org_allbinary_logic_visual_dhtml_style_css_property_font_FontFamilyValidation
    end
    

    # throws Exception
    def isValid()
        begin
            valid = true
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("FontFamilyValidation", self, @commonStrings.IS_VALID)
            end
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("CssValidation: " + (valid).to_s, self, @commonStrings.IS_VALID)
            end
            return valid
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to validate data", self, @commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    java_overload :isValid, 0
    

    # throws Exception
    def validationInfo()
        begin
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append("Css Font Family Property Validation Error")
            return stringBuffer.to_s
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to generate validation info error", self, "validationInfo()", e)
            end
            return "Error Validating Data"
        end
    end
    java_overload :validationInfo, 0
    

    # throws Exception
    def toValidationInfoDoc()
        return nil
    end
    java_overload :toValidationInfoDoc, 0
    

    # throws Exception
    def toValidationInfoNode(document)
        return nil
    end
    java_overload :toValidationInfoNode, 1
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end; end; end; end

