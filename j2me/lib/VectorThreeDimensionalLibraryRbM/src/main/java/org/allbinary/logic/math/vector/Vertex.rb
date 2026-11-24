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
# package org.allbinary.logic.math.vector


module ::Org; module Allbinary; module Logic; module MathPackage; module Vector

class Vertex
    attr_accessor :x, :y, :z

    def jfields_org_allbinary_logic_math_vector_Vertex
        @x = ::Org::Allbinary::Logic::MathPackage::BasicDecimal.new(0)
        @y = ::Org::Allbinary::Logic::MathPackage::BasicDecimal.new(0)
        @z = ::Org::Allbinary::Logic::MathPackage::BasicDecimal.new(0)
    end
    

    def initialize()
        jfields_org_allbinary_logic_math_vector_Vertex
    end
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        positionStrings = ::Org::Allbinary::MathPackage::PositionStrings.getInstance()
        stringBuffer.append(positionStrings.X_LABEL)
        stringBuffer.append(@x.to_s)
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE)
        stringBuffer.append(positionStrings.Y_LABEL)
        stringBuffer.append(@y.to_s)
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE)
        stringBuffer.append(positionStrings.Z_LABEL)
        stringBuffer.append(@z.to_s)
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Logic; module MathPackage; autoload :BasicDecimal, "org/allbinary/logic/math/BasicDecimal" unless const_defined?(:BasicDecimal, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :PositionStrings, "org/allbinary/math/PositionStrings" unless const_defined?(:PositionStrings, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end

end; end; end; end; end

