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
# package org.allbinary.image

require "java/lang/JavaOverload"
require "org/allbinary/image/ImageCacheBase"

module ::Org; module Allbinary; module Image

class ImageCache < ImageCacheBase
    attr_accessor :commonStrings, :systemWrapper, :tsUtil

    def jfields_org_allbinary_image_ImageCache
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @systemWrapper = ::Org::Allbinary::Logic::ABSystemWrapper.getInstance()
        @tsUtil = ::Org::Allbinary::TsUtil.getInstance()
    end
    

    def initialize()
        super()
        jfields_org_allbinary_image_ImageCache
    end
    

    def addListener(renderer)
    end
    java_overload :addListener, 1
    

    def getIndex(key)
        gdResources = ::Org::Allbinary::Game::Gd::Resource::GDResources.getInstance()
        resourceStringArray = gdResources.resourceStringArray
        size = resourceStringArray.length
        (0...size).each do |index|
            if resourceStringArray[index] == key
                return index
            end
        end
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("unable to find key: ").append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(key)).to_s, self, @commonStrings.RUN)
        raise RuntimeError.new()
    end
    java_overload :getIndex, 1
    

    # throws Exception
    def get(caller, width, height)
        foundIndex = self.getIndexWH(width, height)
        image = self.getFromAvailable(foundIndex, width, height)
        if image == ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE
            @volume += width * height
            if @volume > 32000
                @tsUtil.gc()
                @volume = 0
            end
            image = self.createImage(caller, width, height)
            if foundIndex == -1
                foundIndex = @nextIndex
                @widths[@nextIndex] = width
                @heights[@nextIndex] = height
                @nextIndex += 1
            end
            @listOfList[foundIndex].add(image)
        end
        return image
    end
    java_overload :get, 3
    

    # throws Exception
    def getWithKey(key)
        resourceUtil = ::Org::Allbinary::DataPackage::Resource::ResourceUtil.getInstance()
        resourceId = resourceUtil.getResourceId(key)
        image = self.getImage(resourceId)
        if image == ::Javax::Microedition::Lcdui::NullImage::NULL_IMAGE
            inputStream = resourceUtil.getResourceAsStream(key)
            begin
                @logUtil.putF(::Org::Allbinary::System::Memory.getInfo(), self, @commonStrings.GET)
                image = self.createImageFromInputStream(key, inputStream)
            rescue StandardError => e
                @logUtil.put("Exception: Trying Again After GC", self, @commonStrings.GET, e)
                @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("InputStream: ").append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(inputStream)).to_s, self, @commonStrings.GET)
                @tsUtil.gc()
                @tsUtil.gc()
                @logUtil.putF(::Org::Allbinary::System::Memory.getInfo(), self, @commonStrings.GET)
                sleep((100) / 1000.0)
                image = self.createImageFromInputStream(key, inputStream)
            end
            inputStream.close()
            @hashtable.put(resourceId, image)
        end
        return image
    end
    java_overload :getWithKey, 1
    

    def runTask()
    end
    java_overload :runTask, 0
    

    def isLazy()
        return false
    end
    java_overload :isLazy, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_IMAGE_CACHE, ImageCache.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ImageCache"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_IMAGE_CACHE].include?(name)
        end
        super
    end
end

module ::Java; module Io; autoload :InputStream, "java/io/InputStream" unless const_defined?(:InputStream, false); end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :NullImage, "javax/microedition/lcdui/NullImage" unless const_defined?(:NullImage, false); end; end; end
module ::Org; module Allbinary; autoload :TsUtil, "org/allbinary/TsUtil" unless const_defined?(:TsUtil, false); end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Resource; autoload :ResourceUtil, "org/allbinary/data/resource/ResourceUtil" unless const_defined?(:ResourceUtil, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Gd; module Resource; autoload :GDResources, "org/allbinary/game/gd/resource/GDResources" unless const_defined?(:GDResources, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :ABSystemWrapper, "org/allbinary/logic/ABSystemWrapper" unless const_defined?(:ABSystemWrapper, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module System; autoload :Memory, "org/allbinary/system/Memory" unless const_defined?(:Memory, false); end; end; end
require "java/lang/Thread"

begin
    ImageCache.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

