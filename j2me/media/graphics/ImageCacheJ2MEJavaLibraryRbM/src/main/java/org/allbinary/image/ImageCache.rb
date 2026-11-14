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

require "org/allbinary/image/ImageCacheBase"

class ImageCache < ImageCacheBase
    attr_accessor :commonStrings, :tsUtil

    def initialize_fields
        @commonStrings = CommonStrings.getInstance()
        @tsUtil = TsUtil.getInstance()
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def addListener(renderer)
    end
    

    def getIndex(key)
        gdResources = GDResources.getInstance()
        resourceStringArray = gdResources.resourceStringArray
        size = resourceStringArray.length
        (0...size).each do |index|
            if resourceStringArray[index] == key
                return index
            end
        end
        @logUtil.putF(StringMaker.new().append("unable to find key: ").append(StringUtil.getInstance().toString(key)).to_s, self, @commonStrings.RUN)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def get(caller, width, height)
        foundIndex = self.getIndexWH(width, height)
        image = self.getFromAvailable(foundIndex, width, height)
        if image == NullImage::NULL_IMAGE
            @volume += width * height
            if @volume > 32000
                @tsUtil.gc()
                @volume = 0
            end
            image = self.createImage(caller, width, height)
            widths = @widths
            if @nextIndex > widths.length - 1
                if foundIndex == -1
                    foundIndex = @nextIndex
                    widths[@nextIndex] = width
                    @heights[@nextIndex] = height
                    @nextIndex += 1
                end
                @listOfList[foundIndex].add(image)
            end
        end
        return image
    end
    

    # throws Exception
    def getWithKey(key)
        image = self.getImage(key)
        if image == NullImage::NULL_IMAGE
            resourceUtil = ResourceUtil.getInstance()
            resourceInputStream = resourceUtil.getResourceAsStream(key)
            if resourceInputStream == nil
                raise RuntimeError.new(StringMaker.new().append("Image resource is not available for key: ").append(StringUtil.getInstance().toString(key)).to_s)
            end
            begin
                image = self.createImageFromInputStream(key, resourceInputStream)
            rescue StandardError => e
                @logUtil.put("Exception: Trying Again After GC", self, @commonStrings.GET, e)
                @logUtil.putF(StringMaker.new().append("InputStream: ").append(StringUtil.getInstance().toString(resourceInputStream)).to_s, self, @commonStrings.GET)
                @tsUtil.gc()
                @tsUtil.gc()
                @logUtil.putF(Memory.getInfo(), self, @commonStrings.GET)
                sleep((100) / 1000.0)
                image = self.createImageFromInputStream(key, resourceInputStream)
            end
            if J2MEUtil.isHTML()
            else
                resourceInputStream.close()
            end
            @hashtable.put(key, image)
        end
        return image
    end
    

    # throws Exception
    def loadImageForAnimation()
    end
    

    def progressEnded()
    end
    

    def runTask()
    end
    

    def isLazy()
        return false
    end

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

autoload :InputStream, "java/io/InputStream"
autoload :Image, "javax/microedition/lcdui/Image"
autoload :NullImage, "javax/microedition/lcdui/NullImage"
autoload :J2MEUtil, "org/allbinary/J2MEUtil"
autoload :TsUtil, "org/allbinary/TsUtil"
autoload :ResourceUtil, "org/allbinary/data/resource/ResourceUtil"
autoload :GDResources, "org/allbinary/game/gd/resource/GDResources"
autoload :ABSystemWrapper, "org/allbinary/logic/ABSystemWrapper"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :Memory, "org/allbinary/system/Memory"
require "java/lang/Thread"

begin
    ImageCache.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

