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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/animation/resource/FeatureResourceAnimationInterfaceFactoryInterface"

module ::Org; module Allbinary; module Animation; module Resource

class BaseResourceAnimationInterfaceFactoryInterfaceFactory
    include FeatureResourceAnimationInterfaceFactoryInterface
    attr_accessor :logUtil, :commonStrings, :hashtable, :rectangleHashtable, :rectangleArrayOfArraysHashtable, :name, :initialized

    def jfields_org_allbinary_animation_resource_BaseResourceAnimationInterfaceFactoryInterfaceFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @hashtable = nil unless instance_variable_defined?(:@hashtable)
        @rectangleHashtable = nil unless instance_variable_defined?(:@rectangleHashtable)
        @rectangleArrayOfArraysHashtable = nil unless instance_variable_defined?(:@rectangleArrayOfArraysHashtable)
        @name = nil unless instance_variable_defined?(:@name)
        @initialized = false unless instance_variable_defined?(:@initialized)
    end
    

    def initialize(name, hashtable, rectangleHashtable, rectangleArrayHashtable)
        jfields_org_allbinary_animation_resource_BaseResourceAnimationInterfaceFactoryInterfaceFactory
        @hashtable = hashtable
        @rectangleHashtable = rectangleHashtable
        @rectangleArrayOfArraysHashtable = rectangleArrayHashtable
        @name = name
    end
    

    def getName()
        return @name
    end
    java_overload :getName, 0
    

    # throws Exception
    def init(level)
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Available List of Animations: ").append(@hashtable.to_s).to_s, self, commonStrings.INIT)
        self.setInitialized(true)
    end
    java_overload :init, 1
    

    # throws Exception
    def initImageCache(imageCache, level)
    end
    java_overload :initImageCache, 2
    

    # throws Exception
    def add(resource, animationInterfaceFactoryInterface)
        if @hashtable.containsKey(resource)
            raise StandardError.new(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Resource Already Created: ").append(resource).to_s)
        end
        @hashtable.put(resource, animationInterfaceFactoryInterface)
    end
    java_overload :add, 2
    

    # throws Exception
    def getBasicAnimationInterfaceFactoryInstance(resource)
        basicAnimationInterfaceFactoryInterfaceCanBeNull = @hashtable.get(resource)
        if basicAnimationInterfaceFactoryInterfaceCanBeNull == nil
            return ::Org::Allbinary::Animation::NullAnimationFactory::NULL_NOT_FOR_USE_ANIMATION_FACTORY
        end
        return basicAnimationInterfaceFactoryInterfaceCanBeNull
    end
    java_overload :getBasicAnimationInterfaceFactoryInstance, 1
    

    # throws Exception
    def getRectangle(resource)
        rectangleCanBeNull = @rectangleHashtable.get(resource)
        if rectangleCanBeNull == nil
            return ::Org::Allbinary::Graphics::RectangleFactory::SINGLETON
        end
        return rectangleCanBeNull
    end
    java_overload :getRectangle, 1
    

    # throws Exception
    def addRectangle(resource, rectangle)
        @rectangleHashtable.put(resource, rectangle)
    end
    java_overload :addRectangle, 2
    

    # throws Exception
    def getRectangleArrayOfArrays(resource)
        valueCanBeNull = @rectangleArrayOfArraysHashtable.get(resource)
        if valueCanBeNull != nil
            rectangleArrayOfArrays = valueCanBeNull
            return rectangleArrayOfArrays
        else
            return ::Org::Allbinary::Graphics::RectangleFactory::ARRAY_OF_ARRAYS
        end
    end
    java_overload :getRectangleArrayOfArrays, 1
    

    # throws Exception
    def addRectangleArrayOfArrays(resource, rectangleArrayOfArrays)
        @rectangleArrayOfArraysHashtable.put(resource, rectangleArrayOfArrays)
    end
    java_overload :addRectangleArrayOfArrays, 2
    

    def isFeature()
        return false
    end
    java_overload :isFeature, 0
    

    def isLoadingLevel(level)
        resourceLoadingLevelFactory = ::Org::Allbinary::Game::Resource::ResourceLoadingLevelFactory.getInstance()
        if level == resourceLoadingLevelFactory.LOAD_ALL.getLevel()
            return true
        else
            return false
        end
    end
    java_overload :isLoadingLevel, 1
    

    def toString()
        return ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(self.class.java_name).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SEMICOLON).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE).append(@name).to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
    

    def getHashtable()
        return @hashtable
    end
    java_overload :getHashtable, 0
    

    def getRectangleHashtable()
        return @rectangleHashtable
    end
    java_overload :getRectangleHashtable, 0
    

    def getRectangleArrayOfArraysHashtable()
        return @rectangleArrayOfArraysHashtable
    end
    java_overload :getRectangleArrayOfArraysHashtable, 0
    

    def setInitialized(initialized)
        @initialized = initialized
    end
    java_overload :setInitialized, 1
    

    def isInitialized()
        return @initialized
    end
    java_overload :isInitialized, 0
end

module ::Org; module Allbinary; module Animation; autoload :BasicAnimationInterfaceFactoryInterface, "org/allbinary/animation/BasicAnimationInterfaceFactoryInterface" unless const_defined?(:BasicAnimationInterfaceFactoryInterface, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :NullAnimationFactory, "org/allbinary/animation/NullAnimationFactory" unless const_defined?(:NullAnimationFactory, false); end; end; end
module ::Org; module Allbinary; module Game; module Resource; autoload :ResourceLoadingLevelFactory, "org/allbinary/game/resource/ResourceLoadingLevelFactory" unless const_defined?(:ResourceLoadingLevelFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :RectangleFactory, "org/allbinary/graphics/RectangleFactory" unless const_defined?(:RectangleFactory, false); end; end; end
module ::Org; module Allbinary; module Image; autoload :ImageCache, "org/allbinary/image/ImageCache" unless const_defined?(:ImageCache, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end

end; end; end; end

