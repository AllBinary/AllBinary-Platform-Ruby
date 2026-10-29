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

require "org/allbinary/logic/visual/dhtml/style/css/property/CssPropertyView"

class FontFamilyView < CssPropertyView

    def initialize(*args)
        case args.length
        when 0 then constructor0(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor0()
        method(:initialize).super_method.call(FontFamilyData.getInstance().VALUE)
    end
    

    def constructor1(node)
        method(:initialize).super_method.call(node)
    end
end

require "org/w3c/dom/Node"
require "org/allbinary/logic/visual/dhtml/style/css/property/font/FontFamilyData"

