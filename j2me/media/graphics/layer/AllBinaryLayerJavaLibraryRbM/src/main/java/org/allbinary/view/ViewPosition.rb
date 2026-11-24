# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.view

require "java/lang/JavaOverload"
require "org/allbinary/view/ViewPositionBase"

module ::Org; module Allbinary; module View

class ViewPosition < ViewPositionBase
    attr_accessor :allbinaryLayer

    def jfields_org_allbinary_view_ViewPosition
        @allbinaryLayer = ::Org::Allbinary::Layer::AllBinaryLayer::NULL_ALLBINARY_LAYER
    end
    

    def self.getInstanceD()
        return ViewPosition.new(0, 0, 0)
    end
    

    def initialize(x, y, z)
        super(x, y, z)
        jfields_org_allbinary_view_ViewPosition
    end
    

    def getX()
        return @allbinaryLayer.getXP()
    end
    java_overload :getX, 0
    

    def getY()
        return @allbinaryLayer.getYP()
    end
    java_overload :getY, 0
    

    def getZ()
        return @allbinaryLayer.getZP()
    end
    java_overload :getZ, 0
    

    def getX2()
        return self.getX() + @allbinaryLayer.getWidth()
    end
    java_overload :getX2, 0
    

    def getY2()
        return self.getY() + @allbinaryLayer.getHeight()
    end
    java_overload :getY2, 0
    

    def getZ2()
        return (((self.getZ() + @allbinaryLayer.getDepth())).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
    end
    java_overload :getZ2, 0
    

    def setAllbinaryLayer(allbinaryLayer)
        @allbinaryLayer = allbinaryLayer
    end
    java_overload :setAllbinaryLayer, 1
end

module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end

end; end; end

