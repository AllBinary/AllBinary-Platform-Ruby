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
# require "java/awt/image/RenderedImage"
# require "java/io/File"
# require "javax/imageio/ImageIO"
require "org/allbinary/media/image/ImageProcessorInputCompositeInterface"

class RotationSpriteImageJPanel < JPanel
    include ImageProcessorInputCompositeInterface
    attr_accessor :logUtil, :commonStrings, :imageStrings, :imageProcessorInput, :result, :generateJButton, :jLabel1, :jLabel2, :jLabel3, :jPanel1, :jPanel2, :jPanel3, :totalAngleJComboBox, :totalFramesJComboBox, :writeOverOriginalJCheckBox

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @imageStrings = ImageStrings.getInstance()
        @imageProcessorInput = nil
        @result = nil
        @generateJButton = nil
        @jLabel1 = nil
        @jLabel2 = nil
        @jLabel3 = nil
        @jPanel1 = nil
        @jPanel2 = nil
        @jPanel3 = nil
        @totalAngleJComboBox = nil
        @totalFramesJComboBox = nil
        @writeOverOriginalJCheckBox = nil
    end
    

    def initialize(imageProcessorInput)
        super()
        initialize_fields
        self.initComponents()
        @imageProcessorInput = imageProcessorInput
    end
    

    def process()
        Class.new(JavaThread.is_a?(Class) ? JavaThread : Object) do
            include(JavaThread) unless JavaThread.is_a?(Class)
            

            def run()
                logUtil = LogUtil.getInstance()
                begin
                    generatedBufferedImageArray = nil
                    imageProcessorInput = self.getImageProcessorInput()
                    bufferedImageArray = imageProcessorInput.getBufferedImageArray()
                    (0...bufferedImageArray.length).each do |index|
                        totalFrames = (@totalFramesJComboBox.getSelectedItem()).to_s
                        totalAngle = (@totalAngleJComboBox.getSelectedItem()).to_s
                        generatedBufferedImageArray = ImageJ2SERotationUtil.getInstance().getRotatedImages(bufferedImageArray[index], totalFrames, totalAngle)
                        @result = ImageJ2SERotationUtil.getInstance().createSpriteImage(generatedBufferedImageArray)
                        self.getParent().repaint()
                        file = imageProcessorInput.getFiles()[index]
                        if !@writeOverOriginalJCheckBox.isSelected()
                            filePath = file.getAbsolutePath()
                            extensionIndex = (filePath.index(@imageStrings.PNG_EXTENSION) || -1)
                            filePath = StringMaker.new().append(filePath[0...extensionIndex]).append(CommonSeps.getInstance().UNDERSCORE).append("sprite").append(@imageStrings.PNG_EXTENSION).to_s
                            logUtil.putF("New File Path: " + filePath, self, @commonStrings.RUN)
                            file = File.new(filePath)
                        end
                        isWritten = ImageIO.write(@result, @imageStrings.PNG, file)
                        logUtil.putF("File: " + (file).to_s + " Wrote: " + (isWritten).to_s, self, @commonStrings.RUN)
                    end
                rescue StandardError => e
                    logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.RUN, e)
                end
            end
        end.new().start()
    end
    

    def initComponents()
        @jPanel1 = Class.new(JPanel.is_a?(Class) ? JPanel : Object) do
            include(JPanel) unless JPanel.is_a?(Class)
            

            def paint(graphics)
                if @result != nil
                    graphics.drawImage(@result, 0, 0, @result.getWidth(nil), @result.getHeight(nil), nil)
                end
            end
        end.new()
        @jPanel2 = JPanel.new()
        @totalFramesJComboBox = JComboBox.new()
        @jLabel1 = JLabel.new()
        @generateJButton = JButton.new()
        @totalAngleJComboBox = JComboBox.new()
        @jLabel3 = JLabel.new()
        @writeOverOriginalJCheckBox = JCheckBox.new()
        @jPanel3 = JPanel.new()
        @jLabel2 = JLabel.new()
        jPanel1Layout = GroupLayout.new(@jPanel1)
        @jPanel1.setLayout(jPanel1Layout)
        jPanel1Layout.setHorizontalGroup(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING).add(0, 436, 32767))
        jPanel1Layout.setVerticalGroup(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING).add(0, 227, 32767))
        @totalFramesJComboBox.setModel(DefaultComboBoxModel.new([CommonPhoneStrings.getInstance().FOUR, CommonPhoneStrings.getInstance().NINE, "18", "20", "36"]))
        @jLabel1.setText("Total Frames:")
        @generateJButton.setText("Generate")
        @generateJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                generateJButtonActionPerformed(evt)
            end
        end.new())
        @totalAngleJComboBox.setModel(DefaultComboBoxModel.new(["360", "90"]))
        @totalAngleJComboBox.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                totalAngleJComboBoxActionPerformed(evt)
            end
        end.new())
        @jLabel3.setText("Total Angle:")
        @writeOverOriginalJCheckBox.setText("Write Over Original")
        jPanel2Layout = GroupLayout.new(@jPanel2)
        @jPanel2.setLayout(jPanel2Layout)
        jPanel2Layout.setHorizontalGroup(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING).add(jPanel2Layout.createSequentialGroup().add(8, 8, 8).add(@jLabel1).addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED).add(@totalFramesJComboBox, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE).addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED).add(@jLabel3).addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED).add(@totalAngleJComboBox, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE).addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED).add(@writeOverOriginalJCheckBox).addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED).add(@generateJButton).addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 32767)))
        jPanel2Layout.setVerticalGroup(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING).add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE).add(@jLabel1).add(@totalFramesJComboBox, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE).add(@generateJButton).add(@totalAngleJComboBox, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE).add(@jLabel3).add(@writeOverOriginalJCheckBox)))
        @jLabel2.setText("Results:")
        jPanel3Layout = GroupLayout.new(@jPanel3)
        @jPanel3.setLayout(jPanel3Layout)
        jPanel3Layout.setHorizontalGroup(jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING).add(jPanel3Layout.createSequentialGroup().add(@jLabel2).addContainerGap(377, 32767)))
        jPanel3Layout.setVerticalGroup(jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING).add(@jLabel2))
        layout = GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING).add(org.jdesktop.layout.GroupLayout.TRAILING, @jPanel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 32767).add(layout.createSequentialGroup().addContainerGap().add(@jPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 32767).addContainerGap()).add(@jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 32767))
        layout.setVerticalGroup(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING).add(layout.createSequentialGroup().add(@jPanel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE).addPreferredGap(org.jdesktop.layout.LayoutStyle.UNRELATED).add(@jPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE).addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED).add(@jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 32767)))
    end
    

    def generateJButtonActionPerformed(evt)
        self.process()
    end
    

    def totalAngleJComboBoxActionPerformed(evt)
    end
    

    def getImageProcessorInput()
        return @imageProcessorInput
    end
    

    def setImageProcessorInput(imageProcessorInput)
        @imageProcessorInput = imageProcessorInput
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/media/image/ImageJ2SERotationUtil"
require "org/allbinary/media/image/ImageProcessorInput"
require "org/allbinary/media/image/ImageStrings"
require "org/allbinary/string/CommonPhoneStrings"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "java/lang/Thread"

