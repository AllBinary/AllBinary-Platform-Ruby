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
# package org.allbinary.layer

require "java/lang/JavaOverload"
require "org/allbinary/layer/AllBinaryLayerFactoryInterface"

module ::Org; module Allbinary; module Layer

class AllBinaryLayerFactory
    include AllBinaryLayerFactoryInterface
    attr_accessor :rectangle

    def jfields_org_allbinary_layer_AllBinaryLayerFactory
        @rectangle = nil unless instance_variable_defined?(:@rectangle)
    end
    

    def initialize(rectangle)
        jfields_org_allbinary_layer_AllBinaryLayerFactory
        @rectangle = rectangle
    end
    

    def getInstance()
        return AllBinaryLayer.new(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, @rectangle, ::Org::Allbinary::View::ViewPosition.getInstanceD())
    end
    java_overload :getInstance, 0
end

module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module View; autoload :ViewPosition, "org/allbinary/view/ViewPosition" unless const_defined?(:ViewPosition, false); end; end; end
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false)

end; end; end

