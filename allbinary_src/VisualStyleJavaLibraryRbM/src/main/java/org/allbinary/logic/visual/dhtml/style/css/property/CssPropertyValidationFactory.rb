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


module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Style; module Css; module Property

class CssPropertyValidationFactory
    

    def initialize()
    end
    

    # throws Exception
    def self.getInstance(node)
        return ::Org::Allbinary::Logic::Visual::Dhtml::Style::Css::Property::Font::FontFamilyValidation.new(node)
    end
end

module ::Org; module Allbinary; module Logic; module ControlPackage; module Validate; autoload :ValidationInterface, "org/allbinary/logic/control/validate/ValidationInterface" unless const_defined?(:ValidationInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Style; module Css; module Property; module Font; autoload :FontFamilyValidation, "org/allbinary/logic/visual/dhtml/style/css/property/font/FontFamilyValidation" unless const_defined?(:FontFamilyValidation, false); end; end; end; end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end

end; end; end; end; end; end; end; end

