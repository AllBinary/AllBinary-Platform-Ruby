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
# package org.allbinary.view

require "java/lang/JavaOverload"
require "org/allbinary/graphics/GPoint"

module ::Org; module Allbinary; module View

class ViewPositionBase < ::Org::Allbinary::Graphics::GPoint
    

    def initialize(x, y, z)
        super(x, y, z)
    end
    

    def getX2()
        return self.getX()
    end
    java_overload :getX2, 0
    

    def getY2()
        return self.getY()
    end
    java_overload :getY2, 0
    

    def getZ2()
        return self.getZ()
    end
    java_overload :getZ2, 0
    

    def setAllbinaryLayer(allbinaryLayer)
    end
    java_overload :setAllbinaryLayer, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_VIEW_POSITION, ViewPositionBase.new(0, 0, 0))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ViewPositionBase"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_VIEW_POSITION].include?(name)
        end
        super
    end
end

begin
    ViewPositionBase.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

