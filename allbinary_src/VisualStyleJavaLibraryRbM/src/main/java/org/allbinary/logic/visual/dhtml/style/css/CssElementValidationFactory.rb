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
# package org.allbinary.logic.visual.dhtml.style.css


module ::Org; module Allbinary; module Logic; module Visual; module Dhtml; module Style; module Css

class CssElementValidationFactory
    

    def initialize()
    end
    

    # throws Exception
    def self.getInstance(node)
        return CssElementValidation.new(node)
    end
end

module ::Org; module Allbinary; module Logic; module ControlPackage; module Validate; autoload :ValidationInterface, "org/allbinary/logic/control/validate/ValidationInterface" unless const_defined?(:ValidationInterface, false); end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :CssElementValidation, "org/allbinary/logic/visual/dhtml/style/css/CssElementValidation" unless const_defined?(:CssElementValidation, false)

end; end; end; end; end; end; end

