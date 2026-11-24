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
# package org.allbinary.input.automation.actions.script.condition

require "java/lang/JavaOverload"
# require "java/awt/Dimension"
# require "java/awt/event/ActionEvent"
# require "java/awt/event/ActionListener"
# require "javax/swing/GroupLayout"
# require "javax/swing/JButton"
# require "javax/swing/JDialog"
# require "javax/swing/JLabel"
# require "javax/swing/JPanel"
# require "javax/swing/JTextField"
# require "javax/swing/LayoutStyle"

module ::Org; module Allbinary; module Input; module Automation; module Actions; module Script; module Condition

class ColorAtActionScriptConditionJPanel < JPanel
    attr_accessor :logUtil, :commonStrings, :colorAtActionScriptConditionInterface, :blueJLabel, :colorAtActionJButton, :colorAtActionJDialog, :colorAtXJTextField, :colorAtYJTextField, :colorRangeJLabel, :greenJLabel, :jLabel1, :locationJLabel, :maxBlueJTextField, :maxGreenJTextField, :maxJLabel, :maxRedJTextField, :minBlueJTextField, :minGreenJTextField, :minJLabel, :minRedJTextField, :okJButton, :redJLabel, :titleJLabel, :xJLabel, :yJLabel

    def jfields_org_allbinary_input_automation_actions_script_condition_ColorAtActionScriptConditionJPanel
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @colorAtActionScriptConditionInterface = nil unless instance_variable_defined?(:@colorAtActionScriptConditionInterface)
        @blueJLabel = nil unless instance_variable_defined?(:@blueJLabel)
        @colorAtActionJButton = nil unless instance_variable_defined?(:@colorAtActionJButton)
        @colorAtActionJDialog = nil unless instance_variable_defined?(:@colorAtActionJDialog)
        @colorAtXJTextField = nil unless instance_variable_defined?(:@colorAtXJTextField)
        @colorAtYJTextField = nil unless instance_variable_defined?(:@colorAtYJTextField)
        @colorRangeJLabel = nil unless instance_variable_defined?(:@colorRangeJLabel)
        @greenJLabel = nil unless instance_variable_defined?(:@greenJLabel)
        @jLabel1 = nil unless instance_variable_defined?(:@jLabel1)
        @locationJLabel = nil unless instance_variable_defined?(:@locationJLabel)
        @maxBlueJTextField = nil unless instance_variable_defined?(:@maxBlueJTextField)
        @maxGreenJTextField = nil unless instance_variable_defined?(:@maxGreenJTextField)
        @maxJLabel = nil unless instance_variable_defined?(:@maxJLabel)
        @maxRedJTextField = nil unless instance_variable_defined?(:@maxRedJTextField)
        @minBlueJTextField = nil unless instance_variable_defined?(:@minBlueJTextField)
        @minGreenJTextField = nil unless instance_variable_defined?(:@minGreenJTextField)
        @minJLabel = nil unless instance_variable_defined?(:@minJLabel)
        @minRedJTextField = nil unless instance_variable_defined?(:@minRedJTextField)
        @okJButton = nil unless instance_variable_defined?(:@okJButton)
        @redJLabel = nil unless instance_variable_defined?(:@redJLabel)
        @titleJLabel = nil unless instance_variable_defined?(:@titleJLabel)
        @xJLabel = nil unless instance_variable_defined?(:@xJLabel)
        @yJLabel = nil unless instance_variable_defined?(:@yJLabel)
    end
    

    def initialize(colorAtActionScriptConditionInterface)
        super()
        jfields_org_allbinary_input_automation_actions_script_condition_ColorAtActionScriptConditionJPanel
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        self.initComponents()
        @colorAtActionScriptConditionInterface = colorAtActionScriptConditionInterface
        self.set()
    end
    

    def set()
        colorRangeInterface = @colorAtActionScriptConditionInterface.getColorRangeInterface()
        self.getMinRedJTextField().setText((colorRangeInterface.getMinRed()).to_s)
        self.getMaxRedJTextField().setText((colorRangeInterface.getMaxRed()).to_s)
        self.getMinGreenJTextField().setText((colorRangeInterface.getMinGreen()).to_s)
        self.getMaxGreenJTextField().setText((colorRangeInterface.getMaxGreen()).to_s)
        self.getMinBlueJTextField().setText((colorRangeInterface.getMinBlue()).to_s)
        self.getMaxBlueJTextField().setText((colorRangeInterface.getMaxBlue()).to_s)
        self.getColorAtXJTextField().setText((@colorAtActionScriptConditionInterface.getPoint().x).to_s)
        self.getColorAtYJTextField().setText((@colorAtActionScriptConditionInterface.getPoint().y).to_s)
        @colorAtActionScriptConditionInterface.log()
    end
    java_overload :set, 0
    

    def update()
        colorRangeInterface = @colorAtActionScriptConditionInterface.getColorRangeInterface()
        colorRangeInterface.setMinRed((self.getMinRedJTextField().getText()).to_s.to_i)
        colorRangeInterface.setMaxRed((self.getMaxRedJTextField().getText()).to_s.to_i)
        colorRangeInterface.setMinGreen((self.getMinGreenJTextField().getText()).to_s.to_i)
        colorRangeInterface.setMaxGreen((self.getMaxGreenJTextField().getText()).to_s.to_i)
        colorRangeInterface.setMinBlue((self.getMinBlueJTextField().getText()).to_s.to_i)
        colorRangeInterface.setMaxBlue((self.getMaxBlueJTextField().getText()).to_s.to_i)
        xString = self.getColorAtXJTextField().getText()
        if !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(xString) && ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isNumber(xString)
            @colorAtActionScriptConditionInterface.getPoint().x = Integer(xString)
        end
        yString = self.getColorAtYJTextField().getText()
        if !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(yString) && ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isNumber(yString)
            @colorAtActionScriptConditionInterface.getPoint().y = Integer(xString)
        end
        @colorAtActionScriptConditionInterface.log()
    end
    java_overload :update, 0
    

    def getColorAtXJTextField()
        return @colorAtXJTextField
    end
    java_overload :getColorAtXJTextField, 0
    

    def setColorAtXJTextField(colorAtXJTextField)
        @colorAtXJTextField = colorAtXJTextField
    end
    java_overload :setColorAtXJTextField, 1
    

    def getColorAtYJTextField()
        return @colorAtYJTextField
    end
    java_overload :getColorAtYJTextField, 0
    

    def setColorAtYJTextField(colorAtYJTextField)
        @colorAtYJTextField = colorAtYJTextField
    end
    java_overload :setColorAtYJTextField, 1
    

    def getMaxBlueJTextField()
        return @maxBlueJTextField
    end
    java_overload :getMaxBlueJTextField, 0
    

    def setMaxBlueJTextField(maxBlueJTextField)
        @maxBlueJTextField = maxBlueJTextField
    end
    java_overload :setMaxBlueJTextField, 1
    

    def getMaxGreenJTextField()
        return @maxGreenJTextField
    end
    java_overload :getMaxGreenJTextField, 0
    

    def setMaxGreenJTextField(maxGreenJTextField)
        @maxGreenJTextField = maxGreenJTextField
    end
    java_overload :setMaxGreenJTextField, 1
    

    def getMaxRedJTextField()
        return @maxRedJTextField
    end
    java_overload :getMaxRedJTextField, 0
    

    def setMaxRedJTextField(maxRedJTextField)
        @maxRedJTextField = maxRedJTextField
    end
    java_overload :setMaxRedJTextField, 1
    

    def getMinBlueJTextField()
        return @minBlueJTextField
    end
    java_overload :getMinBlueJTextField, 0
    

    def setMinBlueJTextField(minBlueJTextField)
        @minBlueJTextField = minBlueJTextField
    end
    java_overload :setMinBlueJTextField, 1
    

    def getMinGreenJTextField()
        return @minGreenJTextField
    end
    java_overload :getMinGreenJTextField, 0
    

    def setMinGreenJTextField(minGreenJTextField)
        @minGreenJTextField = minGreenJTextField
    end
    java_overload :setMinGreenJTextField, 1
    

    def getMinRedJTextField()
        return @minRedJTextField
    end
    java_overload :getMinRedJTextField, 0
    

    def setMinRedJTextField(minRedJTextField)
        @minRedJTextField = minRedJTextField
    end
    java_overload :setMinRedJTextField, 1
    

    def getYJLabel()
        return @yJLabel
    end
    java_overload :getYJLabel, 0
    

    def setYJLabel(yJLabel)
        @yJLabel = yJLabel
    end
    java_overload :setYJLabel, 1
    

    def getColorAtActionJDialog()
        return @colorAtActionJDialog
    end
    java_overload :getColorAtActionJDialog, 0
    

    def setColorAtActionJDialog(colorAtActionJDialog)
        @colorAtActionJDialog = colorAtActionJDialog
    end
    java_overload :setColorAtActionJDialog, 1
    

    def initComponents()
        @colorAtActionJDialog = JDialog.new()
        @titleJLabel = JLabel.new()
        @locationJLabel = JLabel.new()
        @colorAtXJTextField = JTextField.new()
        @xJLabel = JLabel.new()
        @yJLabel = JLabel.new()
        @colorAtYJTextField = JTextField.new()
        @colorRangeJLabel = JLabel.new()
        @redJLabel = JLabel.new()
        @minJLabel = JLabel.new()
        @maxJLabel = JLabel.new()
        @greenJLabel = JLabel.new()
        @blueJLabel = JLabel.new()
        @minRedJTextField = JTextField.new()
        @maxRedJTextField = JTextField.new()
        @maxGreenJTextField = JTextField.new()
        @minBlueJTextField = JTextField.new()
        @maxBlueJTextField = JTextField.new()
        @okJButton = JButton.new()
        @minGreenJTextField = JTextField.new()
        @colorAtActionJButton = JButton.new()
        @jLabel1 = JLabel.new()
        @colorAtActionJDialog.setMinimumSize(Dimension.new(350, 250))
        @titleJLabel.setText("              Color At Action Options            ")
        @locationJLabel.setText("Location:")
        @xJLabel.setText("X:")
        @yJLabel.setText("Y:")
        @colorRangeJLabel.setText("Color Range")
        @redJLabel.setText("Red:")
        @minJLabel.setText("Minimum")
        @maxJLabel.setText("Maximum")
        @greenJLabel.setText("Green:")
        @blueJLabel.setText("Blue:")
        @okJButton.setText("OK")
        @okJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                okJButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        colorAtActionJDialogLayout = GroupLayout.new(@colorAtActionJDialog.getContentPane())
        @colorAtActionJDialog.getContentPane().setLayout(colorAtActionJDialogLayout)
        colorAtActionJDialogLayout.setHorizontalGroup(colorAtActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(colorAtActionJDialogLayout.createSequentialGroup().addContainerGap().addGroup(colorAtActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(colorAtActionJDialogLayout.createSequentialGroup().addGroup(colorAtActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.TRAILING).addComponent(@okJButton).addGroup(colorAtActionJDialogLayout.createSequentialGroup().addGroup(colorAtActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING, false).addGroup(colorAtActionJDialogLayout.createSequentialGroup().addGroup(colorAtActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addComponent(@blueJLabel).addComponent(@greenJLabel).addComponent(@redJLabel).addComponent(@colorRangeJLabel)).addGap(29, 29, 29)).addGroup(GroupLayout::Alignment.TRAILING, colorAtActionJDialogLayout.createSequentialGroup().addComponent(@locationJLabel).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED, GroupLayout::DEFAULT_SIZE, 32767).addComponent(@xJLabel).addGap(18, 18, 18))).addGroup(colorAtActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addComponent(@minBlueJTextField, GroupLayout::DEFAULT_SIZE, 40, 32767).addComponent(@minGreenJTextField, GroupLayout::DEFAULT_SIZE, 40, 32767).addComponent(@minJLabel, GroupLayout::Alignment.TRAILING, GroupLayout::DEFAULT_SIZE, GroupLayout::DEFAULT_SIZE, 32767).addComponent(@minRedJTextField, GroupLayout::DEFAULT_SIZE, 40, 32767).addComponent(@colorAtXJTextField, GroupLayout::DEFAULT_SIZE, 40, 32767)).addGap(16, 16, 16))).addGap(6, 6, 6).addComponent(@yJLabel).addGap(24, 24, 24).addGroup(colorAtActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.TRAILING).addComponent(@maxJLabel, GroupLayout::Alignment.LEADING, GroupLayout::DEFAULT_SIZE, GroupLayout::DEFAULT_SIZE, 32767).addGroup(GroupLayout::Alignment.LEADING, colorAtActionJDialogLayout.createSequentialGroup().addGap(1, 1, 1).addGroup(colorAtActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING, false).addComponent(@maxBlueJTextField, GroupLayout::Alignment.TRAILING).addComponent(@maxRedJTextField, GroupLayout::Alignment.TRAILING, GroupLayout::DEFAULT_SIZE, 43, 32767).addComponent(@maxGreenJTextField, GroupLayout::Alignment.TRAILING, GroupLayout::PREFERRED_SIZE, 43, GroupLayout::PREFERRED_SIZE))).addComponent(@colorAtYJTextField, GroupLayout::Alignment.LEADING, GroupLayout::DEFAULT_SIZE, 44, 32767)).addGap(22, 22, 22)).addGroup(GroupLayout::Alignment.TRAILING, colorAtActionJDialogLayout.createSequentialGroup().addComponent(@titleJLabel).addGap(33, 33, 33)))))
        colorAtActionJDialogLayout.setVerticalGroup(colorAtActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(colorAtActionJDialogLayout.createSequentialGroup().addContainerGap().addComponent(@titleJLabel).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(colorAtActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(colorAtActionJDialogLayout.createSequentialGroup().addGap(15, 15, 15).addGroup(colorAtActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@xJLabel).addComponent(@locationJLabel).addComponent(@colorAtXJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE).addComponent(@yJLabel)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(colorAtActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@minJLabel).addComponent(@colorRangeJLabel)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(colorAtActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@minRedJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE).addComponent(@redJLabel)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(colorAtActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@greenJLabel).addComponent(@minGreenJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(colorAtActionJDialogLayout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@blueJLabel).addComponent(@minBlueJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED, 17, 32767).addComponent(@okJButton)).addGroup(colorAtActionJDialogLayout.createSequentialGroup().addGap(14, 14, 14).addComponent(@colorAtYJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@maxJLabel).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@maxRedJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@maxGreenJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addComponent(@maxBlueJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE))).addContainerGap()))
        setPreferredSize(Dimension.new(100, 0))
        @colorAtActionJButton.setText("Edit")
        @colorAtActionJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                colorAtActionJButtonActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @jLabel1.setText("Color At:")
        layout = GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(@jLabel1).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED, 15, 32767).addComponent(@colorAtActionJButton)))
        layout.setVerticalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@jLabel1).addComponent(@colorAtActionJButton)))
    end
    java_overload :initComponents, 0
    

    def okJButtonActionPerformed(evt)
        self.update()
        self.getColorAtActionJDialog().setVisible(false)
    end
    java_overload :okJButtonActionPerformed, 1
    

    def colorAtActionJButtonActionPerformed(evt)
        self.getColorAtActionJDialog().setVisible(true)
    end
    java_overload :colorAtActionJButtonActionPerformed, 1
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Analysis; autoload :ColorRangeInterface, "org/allbinary/media/image/analysis/ColorRangeInterface" unless const_defined?(:ColorRangeInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :ColorAtActionScriptConditionInterface, "org/allbinary/input/automation/actions/script/condition/ColorAtActionScriptConditionInterface" unless const_defined?(:ColorAtActionScriptConditionInterface, false)

end; end; end; end; end; end; end

