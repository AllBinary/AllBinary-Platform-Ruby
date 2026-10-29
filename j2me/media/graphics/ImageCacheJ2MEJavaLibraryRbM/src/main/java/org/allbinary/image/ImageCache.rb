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

# require "java/io/InputStream"
# require "javax/microedition/lcdui/Image"
# require "javax/microedition/lcdui/NullImage"
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
end

require "org/allbinary/J2MEUtil"
require "org/allbinary/TsUtil"
require "org/allbinary/data/resource/ResourceUtil"
require "org/allbinary/game/gd/resource/GDResources"
require "org/allbinary/logic/ABSystemWrapper"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/system/Memory"
require "java/lang/Thread"

class ImageCache
    NULL_IMAGE_CACHE = ImageCache.new()
end

