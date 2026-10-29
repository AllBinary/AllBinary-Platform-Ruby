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

# require "java/awt/image/BufferedImage"
# require "java/io/File"
# require "javax/swing"
require "org/allbinary/media/image/ImageProcessorInputCompositeInterface"

class ImageUnifierJPanel < JPanel
    include ImageProcessorInputCompositeInterface
    attr_accessor :logUtil, :commonStrings, :imageStrings, :imagesRatioUtil, :imageProcessorInput, :icon, :imageUnifierProperties, :result, :isImageFillIn, :avgRatioJTextField, :cellHeightJTextField, :cellRatioJTextField, :cellWidthJTextField, :columnsJTextField, :downJButton, :fudgeItJButton, :imageJList, :jButton1, :jButton2, :jButtonOrder, :jLabel1, :jLabel2, :jLabel3, :jLabel4, :jLabel5, :jLabel6, :jPanel1, :jScrollPane1, :jScrollPane2, :rowsJTextField, :upJButton

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @imageStrings = ImageStrings.getInstance()
        @imagesRatioUtil = ImagesRatioUtil.getInstance()
        @imageProcessorInput = nil
        @icon = nil
        @imageUnifierProperties = nil
        @result = nil
        @isImageFillIn = true
        @avgRatioJTextField = nil
        @cellHeightJTextField = nil
        @cellRatioJTextField = nil
        @cellWidthJTextField = nil
        @columnsJTextField = nil
        @downJButton = nil
        @fudgeItJButton = nil
        @imageJList = nil
        @jButton1 = nil
        @jButton2 = nil
        @jButtonOrder = nil
        @jLabel1 = nil
        @jLabel2 = nil
        @jLabel3 = nil
        @jLabel4 = nil
        @jLabel5 = nil
        @jLabel6 = nil
        @jPanel1 = nil
        @jScrollPane1 = nil
        @jScrollPane2 = nil
        @rowsJTextField = nil
        @upJButton = nil
    end
    

    def initialize(imageProcessorInput)
        super()
        initialize_fields
        self.initComponents()
        self.setImageProcessorInput(imageProcessorInput)
    end
    

    def init()
        begin
            imageProcessorInput = self.getImageProcessorInput()
            bufferedImageArray = imageProcessorInput.getBufferedImageArray()
            @icon = Array.new(bufferedImageArray.length, nil)
            defaultListModel = DefaultListModel.new()
            (0...bufferedImageArray.length).each do |index|
                width = bufferedImageArray[index].getWidth()
                height = bufferedImageArray[index].getHeight()
                newWidth = 52
                oldRatio = width / height
                newHeight = (((newWidth).to_f / oldRatio)).to_i
                iconBufferedImage = ImageUtil.getInstance().createBufferedImage(bufferedImageArray[index], newWidth, newHeight, true)
                @icon[index] = ImageIconUnique.new(iconBufferedImage, index)
                defaultListModel.addElement(@icon[index])
            end
            @imageJList.setModel(defaultListModel)
            self.updateOnPropertiesChange()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.INIT, e)
        end
    end
    

    def updateImage()
        begin
            bufferedImageArray = self.getImageProcessorInput().getBufferedImageArray()
            tempBufferedImageArray = Array.new(bufferedImageArray.length, nil)
            (0...bufferedImageArray.length).each do |index|
                indexedImageIcon = @imageJList.getModel().getElementAt(index)
                bufferedImage = ImageUtil.getInstance().createBufferedImage(bufferedImageArray[indexedImageIcon.getId()], @imageUnifierProperties.getImageUnifierCell().getWidth(), @imageUnifierProperties.getImageUnifierCell().getHeight(), false)
                tempBufferedImageArray[index] = bufferedImage
            end
            totalImages = @imageUnifierProperties.getRows() * @imageUnifierProperties.getColumns()
            averageRatio = @imagesRatioUtil.getAverage(tempBufferedImageArray, totalImages)
            averageRatioString = averageRatio.to_s
            if averageRatioString.length > 4
                averageRatioString = averageRatioString[0...4]
            end
            @avgRatioJTextField.setText(averageRatioString)
            @fudgeItJButton.setEnabled(false)
            if !@imagesRatioUtil.isEqual(tempBufferedImageArray, totalImages)
                if @isImageFillIn
                    @fudgeItJButton.setEnabled(true)
                end
            end
            self.updateImage(tempBufferedImageArray)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "updateImage", e)
        end
    end
    

    def updateImageWithFudgedImages()
        begin
            bufferedImageArray = self.getImageProcessorInput().getBufferedImageArray()
            tempBufferedImageArray = Array.new(bufferedImageArray.length, nil)
            (0...bufferedImageArray.length).each do |index|
                indexedImageIcon = @imageJList.getModel().getElementAt(index)
                bufferedImage = ImageUtil.getInstance().createBufferedImage(bufferedImageArray[indexedImageIcon.getId()], @imageUnifierProperties.getImageUnifierCell().getWidth(), @imageUnifierProperties.getImageUnifierCell().getHeight(), false)
                tempBufferedImageArray[index] = bufferedImage
            end
            totalImages = @imageUnifierProperties.getRows() * @imageUnifierProperties.getColumns()
            averageRatio = @imagesRatioUtil.getAverage(tempBufferedImageArray, totalImages)
            fudgedBufferedImageArray = @imagesRatioUtil.fudge(tempBufferedImageArray, totalImages, averageRatio)
            self.updateImage(fudgedBufferedImageArray)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "updateImageWithFudgedImages", e)
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def updateImage(tempBufferedImageArray)
        @result = ImageUnifierUtil.getInstance().getImage(tempBufferedImageArray, @imageUnifierProperties)
        image = ImageIcon.new(@result)
        label = JLabel.new(image)
        @jScrollPane2.getViewport().add(label)
        self.updateUI()
    end
    

    def updateOnPropertiesChange()
        if @rowsJTextField.getText().length() > 0 && @columnsJTextField.getText().length() > 0 && @cellWidthJTextField.getText().length() > 0 && @cellHeightJTextField.getText().length() > 0
            @imageUnifierProperties = ImageUnifierProperties.new()
            @imageUnifierProperties.setRows(@rowsJTextField.getText())
            @imageUnifierProperties.setColumns(@columnsJTextField.getText())
            imageUnifierCell = ImageUnifierCell.new(@cellWidthJTextField.getText(), @cellHeightJTextField.getText())
            @imageUnifierProperties.setImageUnifierCell(imageUnifierCell)
            cellRatio = ((imageUnifierCell.getWidth()).to_f / imageUnifierCell.getHeight())
            cellRatioString = cellRatio.to_s
            if cellRatioString.length > 4
                cellRatioString = cellRatioString[0...4]
            end
            @cellRatioJTextField.setText(cellRatioString)
            self.updateImage()
        end
    end
    

    def initComponents()
        commonPhoneStrings = CommonPhoneStrings.getInstance()
        @jScrollPane1 = JScrollPane.new()
        @imageJList = JList.new()
        @jScrollPane2 = JScrollPane.new()
        @jPanel1 = JPanel.new()
        @jButton1 = JButton.new()
        @upJButton = JButton.new()
        @downJButton = JButton.new()
        @fudgeItJButton = JButton.new()
        @jLabel2 = JLabel.new()
        @columnsJTextField = JTextField.new()
        @jLabel1 = JLabel.new()
        @rowsJTextField = JTextField.new()
        @jLabel3 = JLabel.new()
        @cellWidthJTextField = JTextField.new()
        @jLabel4 = JLabel.new()
        @cellHeightJTextField = JTextField.new()
        @jLabel5 = JLabel.new()
        @cellRatioJTextField = JTextField.new()
        @jLabel6 = JLabel.new()
        @avgRatioJTextField = JTextField.new()
        @jButton2 = JButton.new()
        @jButtonOrder = JButton.new()
        setMinimumSize(Dimension.new(500, 375))
        setPreferredSize(Dimension.new(0, 0))
        @imageJList.setMinimumSize(Dimension.new(50, 0))
        @jScrollPane1.setViewportView(@imageJList)
        @jButton1.setText("Save")
        @jButton1.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                jButton1ActionPerformed(evt)
            end
        end.new())
        @upJButton.setText("Up")
        @upJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                upJButtonActionPerformed(evt)
            end
        end.new())
        @downJButton.setText("Down")
        @downJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                downJButtonActionPerformed(evt)
            end
        end.new())
        @fudgeItJButton.setText("Fudge It!")
        @fudgeItJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                fudgeItJButtonActionPerformed(evt)
            end
        end.new())
        @jLabel2.setText("Columns:")
        @columnsJTextField.setText(commonPhoneStrings.TWO)
        @columnsJTextField.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                columnsJTextFieldActionPerformed(evt)
            end
        end.new())
        @columnsJTextField.addPropertyChangeListener(Class.new(PropertyChangeListener.is_a?(Class) ? PropertyChangeListener : Object) do
            include(PropertyChangeListener) unless PropertyChangeListener.is_a?(Class)
            

            def propertyChange(evt)
                columnsJTextFieldPropertyChange(evt)
            end
        end.new())
        @columnsJTextField.addKeyListener(Class.new(KeyAdapter.is_a?(Class) ? KeyAdapter : Object) do
            include(KeyAdapter) unless KeyAdapter.is_a?(Class)
            

            def keyPressed(evt)
                columnsJTextFieldKeyPressed(evt)
            end
            

            def keyTyped(evt)
                columnsJTextFieldKeyTyped(evt)
            end
        end.new())
        @jLabel1.setText("Rows:")
        @rowsJTextField.setText(commonPhoneStrings.TWO)
        @rowsJTextField.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                rowsJTextFieldActionPerformed(evt)
            end
        end.new())
        @jLabel3.setText("Cell Width:")
        @cellWidthJTextField.setText("200")
        @cellWidthJTextField.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                cellWidthJTextFieldActionPerformed(evt)
            end
        end.new())
        @jLabel4.setText("Cell Height:")
        @cellHeightJTextField.setText("150")
        @cellHeightJTextField.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                cellHeightJTextFieldActionPerformed(evt)
            end
        end.new())
        @jLabel5.setText("Cell Ratio:")
        @cellRatioJTextField.setEditable(false)
        @jLabel6.setText("Avg Image Ratio:")
        @avgRatioJTextField.setEditable(false)
        @jButton2.setText(@commonStrings.UPDATE)
        @jButton2.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                jButton2ActionPerformed(evt)
            end
        end.new())
        @jButtonOrder.setText("Order")
        @jButtonOrder.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                jButtonOrderActionPerformed(evt)
            end
        end.new())
        jPanel1Layout = GroupLayout.new(@jPanel1)
        @jPanel1.setLayout(jPanel1Layout)
        jPanel1Layout.setHorizontalGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup().addContainerGap().addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING).addComponent(@jButton1, javax.swing.GroupLayout.DEFAULT_SIZE, 151, 32767).addGroup(jPanel1Layout.createSequentialGroup().addComponent(@upJButton, javax.swing.GroupLayout.PREFERRED_SIZE, 71, javax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 10, 32767).addComponent(@downJButton, javax.swing.GroupLayout.PREFERRED_SIZE, 70, javax.swing.GroupLayout.PREFERRED_SIZE)).addComponent(@fudgeItJButton, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 151, 32767).addGroup(javax.swing.GroupLayout.Alignment.LEADING, jPanel1Layout.createSequentialGroup().addComponent(@jLabel3).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 99, javax.swing.GroupLayout.PREFERRED_SIZE)).addGroup(javax.swing.GroupLayout.Alignment.LEADING, jPanel1Layout.createSequentialGroup().addComponent(@jLabel4).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 96, javax.swing.GroupLayout.PREFERRED_SIZE)).addComponent(@avgRatioJTextField, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 151, 32767).addComponent(@jLabel6, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 151, 32767).addComponent(@cellRatioJTextField, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 151, 32767).addComponent(@jLabel5, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 151, 32767).addComponent(@cellHeightJTextField, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 151, 32767).addComponent(@cellWidthJTextField, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 151, 32767).addComponent(@jButton2, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 151, 32767).addGroup(javax.swing.GroupLayout.Alignment.LEADING, jPanel1Layout.createSequentialGroup().addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addComponent(@jLabel2).addComponent(@jLabel1)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addComponent(@rowsJTextField, javax.swing.GroupLayout.DEFAULT_SIZE, 103, 32767).addGroup(jPanel1Layout.createSequentialGroup().addComponent(@columnsJTextField, javax.swing.GroupLayout.DEFAULT_SIZE, 102, 32767).addGap(1, 1, 1)))).addComponent(@jButtonOrder, javax.swing.GroupLayout.DEFAULT_SIZE, 151, 32767)).addContainerGap()))
        jPanel1Layout.setVerticalGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(jPanel1Layout.createSequentialGroup().addContainerGap().addComponent(@jButton1).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@upJButton).addComponent(@downJButton)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@jButtonOrder).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@fudgeItJButton).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@jLabel2).addComponent(@columnsJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@jLabel1).addComponent(@rowsJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@jLabel3).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@cellWidthJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@jLabel4).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@cellHeightJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@jButton2).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@jLabel5).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, 32767).addComponent(@cellRatioJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE).addGap(7, 7, 7).addComponent(@jLabel6).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@avgRatioJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE).addGap(66, 66, 66)))
        layout = GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(@jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 84, javax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@jScrollPane2, javax.swing.GroupLayout.DEFAULT_SIZE, 527, 32767)))
        layout.setVerticalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup().addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING).addComponent(@jPanel1, javax.swing.GroupLayout.Alignment.LEADING, 0, 445, 32767).addComponent(@jScrollPane2, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 445, 32767).addComponent(@jScrollPane1, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 445, 32767)).addContainerGap()))
    end
    

    def jButton2ActionPerformed(evt)
        self.updateOnPropertiesChange()
    end
    

    def columnsJTextFieldKeyPressed(evt)
    end
    

    def columnsJTextFieldKeyTyped(evt)
    end
    

    def columnsJTextFieldPropertyChange(evt)
    end
    

    def fudgeItJButtonActionPerformed(evt)
        self.updateImageWithFudgedImages()
    end
    

    def cellHeightJTextFieldActionPerformed(evt)
        self.updateOnPropertiesChange()
    end
    

    def cellWidthJTextFieldActionPerformed(evt)
        self.updateOnPropertiesChange()
    end
    

    def columnsJTextFieldActionPerformed(evt)
        self.updateOnPropertiesChange()
    end
    

    def rowsJTextFieldActionPerformed(evt)
        self.updateOnPropertiesChange()
    end
    

    def jButton1ActionPerformed(evt)
        begin
            fileArray = @imageProcessorInput.getFiles()
            file = fileArray[0]
            filePath = file.getAbsolutePath()
            extensionIndex = (filePath.index(@imageStrings.PNG_EXTENSION) || -1)
            filePath = StringMaker.new().append(filePath[0...extensionIndex]).append(CommonSeps.getInstance().UNDERSCORE).appendint((@imageUnifierProperties.getColumns()).to_i).append("_By_").appendint((@imageUnifierProperties.getRows()).to_i).append("_Unified").append(@imageStrings.PNG_EXTENSION).to_s
            @logUtil.putF("New File Path: " + filePath, self, StringUtil.getInstance().EMPTY_STRING)
            outputFile = File.new(filePath)
            ImagePersistanceUtil.getInstance().saveWithBatik(FileWrapperUtil.wrapFile(outputFile), @result)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "jButton1ActionPerformed", e)
        end
    end
    

    def downJButtonActionPerformed(evt)
        index = @imageJList.getSelectedIndex()
        defaultListModel = @imageJList.getModel()
        if index >= 0 && index + 1 < defaultListModel.size()
            indexedImageIcon = defaultListModel.remove(index)
            defaultListModel.insertElementAt(indexedImageIcon, index + 1)
            @imageJList.setSelectedIndex(index + 1)
            self.updateImage()
        end
    end
    

    def upJButtonActionPerformed(evt)
        index = @imageJList.getSelectedIndex()
        if index > 0
            defaultListModel = @imageJList.getModel()
            indexedImageIcon = defaultListModel.remove(index)
            defaultListModel.insertElementAt(indexedImageIcon, index - 1)
            @imageJList.setSelectedIndex(index - 1)
            self.updateImage()
        end
    end
    

    def jButtonOrderActionPerformed(evt)
        defaultListModel = @imageJList.getModel()
        size = defaultListModel.size()
        last = size - 1
        (last).step(0, -(1)) do |index|
            indexedImageIcon = defaultListModel.remove(last)
            defaultListModel.insertElementAt(indexedImageIcon, last - index)
        end
        if size > 0
            @imageJList.setSelectedIndex(0)
            self.updateImage()
        end
    end
    

    def getImageProcessorInput()
        return @imageProcessorInput
    end
    

    def setImageProcessorInput(imageProcessorInput)
        @imageProcessorInput = imageProcessorInput
        self.init()
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/file/FileWrapperUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/media/image/ImagePersistanceUtil"
require "org/allbinary/media/image/ImageProcessorInput"
require "org/allbinary/media/image/ImageStrings"
require "org/allbinary/media/image/ImageUnifierCell"
require "org/allbinary/media/image/ImageUnifierProperties"
require "org/allbinary/media/image/ImageUnifierUtil"
require "org/allbinary/media/image/ImageUtil"
require "org/allbinary/media/image/ImagesRatioUtil"
require "org/allbinary/string/CommonPhoneStrings"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/image/gui/ImageIconUnique"

