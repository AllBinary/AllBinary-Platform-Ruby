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
# package org.allbinary.logic.visual.media


class MediaData
    attr_accessor :name, :type, :extension

    def initialize_fields
        @name = nil
        @type = nil
        @extension = nil
    end
    

    def initialize(a_Name)
        initialize_fields
        @name = a_Name
        @extension = "." + @name
        @type = MediaTypeData.getInstance().NOT_RESIZABLE_MEDIA
        MediaData.hashMap.put(a_Name, self)
    end
    

    def getName()
        return @name
    end
    

    def getType()
        return @type
    end
    

    def getExtension()
        return @extension
    end
    

    def isConvertableTo(mediaData)
        if self == MediaDataFactory.getInstance().GIF && mediaData == MediaDataFactory.getInstance().JPG
            return true
        end
        return false
    end
    

    def toString()
        return self.getName()
    end
    alias_method :to_s, :toString
    

    # throws Exception
    def self.get(a_Name)
        mediaData = MediaData.hashMap.get(a_Name)
        if mediaData != nil
            return mediaData
        else
            raise StandardError.new("No Such MediaData")
        end
    end
    

    def self.getDefault()
        return MediaDataFactory.getInstance().JPG
    end
    

    def self.toHashMap()
        return MediaData.hashMap
    end

    def self.hashMap()
        return defined?(@@hashMap) ? @@hashMap : nil
    end

    def self.hashMap=(value)
        @@hashMap = value
    end
end

require "java/util/HashMap"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/visual/media/MediaDataFactory"
require "org/allbinary/logic/visual/media/MediaTypeData"

class MediaData
    @@hashMap = StdUtil.getInstance().createHashMap()
end

