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
# package org.allbinary.graphics.pipeline


module ::Org; module Allbinary; module Graphics; module Pipeline

class RandomRotationFactory
    attr_accessor :myRandomFactory, :angleFactory

    def jfields_org_allbinary_graphics_pipeline_RandomRotationFactory
        @myRandomFactory = ::Org::Allbinary::Game::Rand::MyRandomFactory.getInstance()
        @angleFactory = ::Org::Allbinary::MathPackage::AngleFactory.getInstance()
    end

    def initialize
        jfields_org_allbinary_graphics_pipeline_RandomRotationFactory
    end
    

    def self.getInstance()
        return RandomRotationFactory.instance
    end
    

    # throws Exception
    def getInstanceList(vector, howMuch)
        graphicsPipe = BasicGraphicsPipeline.new(vector)
        graphicsPipe.createMatrix()
        graphicsPipe.rotateToAngle(@angleFactory.getAt(self.getNextRandomAngle(howMuch)))
        return graphicsPipe.getMatrix()
    end
    

    def getNextRandomAngle(howMuch)
        return @myRandomFactory.getNextInt(howMuch * 10)
    end

    def self.instance()
        RandomRotationFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        RandomRotationFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = RandomRotationFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "RandomRotationFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Rand; autoload :MyRandomFactory, "org/allbinary/game/rand/MyRandomFactory" unless const_defined?(:MyRandomFactory, false); end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleFactory, "org/allbinary/math/AngleFactory" unless const_defined?(:AngleFactory, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :BasicGraphicsPipeline, "org/allbinary/graphics/pipeline/BasicGraphicsPipeline" unless const_defined?(:BasicGraphicsPipeline, false)

begin
    RandomRotationFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

