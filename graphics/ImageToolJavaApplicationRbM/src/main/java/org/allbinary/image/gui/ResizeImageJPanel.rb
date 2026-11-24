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
# require "java/awt/Dimension"
# require "java/awt/event/ActionEvent"
# require "java/awt/event/ActionListener"
# require "javax/swing/DefaultComboBoxModel"
# require "javax/swing/GroupLayout"
# require "javax/swing/JButton"
# require "javax/swing/JComboBox"
# require "javax/swing/JLabel"
# require "javax/swing/JPanel"
# require "javax/swing/JTextField"
# require "javax/swing/LayoutStyle"

module ::Org; module Allbinary; module Image; module Gui

class ResizeImageJPanel < JPanel
    include ::Org::Allbinary::Media::Image::ImageProcessorInputCompositeInterface
    attr_accessor :logUtil, :commonStrings, :imageProcessorInput, :aboveJButton, :adjustFor16AboveJButton, :adjustFor16BelowJButton, :floatPercentJTextField, :jComboBox1, :jLabel1, :jLabel2, :jLabel3, :jTextField1, :jTextField2, :updateJButton

    def jfields_org_allbinary_image_gui_ResizeImageJPanel
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @imageProcessorInput = nil unless instance_variable_defined?(:@imageProcessorInput)
        @aboveJButton = nil unless instance_variable_defined?(:@aboveJButton)
        @adjustFor16AboveJButton = nil unless instance_variable_defined?(:@adjustFor16AboveJButton)
        @adjustFor16BelowJButton = nil unless instance_variable_defined?(:@adjustFor16BelowJButton)
        @floatPercentJTextField = nil unless instance_variable_defined?(:@floatPercentJTextField)
        @jComboBox1 = nil unless instance_variable_defined?(:@jComboBox1)
        @jLabel1 = nil unless instance_variable_defined?(:@jLabel1)
        @jLabel2 = nil unless instance_variable_defined?(:@jLabel2)
        @jLabel3 = nil unless instance_variable_defined?(:@jLabel3)
        @jTextField1 = nil unless instance_variable_defined?(:@jTextField1)
        @jTextField2 = nil unless instance_variable_defined?(:@jTextField2)
        @updateJButton = nil unless instance_variable_defined?(:@updateJButton)
    end
    

    def initialize(imageProcessorInput)
        super()
        jfields_org_allbinary_image_gui_ResizeImageJPanel
        initComponents()
        @imageProcessorInput = imageProcessorInput
        numberStringArray = Array.new(101, nil)
        numberStringArray[0] = (-1).to_s
        (1...100).each do |index|
            numberStringArray[index] = (index).to_s
        end
        @jComboBox1.setModel(DefaultComboBoxModel.new(numberStringArray))
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
                    percent = (@jComboBox1.getSelectedItem()).to_s
                    percentAsFloat = Float(@floatPercentJTextField.getText())
                    imageProcessorInput = self.getImageProcessorInput()
                    files = imageProcessorInput.getFiles()
                    generatedBufferedImageArray = nil
                    if percentAsFloat.to_i != -1
                        generatedBufferedImageArray = imageUtil.createBufferedImage2(imageProcessorInput.getBufferedImageArray(), percentAsFloat, true)
                    elsif percent.to_i != -1
                        generatedBufferedImageArray = imageUtil.createBufferedImageForResize(imageProcessorInput.getBufferedImageArray(), percent, true)
                    else
                        width = (@jTextField1.getText()).to_s
                        height = (@jTextField2.getText()).to_s
                        generatedBufferedImageArray = imageUtil.createBufferedImage3(imageProcessorInput.getBufferedImageArray(), width, height, true)
                    end
                    araster = generatedBufferedImageArray[0].getAlphaRaster()
                    if araster == nil
                        puts("No Alpha Channel In Result")
                    else
                        puts("Found Alpha Channel In Result")
                    end
                    imagePersistanceUtil = ::Org::Allbinary::Media::Image::ImagePersistanceUtil.getInstance()
                    (0...generatedBufferedImageArray.length).each do |index|
                        imagePersistanceUtil.saveWithBatik(::Org::Allbinary::Logic::Io::FilePackage::FileWrapperUtil.wrapFile(files[index]), generatedBufferedImageArray[index])
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
    

    def update()
        Class.new(::Java::Lang::JavaThread.is_a?(Class) ? ::Java::Lang::JavaThread : Object) do
            include(::Java::Lang::JavaThread) unless ::Java::Lang::JavaThread.is_a?(Class)
            

            def run()
                logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
                begin
                    imageProcessorInput = self.getImageProcessorInput()
                    size = imageProcessorInput.getBufferedImageArray().length
                    bufferedImageArray = imageProcessorInput.getBufferedImageArray()
                    bufferedImage = nil
                    (0...size).each do |index|
                        bufferedImage = bufferedImageArray[0]
                        @jTextField1.setText((bufferedImage.getWidth()).to_s)
                        @jTextField2.setText((bufferedImage.getHeight()).to_s)
                    end
                    self.getParent().repaint()
                rescue StandardError => e
                    logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.RUN, e)
                end
            end
            java_overload :run, 0
        end.new().start()
    end
    java_overload :update, 0
    

    def updateFor16Above()
        Class.new(::Java::Lang::JavaThread.is_a?(Class) ? ::Java::Lang::JavaThread : Object) do
            include(::Java::Lang::JavaThread) unless ::Java::Lang::JavaThread.is_a?(Class)
            

            def run()
                logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
                begin
                    imageProcessorInput = self.getImageProcessorInput()
                    size = imageProcessorInput.getBufferedImageArray().length
                    bufferedImageArray = imageProcessorInput.getBufferedImageArray()
                    bufferedImage = nil
                    (0...size).each do |index|
                        bufferedImage = bufferedImageArray[0]
                        @jTextField1.setText((bufferedImage.getWidth() / 16 * 16).to_s)
                        @jTextField2.setText((bufferedImage.getHeight() / 16 * 16).to_s)
                    end
                    self.getParent().repaint()
                rescue StandardError => e
                    logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.RUN, e)
                end
            end
            java_overload :run, 0
        end.new().start()
    end
    java_overload :updateFor16Above, 0
    

    def updateFor16Below()
        Class.new(::Java::Lang::JavaThread.is_a?(Class) ? ::Java::Lang::JavaThread : Object) do
            include(::Java::Lang::JavaThread) unless ::Java::Lang::JavaThread.is_a?(Class)
            

            def run()
                logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
                begin
                    imageProcessorInput = self.getImageProcessorInput()
                    size = imageProcessorInput.getBufferedImageArray().length
                    bufferedImageArray = imageProcessorInput.getBufferedImageArray()
                    bufferedImage = nil
                    (0...size).each do |index|
                        bufferedImage = bufferedImageArray[0]
                        @jTextField1.setText((((bufferedImage.getWidth() / 16) + 1) * 16).to_s)
                        @jTextField2.setText((((bufferedImage.getHeight() / 16) + 1) * 16).to_s)
                    end
                    self.getParent().repaint()
                rescue StandardError => e
                    logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.RUN, e)
                end
            end
            java_overload :run, 0
        end.new().start()
    end
    java_overload :updateFor16Below, 0
    

    def getImageProcessorInput()
        return @imageProcessorInput
    end
    java_overload :getImageProcessorInput, 0
    

    def setImageProcessorInput(imageProcessorInput)
        @imageProcessorInput = imageProcessorInput
    end
    java_overload :setImageProcessorInput, 1
    

    def initComponents()
        @jLabel1 = JLabel.new()
        @jComboBox1 = JComboBox.new()
        @aboveJButton = JButton.new()
        @jTextField1 = JTextField.new()
        @jLabel2 = JLabel.new()
        @jLabel3 = JLabel.new()
        @jTextField2 = JTextField.new()
        @updateJButton = JButton.new()
        @floatPercentJTextField = JTextField.new()
        @adjustFor16AboveJButton = JButton.new()
        @adjustFor16BelowJButton = JButton.new()
        @jLabel1.setText("Percent:")
        @jComboBox1.setModel(DefaultComboBoxModel.new(["Item 1", "Item 2", "Item 3", "Item 4"]))
        @aboveJButton.setText("Process")
        @aboveJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                aboveJButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @jLabel2.setText("Width:")
        @jLabel3.setText("Height:")
        @updateJButton.setText("Update")
        @updateJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                updateJButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @floatPercentJTextField.setText("-1.000000")
        @floatPercentJTextField.setMinimumSize(Dimension.new(120, 22))
        @adjustFor16AboveJButton.setText("Adjust for 16 Above")
        @adjustFor16AboveJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                adjustFor16AboveJButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @adjustFor16BelowJButton.setText("Adjust for 16 Below")
        @adjustFor16BelowJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                adjustFor16BelowJButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        layout = GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createSequentialGroup().addContainerGap().addGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addComponent(@jLabel1).addComponent(@jLabel2).addComponent(@jLabel3)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING, false).addComponent(@jComboBox1, 0, GroupLayout::DEFAULT_SIZE, 32767).addComponent(@jTextField1).addComponent(@jTextField2)).addPreferredGap(LayoutStyle::ComponentPlacement.UNRELATED).addGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addComponent(@floatPercentJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE).addComponent(@adjustFor16AboveJButton).addComponent(@adjustFor16BelowJButton)).addContainerGap(GroupLayout::DEFAULT_SIZE, 32767)).addGroup(layout.createSequentialGroup().addComponent(@updateJButton).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@aboveJButton).addGap(0, 250, 32767)))
        layout.setVerticalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createSequentialGroup().addContainerGap().addGroup(layout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@jLabel1).addComponent(@jComboBox1, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE).addComponent(@floatPercentJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@jTextField1, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE).addComponent(@jLabel2).addComponent(@adjustFor16AboveJButton)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@jLabel3).addComponent(@jTextField2, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE).addComponent(@adjustFor16BelowJButton)).addGap(18, 18, 18).addGroup(layout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@aboveJButton).addComponent(@updateJButton)).addContainerGap(175, 32767)))
    end
    java_overload :initComponents, 0
    

    def aboveJButtonActionPerformed(evt)
        self.process()
    end
    java_overload :aboveJButtonActionPerformed, 1
    

    def updateJButtonActionPerformed(evt)
        self.update()
    end
    java_overload :updateJButtonActionPerformed, 1
    

    def adjustFor16AboveJButtonActionPerformed(evt)
        self.updateFor16Above()
    end
    java_overload :adjustFor16AboveJButtonActionPerformed, 1
    

    def adjustFor16BelowJButtonActionPerformed(evt)
        self.updateFor16Below()
    end
    java_overload :adjustFor16BelowJButtonActionPerformed, 1
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :FileWrapperUtil, "org/allbinary/logic/io/file/FileWrapperUtil" unless const_defined?(:FileWrapperUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImagePersistanceUtil, "org/allbinary/media/image/ImagePersistanceUtil" unless const_defined?(:ImagePersistanceUtil, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageProcessorInput, "org/allbinary/media/image/ImageProcessorInput" unless const_defined?(:ImageProcessorInput, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageUtil, "org/allbinary/media/image/ImageUtil" unless const_defined?(:ImageUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
require "java/lang/Thread"
require "java/lang/System"

end; end; end; end

