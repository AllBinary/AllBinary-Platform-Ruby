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
# package org.allbinary.image.gui

# require "java/awt/image/BufferedImage"
# require "javax/swing"

class ImageIconUnique < ImageIcon
    attr_accessor :id

    def initialize_fields
        @id = 0
    end
    

    def initialize(bufferedImage, index)
        super(bufferedImage)
        initialize_fields
        self.setId(index)
    end
    

    def getId()
        return @id
    end
    

    def setId(id)
        @id = id
    end
end

