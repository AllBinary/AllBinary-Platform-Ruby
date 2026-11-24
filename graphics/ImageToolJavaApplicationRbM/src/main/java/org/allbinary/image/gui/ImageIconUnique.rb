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

require "java/lang/JavaOverload"
# require "java/awt/image/BufferedImage"
# require "javax/swing/ImageIcon"

module ::Org; module Allbinary; module Image; module Gui

class ImageIconUnique < ImageIcon
    attr_accessor :id

    def jfields_org_allbinary_image_gui_ImageIconUnique
        @id = 0 unless instance_variable_defined?(:@id)
    end
    

    def initialize(bufferedImage, index)
        super(bufferedImage)
        jfields_org_allbinary_image_gui_ImageIconUnique
        self.setId(index)
    end
    

    def getId()
        return @id
    end
    java_overload :getId, 0
    

    def setId(id)
        @id = id
    end
    java_overload :setId, 1
end

end; end; end; end

