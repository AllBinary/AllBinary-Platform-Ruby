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
            name = @list.objectArray[index]
            if (mediaFileType <=> name) == 0
                return true
            end
        end
        return false
    end
    

    def self.getInstance()
        return ImageTypeUtil::SINGLETON
    end
end

require "org/allbinary/util/BasicArrayList"

class ImageTypeUtil
    SINGLETON = ImageTypeUtil.new()
end

