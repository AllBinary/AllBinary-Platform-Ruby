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
# package org.allbinary.util

require "java/lang/JavaOverload"
# require "jsinterop/annotations/JsType"
require "org/allbinary/util/BasicArrayListS"

module ::Org; module Allbinary; module Util

class ImmutableBasicArrayList < BasicArrayListS
    attr_accessor :name

    def jfields_org_allbinary_util_ImmutableBasicArrayList
        @name = nil unless instance_variable_defined?(:@name)
    end
    

    def initialize(name, size)
        super(size)
        jfields_org_allbinary_util_ImmutableBasicArrayList
        @name = name
    end
    

    def add(e)
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(@name, self)
        return true
    end
    java_overload :add, 1
    

    def addAt(index, element)
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(@name, self)
    end
    java_overload :addAt, 2
    

    def toString()
        return @name
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end

end; end; end

