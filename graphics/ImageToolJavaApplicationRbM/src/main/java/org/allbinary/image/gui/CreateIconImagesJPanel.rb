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

require "java/lang/JavaOverload"
# require "java/awt/image/BufferedImage"
# require "java/awt/image/Raster"
# require "java/io/File"
require "org/allbinary/media/image/ImageProcessorInputCompositeInterface"
# require "java/awt/event/ActionEvent"
# require "java/awt/event/ActionListener"
# require "javax/swing/GroupLayout"
# require "javax/swing/JButton"
# require "javax/swing/JPanel"

module ::Org; module Allbinary; module Image; module Gui

class CreateIconImagesJPanel < JPanel
    include ::Org::Allbinary::Media::Image::ImageProcessorInputCompositeInterface
    attr_accessor :logUtil, :commonStrings, :imageProcessorInput, :aboveJButton

    def jfields_org_allbinary_image_gui_CreateIconImagesJPanel
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @imageProcessorInput = nil unless instance_variable_defined?(:@imageProcessorInput)
        @aboveJButton = nil unless instance_variable_defined?(:@aboveJButton)
    end
    

    def initialize(imageProcessorInput)
        super()
        jfields_org_allbinary_image_gui_CreateIconImagesJPanel
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
        Class.new(::Java::Lang::JavaThread.is_a?(Class) ? ::Java::Lang::JavaThread : Object) do
            include(::Java::Lang::JavaThread) unless ::Java::Lang::JavaThread.is_a?(Class)
            

            def run()
                logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
                begin
                    imageUtil = ::Org::Allbinary::Media::Image::ImageUtil.getInstance()
                    stringMaker = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                    imageProcessorInput = self.getImageProcessorInput()
                    files = imageProcessorInput.getFiles()
                    iconWidthList = ::Org::Allbinary::Util::BasicArrayListD.new()
                    iconHeightList = ::Org::Allbinary::Util::BasicArrayListD.new()
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
                        imagePersistanceUtil = ::Org::Allbinary::Media::Image::ImagePersistanceUtil.getInstance()
                        (0...generatedBufferedImageArray.length).each do |index|
                            filePath = files[index].getAbsolutePath()
                            endIndex = (filePath.rindex("\\") || -1)
                            path = filePath[0...endIndex + 1]
                            stringMaker.delete(0, stringMaker.length())
                            stringMaker.append(path).append(_ANDROID).appendint(width).append(::Org::Allbinary::Graphics::Displayable::CanvasStrings.getInstance()._PNG)
                            newFilePath = stringMaker.to_s
                            imagePersistanceUtil.saveWithBatik(::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFile(newFilePath), generatedBufferedImageArray[index])
                            stringMaker.delete(0, stringMaker.length())
                            stringMaker.append(path).append(_IOS).appendint(width).append(::Org::Allbinary::Graphics::Displayable::CanvasStrings.getInstance()._PNG)
                            newFilePath = stringMaker.to_s
                            imagePersistanceUtil.saveWithBatik(::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFile(newFilePath), generatedBufferedImageArray[index])
                        end
                    end
                    self.getParent().repaint()
                rescue StandardError => e
                    logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.RUN, e)
                end
            end
            java_overload :run, 0
        end.new().start()
    end
    java_overload :process, 0
    

    def getImageProcessorInput()
        return @imageProcessorInput
    end
    java_overload :getImageProcessorInput, 0
    

    def setImageProcessorInput(imageProcessorInput)
        @imageProcessorInput = imageProcessorInput
    end
    java_overload :setImageProcessorInput, 1
    

    def initComponents()
        @aboveJButton = JButton.new()
        @aboveJButton.setText("Process")
        @aboveJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                aboveJButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        layout = GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(@aboveJButton).addGap(0, 335, 32767)))
        layout.setVerticalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createSequentialGroup().addContainerGap().addComponent(@aboveJButton).addContainerGap(286, 32767)))
    end
    java_overload :initComponents, 0
    

    def aboveJButtonActionPerformed(evt)
        self.process()
    end
    java_overload :aboveJButtonActionPerformed, 1
end

module ::Org; module Allbinary; module Graphics; module Displayable; autoload :CanvasStrings, "org/allbinary/graphics/displayable/CanvasStrings" unless const_defined?(:CanvasStrings, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImagePersistanceUtil, "org/allbinary/media/image/ImagePersistanceUtil" unless const_defined?(:ImagePersistanceUtil, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageProcessorInput, "org/allbinary/media/image/ImageProcessorInput" unless const_defined?(:ImageProcessorInput, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageUtil, "org/allbinary/media/image/ImageUtil" unless const_defined?(:ImageUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
require "java/lang/Thread"
require "java/lang/System"

end; end; end; end

