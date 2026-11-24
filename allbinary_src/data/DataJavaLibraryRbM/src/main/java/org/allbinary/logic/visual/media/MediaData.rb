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

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Logic; module Visual; module Media

class MediaData
    attr_accessor :name, :type, :extension

    def jfields_org_allbinary_logic_visual_media_MediaData
        @name = nil unless instance_variable_defined?(:@name)
        @type = nil unless instance_variable_defined?(:@type)
        @extension = nil unless instance_variable_defined?(:@extension)
    end
    

    def initialize(a_Name)
        jfields_org_allbinary_logic_visual_media_MediaData
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
        MediaData.java_static_fields unless @java_static_fields_started
        return defined?(@@hashMap) ? @@hashMap : nil
    end

    def self.hashMap=(value)
        MediaData.java_static_fields unless @java_static_fields_started
        @@hashMap = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "MediaData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
autoload :MediaDataFactory, "org/allbinary/logic/visual/media/MediaDataFactory" unless const_defined?(:MediaDataFactory, false)
autoload :MediaTypeData, "org/allbinary/logic/visual/media/MediaTypeData" unless const_defined?(:MediaTypeData, false)

begin
    MediaData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

