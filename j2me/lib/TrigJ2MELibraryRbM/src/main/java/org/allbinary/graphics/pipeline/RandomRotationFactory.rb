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


class RandomRotationFactory
    attr_accessor :myRandomFactory, :angleFactory

    def initialize_fields
        @myRandomFactory = MyRandomFactory.getInstance()
        @angleFactory = AngleFactory.getInstance()
    end

    def initialize
        initialize_fields
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

autoload :MyRandomFactory, "org/allbinary/game/rand/MyRandomFactory"
autoload :AngleFactory, "org/allbinary/math/AngleFactory"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicGraphicsPipeline, "org/allbinary/graphics/pipeline/BasicGraphicsPipeline"

begin
    RandomRotationFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

