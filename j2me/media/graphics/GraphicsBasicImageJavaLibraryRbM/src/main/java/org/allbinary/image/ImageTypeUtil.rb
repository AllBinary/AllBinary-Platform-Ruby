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


class ImageTypeUtil
    attr_accessor :PNG, :JPG, :GIF, :list

    def initialize_fields
        @PNG = "png"
        @JPG = "jpg"
        @GIF = "gif"
        @list = BasicArrayListD.new()
    end
    

    def initialize()
        initialize_fields
        @list.add(@JPG)
        @list.add(@GIF)
        @list.add(@PNG)
    end
    

    def isSupported(mediaFileType)
        mediaFileType = mediaFileType.downcase
        (@list.size() - 1).step(0, -(1)) do |index|
            name = @list.get(index)
            if (mediaFileType <=> name) == 0
                return true
            end
        end
        return false
    end
    

    def self.getInstance()
        return ImageTypeUtil::SINGLETON
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, ImageTypeUtil.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ImageTypeUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"

begin
    ImageTypeUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

