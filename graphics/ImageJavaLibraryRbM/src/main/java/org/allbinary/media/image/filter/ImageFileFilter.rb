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

require "java/lang/Object"
require "java/lang/JavaOverload"
require "java/lang/JavaClass"
# require "java/io/File"
# require "javax/swing/filechooser/FileFilter"

module ::Org; module Allbinary; module Media; module Image; module Filter

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
    java_overload :accept, 1
    

    def getDescription()
        return "Accepts .jpg and .jpeg files"
    end
    java_overload :getDescription, 0
end

end; end; end; end; end

