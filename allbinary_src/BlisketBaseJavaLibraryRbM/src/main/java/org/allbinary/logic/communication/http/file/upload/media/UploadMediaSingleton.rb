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
require "java/lang/JavaClass"
# require "java/util/Set"

module ::Org; module Allbinary; module Logic; module Communication; module Http; module FilePackage; module Upload; module Media

class UploadMediaSingleton
    attr_accessor :logUtil, :commonStrings, :readerFileTypesHashMap, :writerFileTypesHashMap

    def jfields_org_allbinary_logic_communication_http_file_upload_media_UploadMediaSingleton
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @readerFileTypesHashMap = nil unless instance_variable_defined?(:@readerFileTypesHashMap)
        @writerFileTypesHashMap = nil unless instance_variable_defined?(:@writerFileTypesHashMap)
    end
    

    def initialize()
        jfields_org_allbinary_logic_communication_http_file_upload_media_UploadMediaSingleton
        @readerFileTypesHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        @writerFileTypesHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        hashMap = ::Org::Allbinary::Logic::Visual::Media::MediaData.toHashMap()
        set = hashMap.keySet()
        mediaDataNameArray = set.toArray()
        size = mediaDataNameArray.length
        (0...size).each do |index|
            mediaDataName = mediaDataNameArray[index]
            mediaData = hashMap.get(mediaDataName)
            @readerFileTypesHashMap.put(mediaData.getName(), mediaData.getType())
        end
        mediaIOUtil = ::Org::Allbinary::Logic::Visual::Media::MediaIOUtil.getInstance()
        _RESIZABLE_MEDIA = ::Org::Allbinary::Logic::Visual::Media::MediaTypeData.getInstance().RESIZABLE_MEDIA
        readerFileTypes = mediaIOUtil.getReaderFormatNames()
        (0...readerFileTypes.length).each do |index|
            @readerFileTypesHashMap.put(readerFileTypes[index], _RESIZABLE_MEDIA)
        end
        writerFileTypes = mediaIOUtil.getWriterFormatNames()
        (0...writerFileTypes.length).each do |index|
            @writerFileTypesHashMap.put(writerFileTypes[index], _RESIZABLE_MEDIA)
        end
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().HTTPREQUEST)
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
    

    def isMedia_j2(mediaFileType, aMediaType)
        return self.isReaderMedia(mediaFileType, aMediaType) && self.isWriterMedia(mediaFileType, aMediaType)
    end
    

    def isReaderMedia(mediaFileType, aMediaType)
        return self.isMedia(mediaFileType, aMediaType, @readerFileTypesHashMap)
    end
    

    def isWriterMedia(mediaFileType, aMediaType)
        return self.isMedia(mediaFileType, aMediaType, @writerFileTypesHashMap)
    end
    

    def isMedia_j3(mediaFileType, aMediaType, hashMap)
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

    def isMedia(*java_overload_args)
        return isMedia_j2(*java_overload_args) if java_overload_args.length == 2
        return isMedia_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method isMedia takes #{java_overload_args.length} arguments"
    end

    def self.uploadMedia()
        UploadMediaSingleton.java_static_fields unless @java_static_fields_started
        return defined?(@@uploadMedia) ? @@uploadMedia : nil
    end

    def self.uploadMedia=(value)
        UploadMediaSingleton.java_static_fields unless @java_static_fields_started
        @@uploadMedia = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@uploadMedia = nil
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "UploadMediaSingleton"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Media; autoload :MediaData, "org/allbinary/logic/visual/media/MediaData" unless const_defined?(:MediaData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Media; autoload :MediaIOUtil, "org/allbinary/logic/visual/media/MediaIOUtil" unless const_defined?(:MediaIOUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Media; autoload :MediaTypeData, "org/allbinary/logic/visual/media/MediaTypeData" unless const_defined?(:MediaTypeData, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

begin
    UploadMediaSingleton.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end

