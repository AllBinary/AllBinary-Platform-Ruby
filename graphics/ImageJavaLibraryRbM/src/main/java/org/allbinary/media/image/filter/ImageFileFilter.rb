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
# package org.allbinary.media.image.filter

# require "java/io/File"
# require "javax/swing/filechooser/FileFilter"

#TWB - replace with file visitor version
class ImageFileFilter < FileFilter
    

    def accept(f)
        if f.isDirectory()
            return true
        end
        s = f.getName()
        i = (s.rindex(".") || -1)
        if i > 0 && i < s.length - 1
            ext = s[i + 1..].downcase
            if (ext == "jpg") || (ext == "jpeg")
                return true
            end
        end
        return false
    end
    

    def getDescription()
        return "Accepts .jpg and .jpeg files"
    end
end

