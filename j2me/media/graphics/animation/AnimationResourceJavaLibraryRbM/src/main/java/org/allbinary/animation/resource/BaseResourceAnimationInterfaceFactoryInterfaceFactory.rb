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
# package org.allbinary.animation.resource

require "org/allbinary/animation/resource/FeatureResourceAnimationInterfaceFactoryInterface"

class BaseResourceAnimationInterfaceFactoryInterfaceFactory
    include FeatureResourceAnimationInterfaceFactoryInterface
    attr_accessor :logUtil, :commonStrings, :hashtable, :rectangleHashtable, :rectangleArrayOfArraysHashtable, :name, :initialized

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @hashtable = nil
        @rectangleHashtable = nil
        @rectangleArrayOfArraysHashtable = nil
        @name = nil
        @initialized = false
    end
    

    def initialize(name, hashtable, rectangleHashtable, rectangleArrayHashtable)
        initialize_fields
        @hashtable = hashtable
        @rectangleHashtable = rectangleHashtable
        @rectangleArrayOfArraysHashtable = rectangleArrayHashtable
        @name = name
    end
    

    def getName()
        return @name
    end
    

    # throws Exception
    def init(level)
        commonStrings = CommonStrings.getInstance()
        @logUtil.putF(StringMaker.new().append("Available List of Animations: ").append(@hashtable.to_s).to_s, self, commonStrings.INIT)
        self.setInitialized(true)
    end
    

    # throws Exception
    def initImageCache(imageCache, level)
    end
    

    # throws Exception
    def add(resource, animationInterfaceFactoryInterface)
        if @hashtable.containsKey(resource)
            raise StandardError.new(StringMaker.new().append("Resource Already Created: ").append(resource).to_s)
        end
        @hashtable.put(resource, animationInterfaceFactoryInterface)
    end
    

    # throws Exception
    def getBasicAnimationInterfaceFactoryInstance(resource)
        basicAnimationInterfaceFactoryInterfaceCanBeNull = @hashtable.get(resource)
        if basicAnimationInterfaceFactoryInterfaceCanBeNull == nil
            return NullAnimationFactory::NULL_NOT_FOR_USE_ANIMATION_FACTORY
        end
        return basicAnimationInterfaceFactoryInterfaceCanBeNull
    end
    

    # throws Exception
    def getRectangle(resource)
        rectangleCanBeNull = @rectangleHashtable.get(resource)
        if rectangleCanBeNull == nil
            return RectangleFactory::SINGLETON
        end
        return rectangleCanBeNull
    end
    

    # throws Exception
    def addRectangle(resource, rectangle)
        @rectangleHashtable.put(resource, rectangle)
    end
    

    # throws Exception
    def getRectangleArrayOfArrays(resource)
        return @rectangleArrayOfArraysHashtable.get(resource)
    end
    

    # throws Exception
    def addRectangleArrayOfArrays(resource, rectangleArrayOfArrays)
        @rectangleArrayOfArraysHashtable.put(resource, rectangleArrayOfArrays)
    end
    

    def isFeature()
        return false
    end
    

    def isLoadingLevel(level)
        resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance()
        if level == resourceLoadingLevelFactory.LOAD_ALL.getLevel()
            return true
        else
            return false
        end
    end
    

    def toString()
        return StringMaker.new().append(self.class.name).append(CommonSeps.getInstance().SEMICOLON).append(CommonSeps.getInstance().SPACE).append(@name).to_s
    end
    alias_method :to_s, :toString
    

    def getHashtable()
        return @hashtable
    end
    

    def getRectangleHashtable()
        return @rectangleHashtable
    end
    

    def getRectangleArrayOfArraysHashtable()
        return @rectangleArrayOfArraysHashtable
    end
    

    def setInitialized(initialized)
        @initialized = initialized
    end
    

    def isInitialized()
        return @initialized
    end
end

require "org/allbinary/animation/BasicAnimationInterfaceFactoryInterface"
require "org/allbinary/animation/NullAnimationFactory"
require "org/allbinary/game/resource/ResourceLoadingLevelFactory"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/graphics/RectangleFactory"
require "org/allbinary/image/ImageCache"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/ABHashtable"

