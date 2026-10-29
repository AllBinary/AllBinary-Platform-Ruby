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
# package org.allbinary.input.automation.module.actions.script.condition.processors.output

# require "javax/swing"

class ImageActionScriptOutputJPanel < JPanel
    attr_accessor :logUtil, :commonStrings, :capturedImageActionScriptOutputInterface, :capturedImageActionJButton, :capturedImageActionJDialog, :displayJCheckBox, :itemTypesJList, :jLabel1, :jScrollPane1, :okJButton, :saveJCheckBox, :titleJLabel

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @capturedImageActionScriptOutputInterface = nil
        @capturedImageActionJButton = nil
        @capturedImageActionJDialog = nil
        @displayJCheckBox = nil
        @itemTypesJList = nil
        @jLabel1 = nil
        @jScrollPane1 = nil
        @okJButton = nil
        @saveJCheckBox = nil
        @titleJLabel = nil
    end
    

    def initialize(capturedImageActionScriptOutputInterface)
        super()
        initialize_fields
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        self.initComponents()
        @capturedImageActionScriptOutputInterface = capturedImageActionScriptOutputInterface
        self.set()
    end
    

    def set()
        self.setImageTypeJlistModel()
        imageTypes = @capturedImageActionScriptOutputInterface.getImageTypes()
        vector = imageTypes.getVector()
        selectedArray = Array.new(vector.size(), 0)
        size = vector.size()
        (0...size).each do |index|
            imageType = vector.get(index)
            selectedArray[((index += 1) - 1)] = imageType.getIndex()
        end
        @itemTypesJList.setSelectedIndices(selectedArray)
        if @capturedImageActionScriptOutputInterface.isSaved()
            @saveJCheckBox.setSelected(true)
        end
        if @capturedImageActionScriptOutputInterface.isSaved()
            @displayJCheckBox.setSelected(true)
        end
        @capturedImageActionScriptOutputInterface.log()
    end
    

    def update()
        anyType = @itemTypesJList.getSelectedValues()
        imageTypes = ImageTypes.valueOf(anyType)
        @capturedImageActionScriptOutputInterface.setImageTypes(imageTypes)
        if @saveJCheckBox.isSelected()
            @capturedImageActionScriptOutputInterface.setSaved(true)
        else
            @capturedImageActionScriptOutputInterface.setSaved(false)
        end
        if @displayJCheckBox.isSelected()
            @capturedImageActionScriptOutputInterface.setDisplay(true)
        else
            @capturedImageActionScriptOutputInterface.setDisplay(false)
        end
        @capturedImageActionScriptOutputInterface.log()
    end
    

    def setImageTypeJlistModel()
        defaultListModel = DefaultListModel.new()
        vector = InputImageType.getAllAsVector()
        size = vector.size()
        (0...size).each do |index|
            imageType = vector.get(index)
            defaultListModel.addElement(imageType.getName())
        end
        @itemTypesJList.setModel(defaultListModel)
    end
    

    def getCapturedImageActionJDialog()
        return @capturedImageActionJDialog
    end
    

    def setCapturedImageActionJDialog(capturedImageActionJDialog)
        @capturedImageActionJDialog = capturedImageActionJDialog
    end
    

    def initComponents()
        @capturedImageActionJDialog = JDialog.new()
        @titleJLabel = JLabel.new()
        @okJButton = JButton.new()
        @saveJCheckBox = JCheckBox.new()
        @displayJCheckBox = JCheckBox.new()
        @jScrollPane1 = JScrollPane.new()
        @itemTypesJList = JList.new()
        @capturedImageActionJButton = JButton.new()
        @jLabel1 = JLabel.new()
        @capturedImageActionJDialog.setMinimumSize(Dimension.new(250, 250))
        @titleJLabel.setText("Image Output Options")
        @okJButton.setText("OK")
        @okJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                okJButtonActionPerformed(evt)
            end
        end.new())
        @saveJCheckBox.setText("Save To File")
        @saveJCheckBox.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0))
        @saveJCheckBox.setMargin(Insets.new(0, 0, 0, 0))
        @displayJCheckBox.setText("Display")
        @displayJCheckBox.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0))
        @displayJCheckBox.setMargin(Insets.new(0, 0, 0, 0))
        @displayJCheckBox.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                displayJCheckBoxActionPerformed(evt)
            end
        end.new())
        @itemTypesJList.setModel(Class.new(AbstractListModel.is_a?(Class) ? AbstractListModel : Object) do
            include(AbstractListModel) unless AbstractListModel.is_a?(Class)
            @strings = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]
            

            def getSize()
                return strings.length
            end
            

            def getElementAt(i)
                return strings[i]
            end
        end.new())
        @jScrollPane1.setViewportView(@itemTypesJList)
        capturedImageActionJDialogLayout = GroupLayout.new(@capturedImageActionJDialog.getContentPane())
        @capturedImageActionJDialog.getContentPane().setLayout(capturedImageActionJDialogLayout)
        capturedImageActionJDialogLayout.setHorizontalGroup(capturedImageActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(capturedImageActionJDialogLayout.createSequentialGroup().addGroup(capturedImageActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(capturedImageActionJDialogLayout.createSequentialGroup().addGap(61, 61, 61).addComponent(@titleJLabel)).addGroup(capturedImageActionJDialogLayout.createSequentialGroup().addContainerGap().addGroup(capturedImageActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(capturedImageActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addComponent(@displayJCheckBox).addComponent(@saveJCheckBox, javax.swing.GroupLayout.Alignment.TRAILING)).addGroup(capturedImageActionJDialogLayout.createSequentialGroup().addGap(84, 84, 84).addComponent(@okJButton)))).addGroup(capturedImageActionJDialogLayout.createSequentialGroup().addContainerGap().addComponent(@jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 216, 32767))).addContainerGap()))
        capturedImageActionJDialogLayout.setVerticalGroup(capturedImageActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(capturedImageActionJDialogLayout.createSequentialGroup().addComponent(@titleJLabel).addGap(5, 5, 5).addComponent(@jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 105, 32767).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@saveJCheckBox).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@displayJCheckBox).addGap(9, 9, 9).addComponent(@okJButton).addContainerGap()))
        setMinimumSize(Dimension.new(100, 0))
        @capturedImageActionJButton.setText("Edit")
        @capturedImageActionJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                capturedImageActionJButtonActionPerformed(evt)
            end
        end.new())
        @jLabel1.setText("Capture Image:")
        layout = GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(@jLabel1).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, 32767).addComponent(@capturedImageActionJButton)))
        layout.setVerticalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@jLabel1).addComponent(@capturedImageActionJButton)))
    end
    

    def displayJCheckBoxActionPerformed(evt)
    end
    

    def okJButtonActionPerformed(evt)
        self.update()
        self.getCapturedImageActionJDialog().setVisible(false)
    end
    

    def capturedImageActionJButtonActionPerformed(evt)
        self.getCapturedImageActionJDialog().setVisible(true)
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/input/media/image/InputImageType"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageActionScriptOutputInterface"
require "org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageTypes"

