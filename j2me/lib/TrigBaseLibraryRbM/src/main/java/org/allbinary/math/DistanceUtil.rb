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
# package org.allbinary.math


module ::Org; module Allbinary; module MathPackage

class DistanceUtil
    attr_accessor :mathUtil

    def jfields_org_allbinary_math_DistanceUtil
        @mathUtil = ::Org::Allbinary::Logic::MathPackage::MathUtil.getInstance()
    end

    def initialize
        jfields_org_allbinary_math_DistanceUtil
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def getDistance(x1, y1, x2, y2)
        dx = x1 - x2
        dy = y1 - y2
        return ((@mathUtil.sqrt((dx * dx) + (dy * dy))).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })
    end

    def self.instance()
        DistanceUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        DistanceUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = DistanceUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "DistanceUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module MathPackage; autoload :MathUtil, "org/allbinary/logic/math/MathUtil" unless const_defined?(:MathUtil, false); end; end; end; end

begin
    DistanceUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

