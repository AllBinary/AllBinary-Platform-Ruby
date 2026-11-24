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
# package org.allbinary.graphics.j2me.workarea.tools

require "java/lang/JavaOverload"
require "org/allbinary/graphics/j2me/workarea/tools/PointsInterface"

module ::Org; module Allbinary; module Graphics; module J2me; module Workarea; module Tools

class Points
    include PointsInterface
    attr_accessor :pointVector

    def jfields_org_allbinary_graphics_j2me_workarea_tools_Points
        @pointVector = nil unless instance_variable_defined?(:@pointVector)
    end
    

    def initialize()
        jfields_org_allbinary_graphics_j2me_workarea_tools_Points
        @pointVector = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def init()
        @pointVector.clear()
    end
    java_overload :init, 0
    

    def getPoints()
        return @pointVector
    end
    java_overload :getPoints, 0
    

    def addPoints(vector)
        @pointVector.addAll2(vector)
    end
    java_overload :addPoints, 1
    

    def isValid()
        if @pointVector.size() > 1
            return true
        else
            return false
        end
    end
    java_overload :isValid, 0
    

    def getSize()
        return @pointVector.size()
    end
    java_overload :getSize, 0
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end

end; end; end; end; end; end

