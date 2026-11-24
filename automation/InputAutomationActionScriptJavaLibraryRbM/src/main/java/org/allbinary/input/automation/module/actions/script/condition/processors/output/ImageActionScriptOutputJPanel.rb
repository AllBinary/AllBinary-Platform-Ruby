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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
# require "javax/swing/DefaultListModel"
# require "java/awt/Dimension"
# require "java/awt/Insets"
# require "java/awt/event/ActionEvent"
# require "java/awt/event/ActionListener"
# require "javax/swing/AbstractListModel"
# require "javax/swing/BorderFactory"
# require "javax/swing/GroupLayout"
# require "javax/swing/JButton"
# require "javax/swing/JCheckBox"
# require "javax/swing/JDialog"
# require "javax/swing/JLabel"
# require "javax/swing/JList"
# require "javax/swing/JPanel"
# require "javax/swing/JScrollPane"
# require "javax/swing/LayoutStyle"

module ::Org; module Allbinary; module Input; module Automation; module ModulePackage; module Actions; module Script; module Condition; module Processors; module Output

class ImageActionScriptOutputJPanel < JPanel
    attr_accessor :logUtil, :commonStrings, :capturedImageActionScriptOutputInterface, :capturedImageActionJButton, :capturedImageActionJDialog, :displayJCheckBox, :itemTypesJList, :jLabel1, :jScrollPane1, :okJButton, :saveJCheckBox, :titleJLabel

    def jfields_org_allbinary_input_automation_module_actions_script_condition_processors_output_ImageActionScriptOutputJPanel
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @capturedImageActionScriptOutputInterface = nil unless instance_variable_defined?(:@capturedImageActionScriptOutputInterface)
        @capturedImageActionJButton = nil unless instance_variable_defined?(:@capturedImageActionJButton)
        @capturedImageActionJDialog = nil unless instance_variable_defined?(:@capturedImageActionJDialog)
        @displayJCheckBox = nil unless instance_variable_defined?(:@displayJCheckBox)
        @itemTypesJList = nil unless instance_variable_defined?(:@itemTypesJList)
        @jLabel1 = nil unless instance_variable_defined?(:@jLabel1)
        @jScrollPane1 = nil unless instance_variable_defined?(:@jScrollPane1)
        @okJButton = nil unless instance_variable_defined?(:@okJButton)
        @saveJCheckBox = nil unless instance_variable_defined?(:@saveJCheckBox)
        @titleJLabel = nil unless instance_variable_defined?(:@titleJLabel)
    end
    

    def initialize(capturedImageActionScriptOutputInterface)
        super()
        jfields_org_allbinary_input_automation_module_actions_script_condition_processors_output_ImageActionScriptOutputJPanel
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        self.initComponents()
        @capturedImageActionScriptOutputInterface = capturedImageActionScriptOutputInterface
        self.set()
    end
    

    def set()
        self.setImageTypeJlistModel()
        imageTypes = @capturedImageActionScriptOutputInterface.getImageTypes()
        vector = imageTypes.getVector()
        selectedArray = (Array.new(vector.size(), 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
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
    java_overload :set, 0
    

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
    java_overload :update, 0
    

    def setImageTypeJlistModel()
        defaultListModel = DefaultListModel.new()
        vector = ::Org::Allbinary::Input::Media::Image::InputImageType.getAllAsVector()
        size = vector.size()
        (0...size).each do |index|
            imageType = vector.get(index)
            defaultListModel.addElement(imageType.getName())
        end
        @itemTypesJList.setModel(defaultListModel)
    end
    java_overload :setImageTypeJlistModel, 0
    

    def getCapturedImageActionJDialog()
        return @capturedImageActionJDialog
    end
    java_overload :getCapturedImageActionJDialog, 0
    

    def setCapturedImageActionJDialog(capturedImageActionJDialog)
        @capturedImageActionJDialog = capturedImageActionJDialog
    end
    java_overload :setCapturedImageActionJDialog, 1
    

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
            java_overload :actionPerformed, 1
        end.new())
        @saveJCheckBox.setText("Save To File")
        @saveJCheckBox.setBorder(BorderFactory.createEmptyBorder(0, 0, 0, 0))
        @saveJCheckBox.setMargin(Insets.new(0, 0, 0, 0))
        @displayJCheckBox.setText("Display")
        @displayJCheckBox.setBorder(BorderFactory.createEmptyBorder(0, 0, 0, 0))
        @displayJCheckBox.setMargin(Insets.new(0, 0, 0, 0))
        @displayJCheckBox.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                displayJCheckBoxActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @itemTypesJList.setModel(Class.new(AbstractListModel.is_a?(Class) ? AbstractListModel : Object) do
            include(AbstractListModel) unless AbstractListModel.is_a?(Class)
            @strings = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]
            

            def getSize()
                return strings.length
            end
            java_overload :getSize, 0
            

            def getElementAt(i)
                return strings[i]
            end
            java_overload :getElementAt, 1
        end.new())
        @jScrollPane1.setViewportView(@itemTypesJList)
        capturedImageActionJDialogLayout = GroupLayout.new(@capturedImageActionJDialog.getContentPane())
        @capturedImageActionJDialog.getContentPane().setLayout(capturedImageActionJDialogLayout)
        capturedImageActionJDialogLayout.setHorizontalGroup(capturedImageActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(capturedImageActionJDialogLayout.createSequentialGroup().addGroup(capturedImageActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(capturedImageActionJDialogLayout.createSequentialGroup().addGap(61, 61, 61).addComponent(@titleJLabel)).addGroup(capturedImageActionJDialogLayout.createSequentialGroup().addContainerGap().addGroup(capturedImageActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(capturedImageActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addComponent(@displayJCheckBox).addComponent(@saveJCheckBox, GroupLayout::Alignment.TRAILING)).addGroup(capturedImageActionJDialogLayout.createSequentialGroup().addGap(84, 84, 84).addComponent(@okJButton)))).addGroup(capturedImageActionJDialogLayout.createSequentialGroup().addContainerGap().addComponent(@jScrollPane1, GroupLayout::DEFAULT_SIZE, 216, 32767))).addContainerGap()))
        capturedImageActionJDialogLayout.setVerticalGroup(capturedImageActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(capturedImageActionJDialogLayout.createSequentialGroup().addComponent(@titleJLabel).addGap(5, 5, 5).addComponent(@jScrollPane1, GroupLayout::DEFAULT_SIZE, 105, 32767).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@saveJCheckBox).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@displayJCheckBox).addGap(9, 9, 9).addComponent(@okJButton).addContainerGap()))
        setMinimumSize(Dimension.new(100, 0))
        @capturedImageActionJButton.setText("Edit")
        @capturedImageActionJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                capturedImageActionJButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @jLabel1.setText("Capture Image:")
        layout = GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(@jLabel1).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED, GroupLayout::DEFAULT_SIZE, 32767).addComponent(@capturedImageActionJButton)))
        layout.setVerticalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@jLabel1).addComponent(@capturedImageActionJButton)))
    end
    java_overload :initComponents, 0
    

    def displayJCheckBoxActionPerformed(evt)
    end
    java_overload :displayJCheckBoxActionPerformed, 1
    

    def okJButtonActionPerformed(evt)
        self.update()
        self.getCapturedImageActionJDialog().setVisible(false)
    end
    java_overload :okJButtonActionPerformed, 1
    

    def capturedImageActionJButtonActionPerformed(evt)
        self.getCapturedImageActionJDialog().setVisible(true)
    end
    java_overload :capturedImageActionJButtonActionPerformed, 1
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Input; module Media; module Image; autoload :InputImageType, "org/allbinary/input/media/image/InputImageType" unless const_defined?(:InputImageType, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :ImageActionScriptOutputInterface, "org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageActionScriptOutputInterface" unless const_defined?(:ImageActionScriptOutputInterface, false)
autoload :ImageTypes, "org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageTypes" unless const_defined?(:ImageTypes, false)

end; end; end; end; end; end; end; end; end; end

