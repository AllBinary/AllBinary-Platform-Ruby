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

class ResizeImageJPanel < JPanel
    include ImageProcessorInputCompositeInterface
    attr_accessor :logUtil, :commonStrings, :imageProcessorInput, :aboveJButton, :adjustFor16AboveJButton, :adjustFor16BelowJButton, :floatPercentJTextField, :jComboBox1, :jLabel1, :jLabel2, :jLabel3, :jTextField1, :jTextField2, :updateJButton

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @imageProcessorInput = nil
        @aboveJButton = nil
        @adjustFor16AboveJButton = nil
        @adjustFor16BelowJButton = nil
        @floatPercentJTextField = nil
        @jComboBox1 = nil
        @jLabel1 = nil
        @jLabel2 = nil
        @jLabel3 = nil
        @jTextField1 = nil
        @jTextField2 = nil
        @updateJButton = nil
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
        @jComboBox1.setModel(DefaultComboBoxModel.new(numberStringArray))
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
                    imagePersistanceUtil = ImagePersistanceUtil.getInstance()
                    (0...generatedBufferedImageArray.length).each do |index|
                        imagePersistanceUtil.saveWithBatik(FileWrapperUtil.wrapFile(files[index]), generatedBufferedImageArray[index])
                    end
                    self.getParent().repaint()
                rescue StandardError => e
                    logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.RUN, e)
                end
            end
        end.new().start()
    end
    

    def update()
        Class.new(JavaThread.is_a?(Class) ? JavaThread : Object) do
            include(JavaThread) unless JavaThread.is_a?(Class)
            

            def run()
                logUtil = LogUtil.getInstance()
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
        end.new().start()
    end
    

    def updateFor16Above()
        Class.new(JavaThread.is_a?(Class) ? JavaThread : Object) do
            include(JavaThread) unless JavaThread.is_a?(Class)
            

            def run()
                logUtil = LogUtil.getInstance()
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
        end.new().start()
    end
    

    def updateFor16Below()
        Class.new(JavaThread.is_a?(Class) ? JavaThread : Object) do
            include(JavaThread) unless JavaThread.is_a?(Class)
            

            def run()
                logUtil = LogUtil.getInstance()
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
        end.new().start()
    end
    

    def getImageProcessorInput()
        return @imageProcessorInput
    end
    

    def setImageProcessorInput(imageProcessorInput)
        @imageProcessorInput = imageProcessorInput
    end
    

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
        end.new())
        @jLabel2.setText("Width:")
        @jLabel3.setText("Height:")
        @updateJButton.setText("Update")
        @updateJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                updateJButtonActionPerformed(evt)
            end
        end.new())
        @floatPercentJTextField.setText("-1.000000")
        @floatPercentJTextField.setMinimumSize(Dimension.new(120, 22))
        @adjustFor16AboveJButton.setText("Adjust for 16 Above")
        @adjustFor16AboveJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                adjustFor16AboveJButtonActionPerformed(evt)
            end
        end.new())
        @adjustFor16BelowJButton.setText("Adjust for 16 Below")
        @adjustFor16BelowJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                adjustFor16BelowJButtonActionPerformed(evt)
            end
        end.new())
        layout = GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addContainerGap().addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addComponent(@jLabel1).addComponent(@jLabel2).addComponent(@jLabel3)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false).addComponent(@jComboBox1, 0, javax.swing.GroupLayout.DEFAULT_SIZE, 32767).addComponent(@jTextField1).addComponent(@jTextField2)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED).addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addComponent(@floatPercentJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE).addComponent(@adjustFor16AboveJButton).addComponent(@adjustFor16BelowJButton)).addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, 32767)).addGroup(layout.createSequentialGroup().addComponent(@updateJButton).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@aboveJButton).addGap(0, 250, 32767)))
        layout.setVerticalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addContainerGap().addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@jLabel1).addComponent(@jComboBox1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE).addComponent(@floatPercentJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE).addComponent(@jLabel2).addComponent(@adjustFor16AboveJButton)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@jLabel3).addComponent(@jTextField2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE).addComponent(@adjustFor16BelowJButton)).addGap(18, 18, 18).addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@aboveJButton).addComponent(@updateJButton)).addContainerGap(175, 32767)))
    end
    

    def aboveJButtonActionPerformed(evt)
        self.process()
    end
    

    def updateJButtonActionPerformed(evt)
        self.update()
    end
    

    def adjustFor16AboveJButtonActionPerformed(evt)
        self.updateFor16Above()
    end
    

    def adjustFor16BelowJButtonActionPerformed(evt)
        self.updateFor16Below()
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/file/FileWrapperUtil"
require "org/allbinary/media/image/ImagePersistanceUtil"
require "org/allbinary/media/image/ImageProcessorInput"
require "org/allbinary/media/image/ImageUtil"
require "org/allbinary/string/CommonStrings"
require "java/lang/Thread"
require "java/lang/System"

