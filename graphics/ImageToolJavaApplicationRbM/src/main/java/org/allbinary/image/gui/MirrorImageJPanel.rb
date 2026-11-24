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
# require "java/awt/image/RenderedImage"
# require "java/io/File"
# require "javax/imageio/ImageIO"
require "org/allbinary/media/image/ImageProcessorInputCompositeInterface"
# require "java/awt/event/ActionEvent"
# require "java/awt/event/ActionListener"
# require "javax/swing/ButtonGroup"
# require "javax/swing/JButton"
# require "javax/swing/JCheckBox"
# require "javax/swing/JLabel"
# require "javax/swing/JLayeredPane"
# require "javax/swing/JPanel"
# require "javax/swing/JRadioButton"

module ::Org; module Allbinary; module Image; module Gui

class MirrorImageJPanel < JPanel
    include ::Org::Allbinary::Media::Image::ImageProcessorInputCompositeInterface
    attr_accessor :logUtil, :commonStrings, :imageStrings, :imageProcessorInput, :result, :buttonGroup, :generateJButton, :horizontalJCheckBox, :jLabel2, :jLayeredPane1, :jPanel1, :jPanel2, :jPanel3, :renameJRadioButton, :verticleJCheckBox, :writeOverOriginalJRadioButton

    def jfields_org_allbinary_image_gui_MirrorImageJPanel
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @imageStrings = ::Org::Allbinary::Media::Image::ImageStrings.getInstance()
        @imageProcessorInput = nil unless instance_variable_defined?(:@imageProcessorInput)
        @result = nil unless instance_variable_defined?(:@result)
        @buttonGroup = nil unless instance_variable_defined?(:@buttonGroup)
        @generateJButton = nil unless instance_variable_defined?(:@generateJButton)
        @horizontalJCheckBox = nil unless instance_variable_defined?(:@horizontalJCheckBox)
        @jLabel2 = nil unless instance_variable_defined?(:@jLabel2)
        @jLayeredPane1 = nil unless instance_variable_defined?(:@jLayeredPane1)
        @jPanel1 = nil unless instance_variable_defined?(:@jPanel1)
        @jPanel2 = nil unless instance_variable_defined?(:@jPanel2)
        @jPanel3 = nil unless instance_variable_defined?(:@jPanel3)
        @renameJRadioButton = nil unless instance_variable_defined?(:@renameJRadioButton)
        @verticleJCheckBox = nil unless instance_variable_defined?(:@verticleJCheckBox)
        @writeOverOriginalJRadioButton = nil unless instance_variable_defined?(:@writeOverOriginalJRadioButton)
    end
    

    def initialize(imageProcessorInput)
        super()
        jfields_org_allbinary_image_gui_MirrorImageJPanel
        @logUtil.putF("Starting", self, @commonStrings.CONSTRUCTOR)
        self.initComponents()
        @imageProcessorInput = imageProcessorInput
    end
    

    def process()
        Class.new(::Java::Lang::JavaThread.is_a?(Class) ? ::Java::Lang::JavaThread : Object) do
            include(::Java::Lang::JavaThread) unless ::Java::Lang::JavaThread.is_a?(Class)
            

            def run()
                logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
                begin
                    imageProcessorInput = self.getImageProcessorInput()
                    bufferedImageArray = imageProcessorInput.getBufferedImageArray()
                    (0...bufferedImageArray.length).each do |index|
                        @result = ::Org::Allbinary::Media::Image::MirrorImageUtil.getInstance().getImage(bufferedImageArray[index], @verticleJCheckBox.isSelected(), @horizontalJCheckBox.isSelected())
                        file = imageProcessorInput.getFiles()[index]
                        if @writeOverOriginalJRadioButton.isSelected()
                        elsif @renameJRadioButton.isSelected()
                            filePath = file.getAbsolutePath()
                            extensionIndex = (filePath.index(@imageStrings.PNG_EXTENSION) || -1)
                            filePath = filePath[0...extensionIndex] + "_mirror" + (@imageStrings.PNG_EXTENSION).to_s
                            logUtil.putF("Renamed File: " + filePath, self, @commonStrings.RUN)
                            file = File.new(filePath)
                        end
                        isWritten = ImageIO.write(@result, @imageStrings.PNG, file)
                        logUtil.putF("File: " + (file).to_s + " Wrote: " + (isWritten).to_s, self, @commonStrings.RUN)
                        self.getParent().repaint()
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
        @jLayeredPane1 = JLayeredPane.new()
        @buttonGroup = ButtonGroup.new()
        @jPanel1 = Class.new(JPanel.is_a?(Class) ? JPanel : Object) do
            include(JPanel) unless JPanel.is_a?(Class)
            

            def paint(graphics)
                if @result != nil
                    graphics.drawImage(@result, 0, 0, @result.getWidth(nil), @result.getHeight(nil), nil)
                end
            end
            java_overload :paint, 1
        end.new()
        @jPanel2 = JPanel.new()
        @horizontalJCheckBox = JCheckBox.new()
        @verticleJCheckBox = JCheckBox.new()
        @generateJButton = JButton.new()
        @renameJRadioButton = JRadioButton.new()
        @writeOverOriginalJRadioButton = JRadioButton.new()
        @jPanel3 = JPanel.new()
        @jLabel2 = JLabel.new()
        jPanel1Layout = ::Org::Jdesktop::Layout::GroupLayout.new(@jPanel1)
        @jPanel1.setLayout(jPanel1Layout)
        jPanel1Layout.setHorizontalGroup(jPanel1Layout.createParallelGroup(::Org::Jdesktop::Layout::GroupLayout::LEADING).add(0, 522, 32767))
        jPanel1Layout.setVerticalGroup(jPanel1Layout.createParallelGroup(::Org::Jdesktop::Layout::GroupLayout::LEADING).add(0, 230, 32767))
        @horizontalJCheckBox.setSelected(true)
        @horizontalJCheckBox.setText("Horizontal")
        @horizontalJCheckBox.setEnabled(false)
        @verticleJCheckBox.setText("Verticle")
        @verticleJCheckBox.setEnabled(false)
        @generateJButton.setText("Generate")
        @generateJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                generateJButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @renameJRadioButton.setText("Save As filename_mirror")
        @renameJRadioButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                renameJRadioButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @writeOverOriginalJRadioButton.setText("Write Over Original")
        jPanel2Layout = ::Org::Jdesktop::Layout::GroupLayout.new(@jPanel2)
        @jPanel2.setLayout(jPanel2Layout)
        jPanel2Layout.setHorizontalGroup(jPanel2Layout.createParallelGroup(::Org::Jdesktop::Layout::GroupLayout::LEADING).add(jPanel2Layout.createSequentialGroup().addContainerGap(::Org::Jdesktop::Layout::GroupLayout::DEFAULT_SIZE, 32767).add(@verticleJCheckBox).addPreferredGap(::Org::Jdesktop::Layout::LayoutStyle::UNRELATED).add(@horizontalJCheckBox).addPreferredGap(::Org::Jdesktop::Layout::LayoutStyle::RELATED).add(@writeOverOriginalJRadioButton).addPreferredGap(::Org::Jdesktop::Layout::LayoutStyle::UNRELATED).add(@renameJRadioButton).addPreferredGap(::Org::Jdesktop::Layout::LayoutStyle::RELATED).add(@generateJButton).add(37, 37, 37)))
        jPanel2Layout.setVerticalGroup(jPanel2Layout.createParallelGroup(::Org::Jdesktop::Layout::GroupLayout::LEADING).add(jPanel2Layout.createSequentialGroup().add(jPanel2Layout.createParallelGroup(::Org::Jdesktop::Layout::GroupLayout::BASELINE).add(@horizontalJCheckBox).add(@verticleJCheckBox).add(@writeOverOriginalJRadioButton).add(@renameJRadioButton).add(@generateJButton)).addContainerGap()))
        @jLabel2.setText("Results:")
        jPanel3Layout = ::Org::Jdesktop::Layout::GroupLayout.new(@jPanel3)
        @jPanel3.setLayout(jPanel3Layout)
        jPanel3Layout.setHorizontalGroup(jPanel3Layout.createParallelGroup(::Org::Jdesktop::Layout::GroupLayout::LEADING).add(jPanel3Layout.createSequentialGroup().add(@jLabel2).addContainerGap(433, 32767)))
        jPanel3Layout.setVerticalGroup(jPanel3Layout.createParallelGroup(::Org::Jdesktop::Layout::GroupLayout::LEADING).add(@jLabel2))
        layout = ::Org::Jdesktop::Layout::GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(::Org::Jdesktop::Layout::GroupLayout::LEADING).add(::Org::Jdesktop::Layout::GroupLayout::TRAILING, layout.createSequentialGroup().addContainerGap().add(@jPanel3, ::Org::Jdesktop::Layout::GroupLayout::DEFAULT_SIZE, ::Org::Jdesktop::Layout::GroupLayout::DEFAULT_SIZE, 32767).addContainerGap()).add(@jPanel1, ::Org::Jdesktop::Layout::GroupLayout::DEFAULT_SIZE, ::Org::Jdesktop::Layout::GroupLayout::DEFAULT_SIZE, 32767).add(layout.createSequentialGroup().add(@jPanel2, ::Org::Jdesktop::Layout::GroupLayout::DEFAULT_SIZE, ::Org::Jdesktop::Layout::GroupLayout::DEFAULT_SIZE, 32767).addContainerGap(::Org::Jdesktop::Layout::GroupLayout::DEFAULT_SIZE, 32767)))
        layout.setVerticalGroup(layout.createParallelGroup(::Org::Jdesktop::Layout::GroupLayout::LEADING).add(layout.createSequentialGroup().add(@jPanel2, ::Org::Jdesktop::Layout::GroupLayout::PREFERRED_SIZE, 25, ::Org::Jdesktop::Layout::GroupLayout::PREFERRED_SIZE).addPreferredGap(::Org::Jdesktop::Layout::LayoutStyle::RELATED).add(@jPanel3, ::Org::Jdesktop::Layout::GroupLayout::PREFERRED_SIZE, ::Org::Jdesktop::Layout::GroupLayout::DEFAULT_SIZE, ::Org::Jdesktop::Layout::GroupLayout::PREFERRED_SIZE).addPreferredGap(::Org::Jdesktop::Layout::LayoutStyle::RELATED).add(@jPanel1, ::Org::Jdesktop::Layout::GroupLayout::DEFAULT_SIZE, ::Org::Jdesktop::Layout::GroupLayout::DEFAULT_SIZE, 32767)))
    end
    java_overload :initComponents, 0
    

    def generateJButtonActionPerformed(evt)
        self.process()
    end
    java_overload :generateJButtonActionPerformed, 1
    

    def renameJRadioButtonActionPerformed(evt)
    end
    java_overload :renameJRadioButtonActionPerformed, 1
    

    def getImageProcessorInput()
        return @imageProcessorInput
    end
    java_overload :getImageProcessorInput, 0
    

    def setImageProcessorInput(imageProcessorInput)
        @imageProcessorInput = imageProcessorInput
    end
    java_overload :setImageProcessorInput, 1
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageProcessorInput, "org/allbinary/media/image/ImageProcessorInput" unless const_defined?(:ImageProcessorInput, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageStrings, "org/allbinary/media/image/ImageStrings" unless const_defined?(:ImageStrings, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :MirrorImageUtil, "org/allbinary/media/image/MirrorImageUtil" unless const_defined?(:MirrorImageUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
require "java/lang/Thread"
module ::Org; module Jdesktop; module Layout; autoload :GroupLayout, "org/jdesktop/layout/GroupLayout" unless const_defined?(:GroupLayout, false); end; end; end
module ::Org; module Jdesktop; module Layout; autoload :GroupLayout, "org/jdesktop/layout/GroupLayout" unless const_defined?(:GroupLayout, false); end; end; end
module ::Org; module Jdesktop; module Layout; autoload :GroupLayout, "org/jdesktop/layout/GroupLayout" unless const_defined?(:GroupLayout, false); end; end; end
module ::Org; module Jdesktop; module Layout; autoload :GroupLayout, "org/jdesktop/layout/GroupLayout" unless const_defined?(:GroupLayout, false); end; end; end
module ::Org; module Jdesktop; module Layout; autoload :GroupLayout, "org/jdesktop/layout/GroupLayout" unless const_defined?(:GroupLayout, false); end; end; end
module ::Org; module Jdesktop; module Layout; autoload :GroupLayout, "org/jdesktop/layout/GroupLayout" unless const_defined?(:GroupLayout, false); end; end; end
module ::Org; module Jdesktop; module Layout; autoload :GroupLayout, "org/jdesktop/layout/GroupLayout" unless const_defined?(:GroupLayout, false); end; end; end
module ::Org; module Jdesktop; module Layout; autoload :GroupLayout, "org/jdesktop/layout/GroupLayout" unless const_defined?(:GroupLayout, false); end; end; end

end; end; end; end

