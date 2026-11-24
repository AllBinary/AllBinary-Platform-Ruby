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
# require "java/awt/Graphics"
# require "java/awt/image/BufferedImage"
# require "java/awt/image/RenderedImage"
# require "java/io/File"
# require "java/io/IOException"
# require "javax/imageio/ImageIO"
require "org/allbinary/media/image/ImageProcessedVisitor"
# require "java/awt/event/ActionEvent"
# require "java/awt/event/ActionListener"
# require "javax/swing/DefaultComboBoxModel"
# require "javax/swing/GroupLayout"
# require "javax/swing/JButton"
# require "javax/swing/JCheckBox"
# require "javax/swing/JComboBox"
# require "javax/swing/JLabel"
# require "javax/swing/JPanel"
# require "javax/swing/JTextField"
# require "javax/swing/LayoutStyle"

module ::Org; module Allbinary; module Image; module Gui

class SpriteSplitterImageJPanel < JPanel
    include ::Org::Allbinary::Media::Image::ImageProcessedVisitor
    attr_accessor :logUtil, :commonStrings, :commonSeps, :imageStrings, :imageProcessorInput, :result, :generateJButton, :heightReductionTextField, :increaseHeightTextField, :increaseWidthTextField, :jLabel1, :jLabel2, :jLabel3, :jLabel4, :jLabel5, :jLabel6, :jLabel7, :jLabel8, :jPanel1, :jPanel2, :spriteTypeJComboBox, :totalAnimationsJComboBox, :totalFramesJComboBox, :widthReductionTextField, :writeOverOriginalJCheckBox

    def jfields_org_allbinary_image_gui_SpriteSplitterImageJPanel
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        @imageStrings = ::Org::Allbinary::Media::Image::ImageStrings.getInstance()
        @imageProcessorInput = nil unless instance_variable_defined?(:@imageProcessorInput)
        @result = nil unless instance_variable_defined?(:@result)
        @generateJButton = nil unless instance_variable_defined?(:@generateJButton)
        @heightReductionTextField = nil unless instance_variable_defined?(:@heightReductionTextField)
        @increaseHeightTextField = nil unless instance_variable_defined?(:@increaseHeightTextField)
        @increaseWidthTextField = nil unless instance_variable_defined?(:@increaseWidthTextField)
        @jLabel1 = nil unless instance_variable_defined?(:@jLabel1)
        @jLabel2 = nil unless instance_variable_defined?(:@jLabel2)
        @jLabel3 = nil unless instance_variable_defined?(:@jLabel3)
        @jLabel4 = nil unless instance_variable_defined?(:@jLabel4)
        @jLabel5 = nil unless instance_variable_defined?(:@jLabel5)
        @jLabel6 = nil unless instance_variable_defined?(:@jLabel6)
        @jLabel7 = nil unless instance_variable_defined?(:@jLabel7)
        @jLabel8 = nil unless instance_variable_defined?(:@jLabel8)
        @jPanel1 = nil unless instance_variable_defined?(:@jPanel1)
        @jPanel2 = nil unless instance_variable_defined?(:@jPanel2)
        @spriteTypeJComboBox = nil unless instance_variable_defined?(:@spriteTypeJComboBox)
        @totalAnimationsJComboBox = nil unless instance_variable_defined?(:@totalAnimationsJComboBox)
        @totalFramesJComboBox = nil unless instance_variable_defined?(:@totalFramesJComboBox)
        @widthReductionTextField = nil unless instance_variable_defined?(:@widthReductionTextField)
        @writeOverOriginalJCheckBox = nil unless instance_variable_defined?(:@writeOverOriginalJCheckBox)
    end
    

    def initialize(imageProcessorInput)
        super()
        jfields_org_allbinary_image_gui_SpriteSplitterImageJPanel
        initComponents()
        @imageProcessorInput = imageProcessorInput
    end
    

    def process()
        Class.new(::Java::Lang::JavaThread.is_a?(Class) ? ::Java::Lang::JavaThread : Object) do
            include(::Java::Lang::JavaThread) unless ::Java::Lang::JavaThread.is_a?(Class)
            

            def run()
                logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
                begin
                    spriteSplitterUtil = ::Org::Allbinary::Media::Image::SpriteSplitterUtil.getInstance()
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
            java_overload :run, 0
        end.new().start()
    end
    java_overload :process, 0
    

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
            java_overload :paint, 1
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
        @spriteTypeJComboBox.setModel(DefaultComboBoxModel.new([::Org::Allbinary::Media::Image::SpriteSplitterUtil.getInstance().DIRECTIONAL_ANIMATIONS, ::Org::Allbinary::Media::Image::SpriteSplitterUtil.getInstance().HORIZONTAL_ANIMATIONS, ::Org::Allbinary::Media::Image::SpriteSplitterUtil.getInstance().HORIZONTAL_SPRITE]))
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
            java_overload :actionPerformed, 1
        end.new())
        @widthReductionTextField.setText(::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().ZERO)
        @widthReductionTextField.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                widthReductionTextFieldActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @jLabel5.setText("Less Width:")
        @jLabel4.setText("Results:")
        jPanel1Layout = GroupLayout.new(@jPanel1)
        @jPanel1.setLayout(jPanel1Layout)
        jPanel1Layout.setHorizontalGroup(jPanel1Layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(jPanel1Layout.createSequentialGroup().addComponent(@jLabel4).addGap(0, 0, 32767)))
        jPanel1Layout.setVerticalGroup(jPanel1Layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(jPanel1Layout.createSequentialGroup().addComponent(@jLabel4).addGap(0, 184, 32767)))
        @jLabel6.setText("Less Height:")
        @heightReductionTextField.setText(::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().ZERO)
        @generateJButton.setText("Generate")
        @generateJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                generateJButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @jLabel1.setText("Row Total:")
        @totalFramesJComboBox.setSelectedIndex(1)
        @totalFramesJComboBox.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                totalFramesJComboBoxActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @jLabel2.setText("Column Total :")
        @totalAnimationsJComboBox.setSelectedIndex(3)
        @totalAnimationsJComboBox.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                totalAnimationsJComboBoxActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @jLabel3.setText("Type:")
        @spriteTypeJComboBox.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                spriteTypeJComboBoxActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        jPanel2Layout = GroupLayout.new(@jPanel2)
        @jPanel2.setLayout(jPanel2Layout)
        jPanel2Layout.setHorizontalGroup(jPanel2Layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(GroupLayout::Alignment.TRAILING, jPanel2Layout.createSequentialGroup().addContainerGap().addComponent(@jLabel1).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@totalFramesJComboBox, GroupLayout::PREFERRED_SIZE, 48, GroupLayout::PREFERRED_SIZE).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@jLabel2).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@totalAnimationsJComboBox, GroupLayout::PREFERRED_SIZE, 39, GroupLayout::PREFERRED_SIZE).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@jLabel3).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@spriteTypeJComboBox, GroupLayout::PREFERRED_SIZE, 172, GroupLayout::PREFERRED_SIZE).addContainerGap(GroupLayout::DEFAULT_SIZE, 32767)))
        jPanel2Layout.setVerticalGroup(jPanel2Layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(jPanel2Layout.createSequentialGroup().addContainerGap(GroupLayout::DEFAULT_SIZE, 32767).addGroup(jPanel2Layout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@jLabel1).addComponent(@totalFramesJComboBox, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE).addComponent(@jLabel2).addComponent(@totalAnimationsJComboBox, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE).addComponent(@jLabel3).addComponent(@spriteTypeJComboBox, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE))))
        @jLabel7.setText("More Width:")
        @increaseWidthTextField.setText(::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().ZERO)
        @increaseWidthTextField.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                increaseWidthTextFieldActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @jLabel8.setText("More Height:")
        @increaseHeightTextField.setText(::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().ZERO)
        layout = GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(@jPanel2, GroupLayout::PREFERRED_SIZE, 415, 32767).addGap(78, 78, 78)).addGroup(layout.createSequentialGroup().addContainerGap().addGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addComponent(@jPanel1, GroupLayout::DEFAULT_SIZE, GroupLayout::DEFAULT_SIZE, 32767).addGroup(layout.createSequentialGroup().addGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(@writeOverOriginalJCheckBox).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@generateJButton)).addGroup(layout.createSequentialGroup().addComponent(@jLabel5).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@widthReductionTextField, GroupLayout::PREFERRED_SIZE, 41, GroupLayout::PREFERRED_SIZE).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@jLabel6).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@heightReductionTextField, GroupLayout::PREFERRED_SIZE, 46, GroupLayout::PREFERRED_SIZE).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@jLabel7).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@increaseWidthTextField, GroupLayout::PREFERRED_SIZE, 41, GroupLayout::PREFERRED_SIZE).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@jLabel8).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@increaseHeightTextField, GroupLayout::PREFERRED_SIZE, 46, GroupLayout::PREFERRED_SIZE))).addGap(0, 0, 32767))).addContainerGap()))
        layout.setVerticalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(@jPanel2, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@jLabel7).addComponent(@increaseWidthTextField, GroupLayout::PREFERRED_SIZE, 22, GroupLayout::PREFERRED_SIZE).addComponent(@jLabel8).addComponent(@increaseHeightTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE)).addGroup(layout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@jLabel5).addComponent(@widthReductionTextField, GroupLayout::PREFERRED_SIZE, 22, GroupLayout::PREFERRED_SIZE).addComponent(@jLabel6).addComponent(@heightReductionTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE))).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@writeOverOriginalJCheckBox).addComponent(@generateJButton)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@jPanel1, GroupLayout::DEFAULT_SIZE, GroupLayout::DEFAULT_SIZE, 32767)))
    end
    java_overload :initComponents, 0
    

    def writeOverOriginalJCheckBoxActionPerformed(evt)
    end
    java_overload :writeOverOriginalJCheckBoxActionPerformed, 1
    

    def generateJButtonActionPerformed(evt)
        self.process()
    end
    java_overload :generateJButtonActionPerformed, 1
    

    def spriteTypeJComboBoxActionPerformed(evt)
        spriteSplitterUtil = ::Org::Allbinary::Media::Image::SpriteSplitterUtil.getInstance()
        @jLabel1.setText(spriteSplitterUtil.ANIMATIONS_LABELS[@spriteTypeJComboBox.getSelectedIndex()])
        @jLabel2.setText(spriteSplitterUtil.ANIMATIONS_LABELS[@spriteTypeJComboBox.getSelectedIndex() + 1])
    end
    java_overload :spriteTypeJComboBoxActionPerformed, 1
    

    def totalAnimationsJComboBoxActionPerformed(evt)
    end
    java_overload :totalAnimationsJComboBoxActionPerformed, 1
    

    def totalFramesJComboBoxActionPerformed(evt)
    end
    java_overload :totalFramesJComboBoxActionPerformed, 1
    

    def widthReductionTextFieldActionPerformed(evt)
    end
    java_overload :widthReductionTextFieldActionPerformed, 1
    

    def increaseWidthTextFieldActionPerformed(evt)
    end
    java_overload :increaseWidthTextFieldActionPerformed, 1
    

    def getImageProcessorInput()
        return @imageProcessorInput
    end
    java_overload :getImageProcessorInput, 0
    

    def setImageProcessorInput(imageProcessorInput)
        @imageProcessorInput = imageProcessorInput
    end
    java_overload :setImageProcessorInput, 1
    

    # throws IOException
    def visit(generatedBufferedImage, name, index)
        @logUtil.putF(@commonStrings.VISIT, self, @commonStrings.VISIT)
        @result = generatedBufferedImage
        self.getParent().repaint()
        file = @imageProcessorInput.getFiles()[index]
        if !@writeOverOriginalJCheckBox.isSelected()
            filePath = file.getAbsolutePath()
            extensionIndex = (filePath.index(@imageStrings.PNG_EXTENSION) || -1)
            filePath = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(filePath[0...extensionIndex]).append(@commonSeps.UNDERSCORE).append(name).append(@imageStrings.PNG_EXTENSION).to_s
            file = File.new(filePath)
        end
        isWritten = ImageIO.write(@result, @imageStrings.PNG, file)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("File: ").append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(file)).append(" Wrote: ").appendboolean(isWritten).to_s, self, @commonStrings.RUN)
    end
    java_overload :visit, 3
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageProcessorInput, "org/allbinary/media/image/ImageProcessorInput" unless const_defined?(:ImageProcessorInput, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageStrings, "org/allbinary/media/image/ImageStrings" unless const_defined?(:ImageStrings, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :SpriteSplitterUtil, "org/allbinary/media/image/SpriteSplitterUtil" unless const_defined?(:SpriteSplitterUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonPhoneStrings, "org/allbinary/string/CommonPhoneStrings" unless const_defined?(:CommonPhoneStrings, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
require "java/lang/Thread"

end; end; end; end

