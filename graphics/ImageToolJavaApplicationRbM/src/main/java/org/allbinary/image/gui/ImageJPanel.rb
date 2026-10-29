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

# require "java/awt"
# require "java/awt/image/BufferedImage"

class ImageJPanel < JPanel
    attr_accessor :logUtil, :commonStrings, :canvasStrings, :isDrawn, :bufferedImage

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @canvasStrings = CanvasStrings.getInstance()
        @isDrawn = false
        @bufferedImage = nil
    end
    

    def initialize(bufferedImage)
        super()
        initialize_fields
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
    

    def initComponents()
        layout = GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGap(0, 400, 32767))
        layout.setVerticalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGap(0, 300, 32767))
    end
end

require "org/allbinary/graphics/displayable/CanvasStrings"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"

