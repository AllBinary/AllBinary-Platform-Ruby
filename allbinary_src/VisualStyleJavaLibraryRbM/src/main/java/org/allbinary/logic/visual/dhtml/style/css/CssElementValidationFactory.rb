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


class CssElementValidationFactory
    

    def initialize()
    end
    

    # throws Exception
    def self.getInstance(node)
        return CssElementValidation.new(node)
    end
end

require "org/allbinary/logic/control/validate/ValidationInterface"
require "org/w3c/dom/Node"
require "org/allbinary/logic/visual/dhtml/style/css/CssElementValidation"

