# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# require "java/awt/image/Raster"
# require "java/io/File"
require "org/allbinary/media/image/ImageProcessorInputCompositeInterface"

class CreateIconImagesJPanel < JPanel
    include ImageProcessorInputCompositeInterface
    attr_accessor :logUtil, :commonStrings, :imageProcessorInput, :aboveJButton

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @imageProcessorInput = nil
        @aboveJButton = nil
    end
    

    def initialize(imageProcessorInput)
        super()
        initialize_fields
        initComponents()
        @imageProcessorInput = imageProcessorInput
        numberStringArray = Array.new(101, nil)
        numberStringArray[0] = (-1).to_s
        (1...100).each do |index|
            numberStringArray[index] = (index).to_s
        end
        araster = @imageProcessorInput.getBufferedImageArray()[0].getAlphaRaster()
        if araster == nil
            puts("there is no Alpha channel!!!!!!!!!")
        else
            puts("Alpha channel found !")
        end
    end
    

    def process()
        Class.new(JavaThread.is_a?(Class) ? JavaThread : Object) do
            include(JavaThread) unless JavaThread.is_a?(Class)
            

            def run()
                logUtil = LogUtil.getInstance()
                begin
                    imageUtil = ImageUtil.getInstance()
                    stringMaker = StringMaker.new()
                    imageProcessorInput = self.getImageProcessorInput()
                    files = imageProcessorInput.getFiles()
                    iconWidthList = BasicArrayListD.new()
                    iconHeightList = BasicArrayListD.new()
                    iconWidthList.add(864)
                    iconHeightList.add(864)
                    _ANDROID = "android-icon-"
                    _IOS = "ios-icon-"
                    size = iconWidthList.size()
                    width = 0
                    height = 0
                    (0...size).each do |index2|
                        width = (iconWidthList.get(index2)).to_i
                        height = (iconHeightList.get(index2)).to_i
                        generatedBufferedImageArray = imageUtil.createBufferedImage3(imageProcessorInput.getBufferedImageArray(), width, height, true)
                        imagePersistanceUtil = ImagePersistanceUtil.getInstance()
                        (0...generatedBufferedImageArray.length).each do |index|
                            filePath = files[index].getAbsolutePath()
                            endIndex = (filePath.rindex("\\") || -1)
                            path = filePath[0...endIndex + 1]
                            stringMaker.delete(0, stringMaker.length())
                            stringMaker.append(path).append(_ANDROID).appendint(width).append(CanvasStrings.getInstance()._PNG)
                            newFilePath = stringMaker.to_s
                            imagePersistanceUtil.saveWithBatik(AbFile.createAbFile(newFilePath), generatedBufferedImageArray[index])
                            stringMaker.delete(0, stringMaker.length())
                            stringMaker.append(path).append(_IOS).appendint(width).append(CanvasStrings.getInstance()._PNG)
                            newFilePath = stringMaker.to_s
                            imagePersistanceUtil.saveWithBatik(AbFile.createAbFile(newFilePath), generatedBufferedImageArray[index])
                        end
                    end
                    self.getParent().repaint()
                rescue StandardError => e
                    logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.RUN, e)
                end
            end
        end.new().start()
    end
    

    def getImageProcessorInput()
        return @imageProcessorInput
    end
    

    def setImageProcessorInput(imageProcessorInput)
        @imageProcessorInput = imageProcessorInput
    end
    

    def initComponents()
        @aboveJButton = JButton.new()
        @aboveJButton.setText("Process")
        @aboveJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                aboveJButtonActionPerformed(evt)
            end
        end.new())
        layout = GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(@aboveJButton).addGap(0, 335, 32767)))
        layout.setVerticalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addContainerGap().addComponent(@aboveJButton).addContainerGap(286, 32767)))
    end
    

    def aboveJButtonActionPerformed(evt)
        self.process()
    end
end

require "org/allbinary/graphics/displayable/CanvasStrings"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/media/image/ImagePersistanceUtil"
require "org/allbinary/media/image/ImageProcessorInput"
require "org/allbinary/media/image/ImageUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "java/lang/Thread"
require "java/lang/System"

