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
# require "javax/swing/GroupLayout"
# require "javax/swing/JButton"
# require "javax/swing/JCheckBox"
# require "javax/swing/JLabel"
# require "javax/swing/JPanel"
# require "javax/swing/JTextField"
# require "javax/swing/LayoutStyle"

module ::Org; module Allbinary; module Image; module Gui

class CanvasImageJPanel < JPanel
    include ::Org::Allbinary::Media::Image::ImageProcessedVisitor
    attr_accessor :logUtil, :commonStrings, :commonSeps, :imageStrings, :imageProcessorInput, :result, :generateJButton, :heightReductionTextField, :heightReductionTextField1, :jLabel4, :jLabel5, :jLabel6, :jLabel7, :jLabel8, :jPanel1, :jPanel2, :widthReductionTextField, :widthReductionTextField1, :writeOverOriginalJCheckBox

    def jfields_org_allbinary_image_gui_CanvasImageJPanel
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        @imageStrings = ::Org::Allbinary::Media::Image::ImageStrings.getInstance()
        @imageProcessorInput = nil unless instance_variable_defined?(:@imageProcessorInput)
        @result = nil unless instance_variable_defined?(:@result)
        @generateJButton = nil unless instance_variable_defined?(:@generateJButton)
        @heightReductionTextField = nil unless instance_variable_defined?(:@heightReductionTextField)
        @heightReductionTextField1 = nil unless instance_variable_defined?(:@heightReductionTextField1)
        @jLabel4 = nil unless instance_variable_defined?(:@jLabel4)
        @jLabel5 = nil unless instance_variable_defined?(:@jLabel5)
        @jLabel6 = nil unless instance_variable_defined?(:@jLabel6)
        @jLabel7 = nil unless instance_variable_defined?(:@jLabel7)
        @jLabel8 = nil unless instance_variable_defined?(:@jLabel8)
        @jPanel1 = nil unless instance_variable_defined?(:@jPanel1)
        @jPanel2 = nil unless instance_variable_defined?(:@jPanel2)
        @widthReductionTextField = nil unless instance_variable_defined?(:@widthReductionTextField)
        @widthReductionTextField1 = nil unless instance_variable_defined?(:@widthReductionTextField1)
        @writeOverOriginalJCheckBox = nil unless instance_variable_defined?(:@writeOverOriginalJCheckBox)
    end
    

    def initialize(imageProcessorInput)
        super()
        jfields_org_allbinary_image_gui_CanvasImageJPanel
        initComponents()
        @imageProcessorInput = imageProcessorInput
    end
    

    def process()
        Class.new(::Java::Lang::JavaThread.is_a?(Class) ? ::Java::Lang::JavaThread : Object) do
            include(::Java::Lang::JavaThread) unless ::Java::Lang::JavaThread.is_a?(Class)
            

            def run()
                logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
                begin
                    canvasTrimUtil = ::Org::Allbinary::Media::Image::CanvasTrimUtil.getInstance()
                    canvasExpandUtil = ::Org::Allbinary::Media::Image::CanvasExpandUtil.getInstance()
                    leftReduction = (@widthReductionTextField1.getText()).to_s
                    topReduction = (@heightReductionTextField1.getText()).to_s
                    widthReduction = (@widthReductionTextField.getText()).to_s
                    heightReduction = (@heightReductionTextField.getText()).to_s
                    if leftReduction <= 0 || topReduction <= 0 || widthReduction <= 0 || heightReduction <= 0
                        canvasTrimUtil.process(self.getImageProcessorInput(), -leftReduction, -topReduction, -widthReduction, -heightReduction, self)
                    else
                        canvasExpandUtil.process(self.getImageProcessorInput(), leftReduction, topReduction, self)
                    end
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
        @jPanel1 = Class.new(JPanel.is_a?(Class) ? JPanel : Object) do
            include(JPanel) unless JPanel.is_a?(Class)
            

            def paint(graphics)
                if @result != nil
                    graphics.drawImage(@result, 0, 0, @result.getWidth(nil), @result.getHeight(nil), nil)
                end
            end
            java_overload :paint, 1
        end.new()
        @generateJButton = JButton.new()
        @jLabel4 = JLabel.new()
        @jPanel2 = JPanel.new()
        @jLabel5 = JLabel.new()
        @widthReductionTextField = JTextField.new()
        @jLabel6 = JLabel.new()
        @heightReductionTextField = JTextField.new()
        @widthReductionTextField1 = JTextField.new()
        @jLabel7 = JLabel.new()
        @jLabel8 = JLabel.new()
        @heightReductionTextField1 = JTextField.new()
        @writeOverOriginalJCheckBox.setSelected(true)
        @writeOverOriginalJCheckBox.setText("Write Over Original")
        @writeOverOriginalJCheckBox.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                writeOverOriginalJCheckBoxActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        jPanel1Layout = GroupLayout.new(@jPanel1)
        @jPanel1.setLayout(jPanel1Layout)
        jPanel1Layout.setHorizontalGroup(jPanel1Layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGap(0, 0, 32767))
        jPanel1Layout.setVerticalGroup(jPanel1Layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGap(0, 196, 32767))
        @generateJButton.setText("Generate")
        @generateJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                generateJButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @jLabel4.setText("Results:")
        @jLabel5.setText("Right:")
        @widthReductionTextField.setText(::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().ZERO)
        @widthReductionTextField.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                widthReductionTextFieldActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @jLabel6.setText("Bottom")
        @heightReductionTextField.setText(::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().ZERO)
        @widthReductionTextField1.setText(::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().ZERO)
        @widthReductionTextField1.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                widthReductionTextField1ActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @jLabel7.setText("Top")
        @jLabel8.setText("Left:")
        @heightReductionTextField1.setText(::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().ZERO)
        jPanel2Layout = GroupLayout.new(@jPanel2)
        @jPanel2.setLayout(jPanel2Layout)
        jPanel2Layout.setHorizontalGroup(jPanel2Layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(jPanel2Layout.createSequentialGroup().addContainerGap().addComponent(@jLabel8).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@widthReductionTextField1, GroupLayout::PREFERRED_SIZE, 41, GroupLayout::PREFERRED_SIZE).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@jLabel5).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@widthReductionTextField, GroupLayout::PREFERRED_SIZE, 41, GroupLayout::PREFERRED_SIZE).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@jLabel7).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@heightReductionTextField1, GroupLayout::PREFERRED_SIZE, 46, GroupLayout::PREFERRED_SIZE).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@jLabel6).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@heightReductionTextField, GroupLayout::PREFERRED_SIZE, 46, GroupLayout::PREFERRED_SIZE).addContainerGap(140, 32767)))
        jPanel2Layout.setVerticalGroup(jPanel2Layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(GroupLayout::Alignment.TRAILING, jPanel2Layout.createSequentialGroup().addGap(0, 16, 32767).addGroup(jPanel2Layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(jPanel2Layout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@jLabel6).addComponent(@heightReductionTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE)).addGroup(jPanel2Layout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@jLabel8).addComponent(@widthReductionTextField1, GroupLayout::PREFERRED_SIZE, 22, GroupLayout::PREFERRED_SIZE).addComponent(@jLabel7).addComponent(@heightReductionTextField1, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE)).addGroup(jPanel2Layout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@jLabel5).addComponent(@widthReductionTextField, GroupLayout::PREFERRED_SIZE, 22, GroupLayout::PREFERRED_SIZE)))))
        layout = GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(@jPanel2, GroupLayout::DEFAULT_SIZE, GroupLayout::DEFAULT_SIZE, 32767).addGap(78, 78, 78)).addGroup(layout.createSequentialGroup().addGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createSequentialGroup().addContainerGap().addComponent(@jPanel1, GroupLayout::DEFAULT_SIZE, GroupLayout::DEFAULT_SIZE, 32767)).addGroup(layout.createSequentialGroup().addGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addComponent(@jLabel4).addGroup(layout.createSequentialGroup().addComponent(@writeOverOriginalJCheckBox).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@generateJButton))).addGap(0, 0, 32767))).addContainerGap()))
        layout.setVerticalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(@jPanel2, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addComponent(@generateJButton).addComponent(@writeOverOriginalJCheckBox)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@jLabel4).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@jPanel1, GroupLayout::DEFAULT_SIZE, GroupLayout::DEFAULT_SIZE, 32767)))
    end
    java_overload :initComponents, 0
    

    def writeOverOriginalJCheckBoxActionPerformed(evt)
    end
    java_overload :writeOverOriginalJCheckBoxActionPerformed, 1
    

    def generateJButtonActionPerformed(evt)
        self.process()
    end
    java_overload :generateJButtonActionPerformed, 1
    

    def widthReductionTextFieldActionPerformed(evt)
    end
    java_overload :widthReductionTextFieldActionPerformed, 1
    

    def widthReductionTextField1ActionPerformed(evt)
    end
    java_overload :widthReductionTextField1ActionPerformed, 1
    

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
module ::Org; module Allbinary; module Media; module Image; autoload :CanvasExpandUtil, "org/allbinary/media/image/CanvasExpandUtil" unless const_defined?(:CanvasExpandUtil, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :CanvasTrimUtil, "org/allbinary/media/image/CanvasTrimUtil" unless const_defined?(:CanvasTrimUtil, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageProcessorInput, "org/allbinary/media/image/ImageProcessorInput" unless const_defined?(:ImageProcessorInput, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageStrings, "org/allbinary/media/image/ImageStrings" unless const_defined?(:ImageStrings, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonPhoneStrings, "org/allbinary/string/CommonPhoneStrings" unless const_defined?(:CommonPhoneStrings, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
require "java/lang/Thread"

end; end; end; end

