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
# package org.allbinary.logic.communication.http.file.upload.media

require "java/lang/Object"
# require "java/util/Set"

class UploadMediaSingleton
    attr_accessor :logUtil, :commonStrings, :readerFileTypesHashMap, :writerFileTypesHashMap

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @readerFileTypesHashMap = nil
        @writerFileTypesHashMap = nil
    end
    

    def initialize()
        initialize_fields
        @readerFileTypesHashMap = StdUtil.getInstance().createHashMap()
        @writerFileTypesHashMap = StdUtil.getInstance().createHashMap()
        hashMap = MediaData.toHashMap()
        set = hashMap.keySet()
        mediaDataNameArray = set.toArray()
        size = mediaDataNameArray.length
        (0...size).each do |index|
            mediaDataName = mediaDataNameArray[index]
            mediaData = hashMap.get(mediaDataName)
            @readerFileTypesHashMap.put(mediaData.getName(), mediaData.getType())
        end
        mediaIOUtil = MediaIOUtil.getInstance()
        _RESIZABLE_MEDIA = MediaTypeData.getInstance().RESIZABLE_MEDIA
        readerFileTypes = mediaIOUtil.getReaderFormatNames()
        (0...readerFileTypes.length).each do |index|
            @readerFileTypesHashMap.put(readerFileTypes[index], _RESIZABLE_MEDIA)
        end
        writerFileTypes = mediaIOUtil.getWriterFormatNames()
        (0...writerFileTypes.length).each do |index|
            @writerFileTypesHashMap.put(writerFileTypes[index], _RESIZABLE_MEDIA)
        end
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().HTTPREQUEST)
            stringBuffer = StringMaker.new()
            stringBuffer.append("Supported Media Readers: ")
            stringBuffer.append(@readerFileTypesHashMap.to_s)
            stringBuffer.append(" Writers: ")
            stringBuffer.append(@writerFileTypesHashMap.to_s)
            @logUtil.putF(stringBuffer.to_s, self, @commonStrings.CONSTRUCTOR)
        end
    end
    

    def self.getInstance()
        java_monitor.synchronize do
        if UploadMediaSingleton.uploadMedia == nil
            UploadMediaSingleton.uploadMedia = UploadMediaSingleton.new()
        end
        return UploadMediaSingleton.uploadMedia
        end
    end
    

    def isReaderSupported(mediaFileType)
        return @readerFileTypesHashMap.containsKey(mediaFileType)
    end
    

    def isWriterSupported(mediaFileType)
        return @readerFileTypesHashMap.containsKey(mediaFileType)
    end
    

    def isSupported(mediaFileType)
        return self.isReaderSupported(mediaFileType) && self.isWriterSupported(mediaFileType)
    end
    

    def isMedia(mediaFileType, aMediaType)
        return self.isReaderMedia(mediaFileType, aMediaType) && self.isWriterMedia(mediaFileType, aMediaType)
    end
    

    def isReaderMedia(mediaFileType, aMediaType)
        return self.isMedia(mediaFileType, aMediaType, @readerFileTypesHashMap)
    end
    

    def isWriterMedia(mediaFileType, aMediaType)
        return self.isMedia(mediaFileType, aMediaType, @writerFileTypesHashMap)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def isMedia(mediaFileType, aMediaType, hashMap)
        if hashMap.containsKey(mediaFileType)
            mediaType = hashMap.get(mediaFileType)
            if (mediaType <=> aMediaType) == 0
                return true
            else
                return false
            end
        else
            return false
        end
    end

    def self.uploadMedia()
        return defined?(@@uploadMedia) ? @@uploadMedia : nil
    end

    def self.uploadMedia=(value)
        @@uploadMedia = value
    end
end

require "java/util/HashMap"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/visual/media/MediaData"
require "org/allbinary/logic/visual/media/MediaIOUtil"
require "org/allbinary/logic/visual/media/MediaTypeData"
require "org/allbinary/string/CommonStrings"

class UploadMediaSingleton
    @@uploadMedia = nil
end

