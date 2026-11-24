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
require "org/allbinary/logic/control/validate/Validation"

module ::Org; module Allbinary; module Logic; module Visual; module Theme

class ThemesValidation < ::Org::Allbinary::Logic::ControlPackage::Validate::Validation
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    attr_accessor :themeVector

    def jfields_org_allbinary_logic_visual_theme_ThemesValidation
        @themeVector = nil unless instance_variable_defined?(:@themeVector)
    end

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_logic_visual_theme_ThemesValidation_0(*args)
        when 1 then jnew_org_allbinary_logic_visual_theme_ThemesValidation_1(*args)
        else raise ArgumentError, "No constructor of ThemesValidation takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_logic_visual_theme_ThemesValidation_1(*java_overload_args)
        return jnew_org_allbinary_logic_visual_theme_ThemesValidation_1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::W3c::Dom::Node))
        return jnew_org_allbinary_logic_visual_theme_ThemesValidation_1_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_logic_visual_theme_ThemesValidation_0()
        ThemesValidation.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_logic_visual_theme_ThemesValidation
        @themeVector = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def jnew_org_allbinary_logic_visual_theme_ThemesValidation_1_1(node)
        ThemesValidation.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_logic_visual_theme_ThemesValidation
    end
    

    def jnew_org_allbinary_logic_visual_theme_ThemesValidation_1_2(hashMap)
        ThemesValidation.superclass.instance_method(:initialize).bind(self).call()
        jfields_org_allbinary_logic_visual_theme_ThemesValidation
    end
    

    def isValid()
        return true
    end
    java_overload :isValid, 0
    

    def validationInfo()
        return nil
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
        node = document.createElement(ThemesData.getInstance().NAME)
        size = @themeVector.size()
        (0...size).each do |i|
            themeDomNodeInterface = @themeVector.get(i)
            node.appendChild(themeDomNodeInterface.toXmlNode(document))
        end
        return node
    end
    java_overload :toXmlNode, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :ThemesData, "org/allbinary/logic/visual/theme/ThemesData" unless const_defined?(:ThemesData, false)

end; end; end; end; end

