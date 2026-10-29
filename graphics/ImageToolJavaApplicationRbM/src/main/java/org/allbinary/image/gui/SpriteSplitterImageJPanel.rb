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

# require "java/awt"
# require "java/awt/image/BufferedImage"
# require "java/awt/image/RenderedImage"
# require "java/io/File"
# require "java/io/IOException"
# require "javax/imageio/ImageIO"
require "org/allbinary/media/image/ImageProcessedVisitor"

class SpriteSplitterImageJPanel < JPanel
    include ImageProcessedVisitor
    attr_accessor :logUtil, :commonStrings, :commonSeps, :imageStrings, :imageProcessorInput, :result, :generateJButton, :heightReductionTextField, :increaseHeightTextField, :increaseWidthTextField, :jLabel1, :jLabel2, :jLabel3, :jLabel4, :jLabel5, :jLabel6, :jLabel7, :jLabel8, :jPanel1, :jPanel2, :spriteTypeJComboBox, :totalAnimationsJComboBox, :totalFramesJComboBox, :widthReductionTextField, :writeOverOriginalJCheckBox

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @commonSeps = CommonSeps.getInstance()
        @imageStrings = ImageStrings.getInstance()
        @imageProcessorInput = nil
        @result = nil
        @generateJButton = nil
        @heightReductionTextField = nil
        @increaseHeightTextField = nil
        @increaseWidthTextField = nil
        @jLabel1 = nil
        @jLabel2 = nil
        @jLabel3 = nil
        @jLabel4 = nil
        @jLabel5 = nil
        @jLabel6 = nil
        @jLabel7 = nil
        @jLabel8 = nil
        @jPanel1 = nil
        @jPanel2 = nil
        @spriteTypeJComboBox = nil
        @totalAnimationsJComboBox = nil
        @totalFramesJComboBox = nil
        @widthReductionTextField = nil
        @writeOverOriginalJCheckBox = nil
    end
    

    def initialize(imageProcessorInput)
        super()
        initialize_fields
        initComponents()
        @imageProcessorInput = imageProcessorInput
    end
    

    def process()
        Class.new(JavaThread.is_a?(Class) ? JavaThread : Object) do
            include(JavaThread) unless JavaThread.is_a?(Class)
            

            def run()
                logUtil = LogUtil.getInstance()
                begin
                    spriteSplitterUtil = SpriteSplitterUtil.getInstance()
                    spriteType = @spriteTypeJComboBox.getSelectedItem()
                    totalFrames = (@totalFramesJComboBox.getSelectedItem()).to_s
                    totalAnimations = (@totalAnimationsJComboBox.getSelectedItem()).to_s
                    widthReduction = (@widthReductionTextField.getText()).to_s
                    heightReduction = (@heightReductionTextField.getText()).to_s
                    increaseWidth = (@increaseWidthTextField.getText()).to_s
                    increaseHeight = (@increaseHeightTextField.getText()).to_s
                    spriteSplitterUtil.process(self.getImageProcessorInput(), totalFrames, totalAnimations, widthReduction, heightReduction, increaseWidth, increaseHeight, spriteType, self)
                rescue StandardError => e
                    logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.RUN, e)
                end
            end
        end.new().start()
    end
    

    def initComponents()
        @writeOverOriginalJCheckBox = JCheckBox.new()
        @widthReductionTextField = JTextField.new()
        @jLabel5 = JLabel.new()
        @jPanel1 = Class.new(JPanel.is_a?(Class) ? JPanel : Object) do
            include(JPanel) unless JPanel.is_a?(Class)
            

            def paint(graphics)
                if @result != nil
                    graphics.drawImage(@result, 0, 0, @result.getWidth(nil), @result.getHeight(nil), nil)
                end
            end
        end.new()
        @jLabel4 = JLabel.new()
        @jLabel6 = JLabel.new()
        @heightReductionTextField = JTextField.new()
        @generateJButton = JButton.new()
        @jPanel2 = JPanel.new()
        @jLabel1 = JLabel.new()
        @totalFramesJComboBox = JComboBox.new()
        size = 70
        animationStringArray2 = Array.new(size - 1, nil)
        (1...size).each do |index|
            animationStringArray2[index - 1] = (index).to_s
        end
        @totalFramesJComboBox.setModel(DefaultComboBoxModel.new(animationStringArray2))
        @jLabel2 = JLabel.new()
        @totalAnimationsJComboBox = JComboBox.new()
        animationStringArray = Array.new(size - 1, nil)
        (1...size).each do |index|
            animationStringArray[index - 1] = (index).to_s
        end
        @totalAnimationsJComboBox.setModel(DefaultComboBoxModel.new(animationStringArray))
        @jLabel3 = JLabel.new()
        @spriteTypeJComboBox = JComboBox.new()
        @spriteTypeJComboBox.setModel(DefaultComboBoxModel.new([org.allbinary.media.image.SpriteSplitterUtil.getInstance().DIRECTIONAL_ANIMATIONS, org.allbinary.media.image.SpriteSplitterUtil.getInstance().HORIZONTAL_ANIMATIONS, org.allbinary.media.image.SpriteSplitterUtil.getInstance().HORIZONTAL_SPRITE]))
        @jLabel7 = JLabel.new()
        @increaseWidthTextField = JTextField.new()
        @jLabel8 = JLabel.new()
        @increaseHeightTextField = JTextField.new()
        @writeOverOriginalJCheckBox.setText("Write Over Original")
        @writeOverOriginalJCheckBox.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                writeOverOriginalJCheckBoxActionPerformed(evt)
            end
        end.new())
        @widthReductionTextField.setText(CommonPhoneStrings.getInstance().ZERO)
        @widthReductionTextField.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                widthReductionTextFieldActionPerformed(evt)
            end
        end.new())
        @jLabel5.setText("Less Width:")
        @jLabel4.setText("Results:")
        jPanel1Layout = GroupLayout.new(@jPanel1)
        @jPanel1.setLayout(jPanel1Layout)
        jPanel1Layout.setHorizontalGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(jPanel1Layout.createSequentialGroup().addComponent(@jLabel4).addGap(0, 0, 32767)))
        jPanel1Layout.setVerticalGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(jPanel1Layout.createSequentialGroup().addComponent(@jLabel4).addGap(0, 184, 32767)))
        @jLabel6.setText("Less Height:")
        @heightReductionTextField.setText(CommonPhoneStrings.getInstance().ZERO)
        @generateJButton.setText("Generate")
        @generateJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                generateJButtonActionPerformed(evt)
            end
        end.new())
        @jLabel1.setText("Row Total:")
        @totalFramesJComboBox.setSelectedIndex(1)
        @totalFramesJComboBox.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                totalFramesJComboBoxActionPerformed(evt)
            end
        end.new())
        @jLabel2.setText("Column Total :")
        @totalAnimationsJComboBox.setSelectedIndex(3)
        @totalAnimationsJComboBox.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                totalAnimationsJComboBoxActionPerformed(evt)
            end
        end.new())
        @jLabel3.setText("Type:")
        @spriteTypeJComboBox.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                spriteTypeJComboBoxActionPerformed(evt)
            end
        end.new())
        jPanel2Layout = GroupLayout.new(@jPanel2)
        @jPanel2.setLayout(jPanel2Layout)
        jPanel2Layout.setHorizontalGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup().addContainerGap().addComponent(@jLabel1).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@totalFramesJComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, 48, javax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@jLabel2).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@totalAnimationsJComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, 39, javax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@jLabel3).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@spriteTypeJComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, 172, javax.swing.GroupLayout.PREFERRED_SIZE).addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, 32767)))
        jPanel2Layout.setVerticalGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(jPanel2Layout.createSequentialGroup().addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, 32767).addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@jLabel1).addComponent(@totalFramesJComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE).addComponent(@jLabel2).addComponent(@totalAnimationsJComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE).addComponent(@jLabel3).addComponent(@spriteTypeJComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))))
        @jLabel7.setText("More Width:")
        @increaseWidthTextField.setText(CommonPhoneStrings.getInstance().ZERO)
        @increaseWidthTextField.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                increaseWidthTextFieldActionPerformed(evt)
            end
        end.new())
        @jLabel8.setText("More Height:")
        @increaseHeightTextField.setText(CommonPhoneStrings.getInstance().ZERO)
        layout = GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(@jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, 415, 32767).addGap(78, 78, 78)).addGroup(layout.createSequentialGroup().addContainerGap().addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addComponent(@jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, 32767).addGroup(layout.createSequentialGroup().addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(@writeOverOriginalJCheckBox).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@generateJButton)).addGroup(layout.createSequentialGroup().addComponent(@jLabel5).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@widthReductionTextField, javax.swing.GroupLayout.PREFERRED_SIZE, 41, javax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@jLabel6).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@heightReductionTextField, javax.swing.GroupLayout.PREFERRED_SIZE, 46, javax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@jLabel7).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@increaseWidthTextField, javax.swing.GroupLayout.PREFERRED_SIZE, 41, javax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@jLabel8).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@increaseHeightTextField, javax.swing.GroupLayout.PREFERRED_SIZE, 46, javax.swing.GroupLayout.PREFERRED_SIZE))).addGap(0, 0, 32767))).addContainerGap()))
        layout.setVerticalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(@jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@jLabel7).addComponent(@increaseWidthTextField, javax.swing.GroupLayout.PREFERRED_SIZE, 22, javax.swing.GroupLayout.PREFERRED_SIZE).addComponent(@jLabel8).addComponent(@increaseHeightTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)).addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@jLabel5).addComponent(@widthReductionTextField, javax.swing.GroupLayout.PREFERRED_SIZE, 22, javax.swing.GroupLayout.PREFERRED_SIZE).addComponent(@jLabel6).addComponent(@heightReductionTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@writeOverOriginalJCheckBox).addComponent(@generateJButton)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, 32767)))
    end
    

    def writeOverOriginalJCheckBoxActionPerformed(evt)
    end
    

    def generateJButtonActionPerformed(evt)
        self.process()
    end
    

    def spriteTypeJComboBoxActionPerformed(evt)
        spriteSplitterUtil = SpriteSplitterUtil.getInstance()
        @jLabel1.setText(spriteSplitterUtil.ANIMATIONS_LABELS[@spriteTypeJComboBox.getSelectedIndex()])
        @jLabel2.setText(spriteSplitterUtil.ANIMATIONS_LABELS[@spriteTypeJComboBox.getSelectedIndex() + 1])
    end
    

    def totalAnimationsJComboBoxActionPerformed(evt)
    end
    

    def totalFramesJComboBoxActionPerformed(evt)
    end
    

    def widthReductionTextFieldActionPerformed(evt)
    end
    

    def increaseWidthTextFieldActionPerformed(evt)
    end
    

    def getImageProcessorInput()
        return @imageProcessorInput
    end
    

    def setImageProcessorInput(imageProcessorInput)
        @imageProcessorInput = imageProcessorInput
    end
    

    # throws IOException
    def visit(generatedBufferedImage, name, index)
        @logUtil.putF(@commonStrings.VISIT, self, @commonStrings.VISIT)
        @result = generatedBufferedImage
        self.getParent().repaint()
        file = @imageProcessorInput.getFiles()[index]
        if !@writeOverOriginalJCheckBox.isSelected()
            filePath = file.getAbsolutePath()
            extensionIndex = (filePath.index(@imageStrings.PNG_EXTENSION) || -1)
            filePath = StringMaker.new().append(filePath[0...extensionIndex]).append(@commonSeps.UNDERSCORE).append(name).append(@imageStrings.PNG_EXTENSION).to_s
            file = File.new(filePath)
        end
        isWritten = ImageIO.write(@result, @imageStrings.PNG, file)
        @logUtil.putF(StringMaker.new().append("File: ").append(StringUtil.getInstance().toString(file)).append(" Wrote: ").appendboolean(isWritten).to_s, self, @commonStrings.RUN)
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/media/image/ImageProcessorInput"
require "org/allbinary/media/image/ImageStrings"
require "org/allbinary/media/image/SpriteSplitterUtil"
require "org/allbinary/string/CommonPhoneStrings"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "java/lang/Thread"

