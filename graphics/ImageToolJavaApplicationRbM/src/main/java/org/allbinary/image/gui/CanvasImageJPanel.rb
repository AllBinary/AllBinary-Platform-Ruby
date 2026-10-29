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

class CanvasImageJPanel < JPanel
    include ImageProcessedVisitor
    attr_accessor :logUtil, :commonStrings, :commonSeps, :imageStrings, :imageProcessorInput, :result, :generateJButton, :heightReductionTextField, :heightReductionTextField1, :jLabel4, :jLabel5, :jLabel6, :jLabel7, :jLabel8, :jPanel1, :jPanel2, :widthReductionTextField, :widthReductionTextField1, :writeOverOriginalJCheckBox

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @commonSeps = CommonSeps.getInstance()
        @imageStrings = ImageStrings.getInstance()
        @imageProcessorInput = nil
        @result = nil
        @generateJButton = nil
        @heightReductionTextField = nil
        @heightReductionTextField1 = nil
        @jLabel4 = nil
        @jLabel5 = nil
        @jLabel6 = nil
        @jLabel7 = nil
        @jLabel8 = nil
        @jPanel1 = nil
        @jPanel2 = nil
        @widthReductionTextField = nil
        @widthReductionTextField1 = nil
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
                    canvasTrimUtil = CanvasTrimUtil.getInstance()
                    canvasExpandUtil = CanvasExpandUtil.getInstance()
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
        end.new().start()
    end
    

    def initComponents()
        @writeOverOriginalJCheckBox = JCheckBox.new()
        @jPanel1 = Class.new(JPanel.is_a?(Class) ? JPanel : Object) do
            include(JPanel) unless JPanel.is_a?(Class)
            

            def paint(graphics)
                if @result != nil
                    graphics.drawImage(@result, 0, 0, @result.getWidth(nil), @result.getHeight(nil), nil)
                end
            end
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
        end.new())
        jPanel1Layout = GroupLayout.new(@jPanel1)
        @jPanel1.setLayout(jPanel1Layout)
        jPanel1Layout.setHorizontalGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGap(0, 0, 32767))
        jPanel1Layout.setVerticalGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGap(0, 196, 32767))
        @generateJButton.setText("Generate")
        @generateJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                generateJButtonActionPerformed(evt)
            end
        end.new())
        @jLabel4.setText("Results:")
        @jLabel5.setText("Right:")
        @widthReductionTextField.setText(CommonPhoneStrings.getInstance().ZERO)
        @widthReductionTextField.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                widthReductionTextFieldActionPerformed(evt)
            end
        end.new())
        @jLabel6.setText("Bottom")
        @heightReductionTextField.setText(CommonPhoneStrings.getInstance().ZERO)
        @widthReductionTextField1.setText(CommonPhoneStrings.getInstance().ZERO)
        @widthReductionTextField1.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                widthReductionTextField1ActionPerformed(evt)
            end
        end.new())
        @jLabel7.setText("Top")
        @jLabel8.setText("Left:")
        @heightReductionTextField1.setText(CommonPhoneStrings.getInstance().ZERO)
        jPanel2Layout = GroupLayout.new(@jPanel2)
        @jPanel2.setLayout(jPanel2Layout)
        jPanel2Layout.setHorizontalGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(jPanel2Layout.createSequentialGroup().addContainerGap().addComponent(@jLabel8).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@widthReductionTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, 41, javax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@jLabel5).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@widthReductionTextField, javax.swing.GroupLayout.PREFERRED_SIZE, 41, javax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@jLabel7).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@heightReductionTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, 46, javax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@jLabel6).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@heightReductionTextField, javax.swing.GroupLayout.PREFERRED_SIZE, 46, javax.swing.GroupLayout.PREFERRED_SIZE).addContainerGap(140, 32767)))
        jPanel2Layout.setVerticalGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup().addGap(0, 16, 32767).addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@jLabel6).addComponent(@heightReductionTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)).addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@jLabel8).addComponent(@widthReductionTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, 22, javax.swing.GroupLayout.PREFERRED_SIZE).addComponent(@jLabel7).addComponent(@heightReductionTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)).addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@jLabel5).addComponent(@widthReductionTextField, javax.swing.GroupLayout.PREFERRED_SIZE, 22, javax.swing.GroupLayout.PREFERRED_SIZE)))))
        layout = GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(@jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, 32767).addGap(78, 78, 78)).addGroup(layout.createSequentialGroup().addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addContainerGap().addComponent(@jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, 32767)).addGroup(layout.createSequentialGroup().addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addComponent(@jLabel4).addGroup(layout.createSequentialGroup().addComponent(@writeOverOriginalJCheckBox).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@generateJButton))).addGap(0, 0, 32767))).addContainerGap()))
        layout.setVerticalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(@jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addComponent(@generateJButton).addComponent(@writeOverOriginalJCheckBox)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@jLabel4).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, 32767)))
    end
    

    def writeOverOriginalJCheckBoxActionPerformed(evt)
    end
    

    def generateJButtonActionPerformed(evt)
        self.process()
    end
    

    def widthReductionTextFieldActionPerformed(evt)
    end
    

    def widthReductionTextField1ActionPerformed(evt)
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
require "org/allbinary/media/image/CanvasExpandUtil"
require "org/allbinary/media/image/CanvasTrimUtil"
require "org/allbinary/media/image/ImageProcessorInput"
require "org/allbinary/media/image/ImageStrings"
require "org/allbinary/string/CommonPhoneStrings"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "java/lang/Thread"

