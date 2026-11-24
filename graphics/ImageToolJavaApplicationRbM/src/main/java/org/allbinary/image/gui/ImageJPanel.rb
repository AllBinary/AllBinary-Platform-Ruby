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
# require "java/awt/Graphics"
# require "java/awt/image/BufferedImage"
# require "javax/swing/GroupLayout"
# require "javax/swing/JPanel"

module ::Org; module Allbinary; module Image; module Gui

class ImageJPanel < JPanel
    attr_accessor :logUtil, :commonStrings, :canvasStrings, :isDrawn, :bufferedImage

    def jfields_org_allbinary_image_gui_ImageJPanel
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @canvasStrings = ::Org::Allbinary::Graphics::Displayable::CanvasStrings.getInstance()
        @isDrawn = false
        @bufferedImage = nil unless instance_variable_defined?(:@bufferedImage)
    end
    

    def initialize(bufferedImage)
        super()
        jfields_org_allbinary_image_gui_ImageJPanel
        self.initComponents()
        @bufferedImage = bufferedImage
        self.setSize(@bufferedImage.getWidth(nil), @bufferedImage.getHeight(nil))
    end
    

    def paint(graphics)
        if !@isDrawn
            @logUtil.putF(@commonStrings.START, self, @canvasStrings.PAINT)
            graphics.drawImage(@bufferedImage, 0, 0, @bufferedImage.getWidth(nil), @bufferedImage.getHeight(nil), nil)
            @isDrawn = true
        end
    end
    java_overload :paint, 1
    

    def initComponents()
        layout = GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGap(0, 400, 32767))
        layout.setVerticalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGap(0, 300, 32767))
    end
    java_overload :initComponents, 0
end

module ::Org; module Allbinary; module Graphics; module Displayable; autoload :CanvasStrings, "org/allbinary/graphics/displayable/CanvasStrings" unless const_defined?(:CanvasStrings, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end; end

