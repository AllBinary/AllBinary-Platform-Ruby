# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.animation.image


module ::Org; module Allbinary; module Animation; module Image

class AnimationFactoryInitializationVisitor
    attr_accessor :width, :height, :dx, :dy, :originalDx, :originalDy

    def jfields_org_allbinary_animation_image_AnimationFactoryInitializationVisitor
        @width = 0 unless instance_variable_defined?(:@width)
        @height = 0 unless instance_variable_defined?(:@height)
        @dx = 0 unless instance_variable_defined?(:@dx)
        @dy = 0 unless instance_variable_defined?(:@dy)
        @originalDx = 0 unless instance_variable_defined?(:@originalDx)
        @originalDy = 0 unless instance_variable_defined?(:@originalDy)
    end

    def initialize
        jfields_org_allbinary_animation_image_AnimationFactoryInitializationVisitor
    end
    

    def visit()
    end
    

    def toString()
        commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        commonLabels = ::Org::Allbinary::StringPackage::CommonLabels.getInstance()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(::Org::Allbinary::MathPackage::PositionStrings.getInstance().DX_LABEL).appendfloat((@dx).to_f)
        stringBuffer.append(::Org::Allbinary::MathPackage::PositionStrings.getInstance().DY_LABEL).appendfloat((@dy).to_f)
        stringBuffer.append(commonLabels.WIDTH_LABEL)
        stringBuffer.appendint(@width)
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(commonLabels.HEIGHT_LABEL)
        stringBuffer.appendint(@height)
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :PositionStrings, "org/allbinary/math/PositionStrings" unless const_defined?(:PositionStrings, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end

end; end; end; end

