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
# package org.allbinary.animation


module ::Org; module Allbinary; module Animation

module VectorAnimationFactoryInterface
    

    def getInstance(points, basicColor)
        return super if defined?(super)
        raise NotImplementedError
    end
end

module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end
autoload :VectorAnimation, "org/allbinary/animation/VectorAnimation" unless const_defined?(:VectorAnimation, false)

end; end; end

