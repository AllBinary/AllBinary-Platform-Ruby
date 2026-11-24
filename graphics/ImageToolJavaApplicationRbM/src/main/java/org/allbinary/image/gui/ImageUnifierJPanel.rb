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
# require "java/awt/image/BufferedImage"
# require "java/io/File"
# require "javax/swing/DefaultListModel"
# require "javax/swing/ImageIcon"
# require "javax/swing/Icon"
require "org/allbinary/media/image/ImageProcessorInputCompositeInterface"
# require "java/awt/Dimension"
# require "java/awt/event/ActionEvent"
# require "java/awt/event/ActionListener"
# require "java/awt/event/KeyAdapter"
# require "java/awt/event/KeyEvent"
# require "java/beans/PropertyChangeEvent"
# require "java/beans/PropertyChangeListener"
# require "javax/swing/GroupLayout"
# require "javax/swing/JButton"
# require "javax/swing/JLabel"
# require "javax/swing/JList"
# require "javax/swing/JPanel"
# require "javax/swing/JScrollPane"
# require "javax/swing/JTextField"
# require "javax/swing/LayoutStyle"

module ::Org; module Allbinary; module Image; module Gui

class ImageUnifierJPanel < JPanel
    include ::Org::Allbinary::Media::Image::ImageProcessorInputCompositeInterface
    attr_accessor :logUtil, :commonStrings, :imageStrings, :imagesRatioUtil, :imageProcessorInput, :icon, :imageUnifierProperties, :result, :isImageFillIn, :avgRatioJTextField, :cellHeightJTextField, :cellRatioJTextField, :cellWidthJTextField, :columnsJTextField, :downJButton, :fudgeItJButton, :imageJList, :jButton1, :jButton2, :jButtonOrder, :jLabel1, :jLabel2, :jLabel3, :jLabel4, :jLabel5, :jLabel6, :jPanel1, :jScrollPane1, :jScrollPane2, :rowsJTextField, :upJButton

    def jfields_org_allbinary_image_gui_ImageUnifierJPanel
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @imageStrings = ::Org::Allbinary::Media::Image::ImageStrings.getInstance()
        @imagesRatioUtil = ::Org::Allbinary::Media::Image::ImagesRatioUtil.getInstance()
        @imageProcessorInput = nil unless instance_variable_defined?(:@imageProcessorInput)
        @icon = nil unless instance_variable_defined?(:@icon)
        @imageUnifierProperties = nil unless instance_variable_defined?(:@imageUnifierProperties)
        @result = nil unless instance_variable_defined?(:@result)
        @isImageFillIn = true
        @avgRatioJTextField = nil unless instance_variable_defined?(:@avgRatioJTextField)
        @cellHeightJTextField = nil unless instance_variable_defined?(:@cellHeightJTextField)
        @cellRatioJTextField = nil unless instance_variable_defined?(:@cellRatioJTextField)
        @cellWidthJTextField = nil unless instance_variable_defined?(:@cellWidthJTextField)
        @columnsJTextField = nil unless instance_variable_defined?(:@columnsJTextField)
        @downJButton = nil unless instance_variable_defined?(:@downJButton)
        @fudgeItJButton = nil unless instance_variable_defined?(:@fudgeItJButton)
        @imageJList = nil unless instance_variable_defined?(:@imageJList)
        @jButton1 = nil unless instance_variable_defined?(:@jButton1)
        @jButton2 = nil unless instance_variable_defined?(:@jButton2)
        @jButtonOrder = nil unless instance_variable_defined?(:@jButtonOrder)
        @jLabel1 = nil unless instance_variable_defined?(:@jLabel1)
        @jLabel2 = nil unless instance_variable_defined?(:@jLabel2)
        @jLabel3 = nil unless instance_variable_defined?(:@jLabel3)
        @jLabel4 = nil unless instance_variable_defined?(:@jLabel4)
        @jLabel5 = nil unless instance_variable_defined?(:@jLabel5)
        @jLabel6 = nil unless instance_variable_defined?(:@jLabel6)
        @jPanel1 = nil unless instance_variable_defined?(:@jPanel1)
        @jScrollPane1 = nil unless instance_variable_defined?(:@jScrollPane1)
        @jScrollPane2 = nil unless instance_variable_defined?(:@jScrollPane2)
        @rowsJTextField = nil unless instance_variable_defined?(:@rowsJTextField)
        @upJButton = nil unless instance_variable_defined?(:@upJButton)
    end
    

    def initialize(imageProcessorInput)
        super()
        jfields_org_allbinary_image_gui_ImageUnifierJPanel
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
                iconBufferedImage = ::Org::Allbinary::Media::Image::ImageUtil.getInstance().createBufferedImage(bufferedImageArray[index], newWidth, newHeight, true)
                @icon[index] = ImageIconUnique.new(iconBufferedImage, index)
                defaultListModel.addElement(@icon[index])
            end
            @imageJList.setModel(defaultListModel)
            self.updateOnPropertiesChange()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.INIT, e)
        end
    end
    java_overload :init, 0
    

    def updateImage_j0()
        begin
            bufferedImageArray = self.getImageProcessorInput().getBufferedImageArray()
            tempBufferedImageArray = Array.new(bufferedImageArray.length, nil)
            (0...bufferedImageArray.length).each do |index|
                indexedImageIcon = @imageJList.getModel().getElementAt(index)
                bufferedImage = ::Org::Allbinary::Media::Image::ImageUtil.getInstance().createBufferedImage(bufferedImageArray[indexedImageIcon.getId()], @imageUnifierProperties.getImageUnifierCell().getWidth(), @imageUnifierProperties.getImageUnifierCell().getHeight(), false)
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
                bufferedImage = ::Org::Allbinary::Media::Image::ImageUtil.getInstance().createBufferedImage(bufferedImageArray[indexedImageIcon.getId()], @imageUnifierProperties.getImageUnifierCell().getWidth(), @imageUnifierProperties.getImageUnifierCell().getHeight(), false)
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
    java_overload :updateImageWithFudgedImages, 0
    

    def updateImage_j1(tempBufferedImageArray)
        @result = ::Org::Allbinary::Media::Image::ImageUnifierUtil.getInstance().getImage(tempBufferedImageArray, @imageUnifierProperties)
        image = ImageIcon.new(@result)
        label = JLabel.new(image)
        @jScrollPane2.getViewport().add(label)
        self.updateUI()
    end

    def updateImage(*java_overload_args)
        return updateImage_j0(*java_overload_args) if java_overload_args.length == 0
        return updateImage_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method updateImage takes #{java_overload_args.length} arguments"
    end
    

    def updateOnPropertiesChange()
        if @rowsJTextField.getText().length() > 0 && @columnsJTextField.getText().length() > 0 && @cellWidthJTextField.getText().length() > 0 && @cellHeightJTextField.getText().length() > 0
            @imageUnifierProperties = ::Org::Allbinary::Media::Image::ImageUnifierProperties.new()
            @imageUnifierProperties.setRows(@rowsJTextField.getText())
            @imageUnifierProperties.setColumns(@columnsJTextField.getText())
            imageUnifierCell = ::Org::Allbinary::Media::Image::ImageUnifierCell.new(@cellWidthJTextField.getText(), @cellHeightJTextField.getText())
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
    java_overload :updateOnPropertiesChange, 0
    

    def initComponents()
        commonPhoneStrings = ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance()
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
            java_overload :actionPerformed, 1
        end.new())
        @upJButton.setText("Up")
        @upJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                upJButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @downJButton.setText("Down")
        @downJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                downJButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @fudgeItJButton.setText("Fudge It!")
        @fudgeItJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                fudgeItJButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @jLabel2.setText("Columns:")
        @columnsJTextField.setText(commonPhoneStrings.TWO)
        @columnsJTextField.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                columnsJTextFieldActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @columnsJTextField.addPropertyChangeListener(Class.new(PropertyChangeListener.is_a?(Class) ? PropertyChangeListener : Object) do
            include(PropertyChangeListener) unless PropertyChangeListener.is_a?(Class)
            

            def propertyChange(evt)
                columnsJTextFieldPropertyChange(evt)
            end
            java_overload :propertyChange, 1
        end.new())
        @columnsJTextField.addKeyListener(Class.new(KeyAdapter.is_a?(Class) ? KeyAdapter : Object) do
            include(KeyAdapter) unless KeyAdapter.is_a?(Class)
            

            def keyPressed(evt)
                columnsJTextFieldKeyPressed(evt)
            end
            java_overload :keyPressed, 1
            

            def keyTyped(evt)
                columnsJTextFieldKeyTyped(evt)
            end
            java_overload :keyTyped, 1
        end.new())
        @jLabel1.setText("Rows:")
        @rowsJTextField.setText(commonPhoneStrings.TWO)
        @rowsJTextField.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                rowsJTextFieldActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @jLabel3.setText("Cell Width:")
        @cellWidthJTextField.setText("200")
        @cellWidthJTextField.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                cellWidthJTextFieldActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @jLabel4.setText("Cell Height:")
        @cellHeightJTextField.setText("150")
        @cellHeightJTextField.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                cellHeightJTextFieldActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
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
            java_overload :actionPerformed, 1
        end.new())
        @jButtonOrder.setText("Order")
        @jButtonOrder.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                jButtonOrderActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        jPanel1Layout = GroupLayout.new(@jPanel1)
        @jPanel1.setLayout(jPanel1Layout)
        jPanel1Layout.setHorizontalGroup(jPanel1Layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(GroupLayout::Alignment.TRAILING, jPanel1Layout.createSequentialGroup().addContainerGap().addGroup(jPanel1Layout.createParallelGroup(GroupLayout::Alignment.TRAILING).addComponent(@jButton1, GroupLayout::DEFAULT_SIZE, 151, 32767).addGroup(jPanel1Layout.createSequentialGroup().addComponent(@upJButton, GroupLayout::PREFERRED_SIZE, 71, GroupLayout::PREFERRED_SIZE).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED, 10, 32767).addComponent(@downJButton, GroupLayout::PREFERRED_SIZE, 70, GroupLayout::PREFERRED_SIZE)).addComponent(@fudgeItJButton, GroupLayout::Alignment.LEADING, GroupLayout::DEFAULT_SIZE, 151, 32767).addGroup(GroupLayout::Alignment.LEADING, jPanel1Layout.createSequentialGroup().addComponent(@jLabel3).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED, 99, GroupLayout::PREFERRED_SIZE)).addGroup(GroupLayout::Alignment.LEADING, jPanel1Layout.createSequentialGroup().addComponent(@jLabel4).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED, 96, GroupLayout::PREFERRED_SIZE)).addComponent(@avgRatioJTextField, GroupLayout::Alignment.LEADING, GroupLayout::DEFAULT_SIZE, 151, 32767).addComponent(@jLabel6, GroupLayout::Alignment.LEADING, GroupLayout::DEFAULT_SIZE, 151, 32767).addComponent(@cellRatioJTextField, GroupLayout::Alignment.LEADING, GroupLayout::DEFAULT_SIZE, 151, 32767).addComponent(@jLabel5, GroupLayout::Alignment.LEADING, GroupLayout::DEFAULT_SIZE, 151, 32767).addComponent(@cellHeightJTextField, GroupLayout::Alignment.LEADING, GroupLayout::DEFAULT_SIZE, 151, 32767).addComponent(@cellWidthJTextField, GroupLayout::Alignment.LEADING, GroupLayout::DEFAULT_SIZE, 151, 32767).addComponent(@jButton2, GroupLayout::Alignment.LEADING, GroupLayout::DEFAULT_SIZE, 151, 32767).addGroup(GroupLayout::Alignment.LEADING, jPanel1Layout.createSequentialGroup().addGroup(jPanel1Layout.createParallelGroup(GroupLayout::Alignment.LEADING).addComponent(@jLabel2).addComponent(@jLabel1)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(jPanel1Layout.createParallelGroup(GroupLayout::Alignment.LEADING).addComponent(@rowsJTextField, GroupLayout::DEFAULT_SIZE, 103, 32767).addGroup(jPanel1Layout.createSequentialGroup().addComponent(@columnsJTextField, GroupLayout::DEFAULT_SIZE, 102, 32767).addGap(1, 1, 1)))).addComponent(@jButtonOrder, GroupLayout::DEFAULT_SIZE, 151, 32767)).addContainerGap()))
        jPanel1Layout.setVerticalGroup(jPanel1Layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(jPanel1Layout.createSequentialGroup().addContainerGap().addComponent(@jButton1).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(jPanel1Layout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@upJButton).addComponent(@downJButton)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@jButtonOrder).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@fudgeItJButton).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(jPanel1Layout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@jLabel2).addComponent(@columnsJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(jPanel1Layout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@jLabel1).addComponent(@rowsJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@jLabel3).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@cellWidthJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@jLabel4).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@cellHeightJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@jButton2).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@jLabel5).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED, GroupLayout::DEFAULT_SIZE, 32767).addComponent(@cellRatioJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE).addGap(7, 7, 7).addComponent(@jLabel6).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@avgRatioJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE).addGap(66, 66, 66)))
        layout = GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(@jScrollPane1, GroupLayout::PREFERRED_SIZE, 84, GroupLayout::PREFERRED_SIZE).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@jPanel1, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@jScrollPane2, GroupLayout::DEFAULT_SIZE, 527, 32767)))
        layout.setVerticalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(GroupLayout::Alignment.TRAILING, layout.createSequentialGroup().addGroup(layout.createParallelGroup(GroupLayout::Alignment.TRAILING).addComponent(@jPanel1, GroupLayout::Alignment.LEADING, 0, 445, 32767).addComponent(@jScrollPane2, GroupLayout::Alignment.LEADING, GroupLayout::DEFAULT_SIZE, 445, 32767).addComponent(@jScrollPane1, GroupLayout::Alignment.LEADING, GroupLayout::DEFAULT_SIZE, 445, 32767)).addContainerGap()))
    end
    java_overload :initComponents, 0
    

    def jButton2ActionPerformed(evt)
        self.updateOnPropertiesChange()
    end
    java_overload :jButton2ActionPerformed, 1
    

    def columnsJTextFieldKeyPressed(evt)
    end
    java_overload :columnsJTextFieldKeyPressed, 1
    

    def columnsJTextFieldKeyTyped(evt)
    end
    java_overload :columnsJTextFieldKeyTyped, 1
    

    def columnsJTextFieldPropertyChange(evt)
    end
    java_overload :columnsJTextFieldPropertyChange, 1
    

    def fudgeItJButtonActionPerformed(evt)
        self.updateImageWithFudgedImages()
    end
    java_overload :fudgeItJButtonActionPerformed, 1
    

    def cellHeightJTextFieldActionPerformed(evt)
        self.updateOnPropertiesChange()
    end
    java_overload :cellHeightJTextFieldActionPerformed, 1
    

    def cellWidthJTextFieldActionPerformed(evt)
        self.updateOnPropertiesChange()
    end
    java_overload :cellWidthJTextFieldActionPerformed, 1
    

    def columnsJTextFieldActionPerformed(evt)
        self.updateOnPropertiesChange()
    end
    java_overload :columnsJTextFieldActionPerformed, 1
    

    def rowsJTextFieldActionPerformed(evt)
        self.updateOnPropertiesChange()
    end
    java_overload :rowsJTextFieldActionPerformed, 1
    

    def jButton1ActionPerformed(evt)
        begin
            fileArray = @imageProcessorInput.getFiles()
            file = fileArray[0]
            filePath = file.getAbsolutePath()
            extensionIndex = (filePath.index(@imageStrings.PNG_EXTENSION) || -1)
            filePath = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(filePath[0...extensionIndex]).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().UNDERSCORE).appendint(((@imageUnifierProperties.getColumns()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).append("_By_").appendint(((@imageUnifierProperties.getRows()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).append("_Unified").append(@imageStrings.PNG_EXTENSION).to_s
            @logUtil.putF("New File Path: " + filePath, self, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
            outputFile = File.new(filePath)
            ::Org::Allbinary::Media::Image::ImagePersistanceUtil.getInstance().saveWithBatik(::Org::Allbinary::Logic::Io::FilePackage::FileWrapperUtil.wrapFile(outputFile), @result)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "jButton1ActionPerformed", e)
        end
    end
    java_overload :jButton1ActionPerformed, 1
    

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
    java_overload :downJButtonActionPerformed, 1
    

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
    java_overload :upJButtonActionPerformed, 1
    

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
    java_overload :jButtonOrderActionPerformed, 1
    

    def getImageProcessorInput()
        return @imageProcessorInput
    end
    java_overload :getImageProcessorInput, 0
    

    def setImageProcessorInput(imageProcessorInput)
        @imageProcessorInput = imageProcessorInput
        self.init()
    end
    java_overload :setImageProcessorInput, 1
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :FileWrapperUtil, "org/allbinary/logic/io/file/FileWrapperUtil" unless const_defined?(:FileWrapperUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImagePersistanceUtil, "org/allbinary/media/image/ImagePersistanceUtil" unless const_defined?(:ImagePersistanceUtil, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageProcessorInput, "org/allbinary/media/image/ImageProcessorInput" unless const_defined?(:ImageProcessorInput, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageStrings, "org/allbinary/media/image/ImageStrings" unless const_defined?(:ImageStrings, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageUnifierCell, "org/allbinary/media/image/ImageUnifierCell" unless const_defined?(:ImageUnifierCell, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageUnifierProperties, "org/allbinary/media/image/ImageUnifierProperties" unless const_defined?(:ImageUnifierProperties, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageUnifierUtil, "org/allbinary/media/image/ImageUnifierUtil" unless const_defined?(:ImageUnifierUtil, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageUtil, "org/allbinary/media/image/ImageUtil" unless const_defined?(:ImageUtil, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImagesRatioUtil, "org/allbinary/media/image/ImagesRatioUtil" unless const_defined?(:ImagesRatioUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonPhoneStrings, "org/allbinary/string/CommonPhoneStrings" unless const_defined?(:CommonPhoneStrings, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :ImageIconUnique, "org/allbinary/image/gui/ImageIconUnique" unless const_defined?(:ImageIconUnique, false)

end; end; end; end

