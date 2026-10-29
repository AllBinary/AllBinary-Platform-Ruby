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


class ColorAtActionScriptConditionJPanel < JPanel
    attr_accessor :logUtil, :commonStrings, :colorAtActionScriptConditionInterface, :blueJLabel, :colorAtActionJButton, :colorAtActionJDialog, :colorAtXJTextField, :colorAtYJTextField, :colorRangeJLabel, :greenJLabel, :jLabel1, :locationJLabel, :maxBlueJTextField, :maxGreenJTextField, :maxJLabel, :maxRedJTextField, :minBlueJTextField, :minGreenJTextField, :minJLabel, :minRedJTextField, :okJButton, :redJLabel, :titleJLabel, :xJLabel, :yJLabel

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @colorAtActionScriptConditionInterface = nil
        @blueJLabel = nil
        @colorAtActionJButton = nil
        @colorAtActionJDialog = nil
        @colorAtXJTextField = nil
        @colorAtYJTextField = nil
        @colorRangeJLabel = nil
        @greenJLabel = nil
        @jLabel1 = nil
        @locationJLabel = nil
        @maxBlueJTextField = nil
        @maxGreenJTextField = nil
        @maxJLabel = nil
        @maxRedJTextField = nil
        @minBlueJTextField = nil
        @minGreenJTextField = nil
        @minJLabel = nil
        @minRedJTextField = nil
        @okJButton = nil
        @redJLabel = nil
        @titleJLabel = nil
        @xJLabel = nil
        @yJLabel = nil
    end
    

    def initialize(colorAtActionScriptConditionInterface)
        super()
        initialize_fields
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
    

    def update()
        colorRangeInterface = @colorAtActionScriptConditionInterface.getColorRangeInterface()
        colorRangeInterface.setMinRed((self.getMinRedJTextField().getText()).to_s.to_i)
        colorRangeInterface.setMaxRed((self.getMaxRedJTextField().getText()).to_s.to_i)
        colorRangeInterface.setMinGreen((self.getMinGreenJTextField().getText()).to_s.to_i)
        colorRangeInterface.setMaxGreen((self.getMaxGreenJTextField().getText()).to_s.to_i)
        colorRangeInterface.setMinBlue((self.getMinBlueJTextField().getText()).to_s.to_i)
        colorRangeInterface.setMaxBlue((self.getMaxBlueJTextField().getText()).to_s.to_i)
        xString = self.getColorAtXJTextField().getText()
        if !StringValidationUtil.getInstance().isEmpty(xString) && StringValidationUtil.getInstance().isNumber(xString)
            @colorAtActionScriptConditionInterface.getPoint().x = Integer(xString)
        end
        yString = self.getColorAtYJTextField().getText()
        if !StringValidationUtil.getInstance().isEmpty(yString) && StringValidationUtil.getInstance().isNumber(yString)
            @colorAtActionScriptConditionInterface.getPoint().y = Integer(xString)
        end
        @colorAtActionScriptConditionInterface.log()
    end
    

    def getColorAtXJTextField()
        return @colorAtXJTextField
    end
    

    def setColorAtXJTextField(colorAtXJTextField)
        @colorAtXJTextField = colorAtXJTextField
    end
    

    def getColorAtYJTextField()
        return @colorAtYJTextField
    end
    

    def setColorAtYJTextField(colorAtYJTextField)
        @colorAtYJTextField = colorAtYJTextField
    end
    

    def getMaxBlueJTextField()
        return @maxBlueJTextField
    end
    

    def setMaxBlueJTextField(maxBlueJTextField)
        @maxBlueJTextField = maxBlueJTextField
    end
    

    def getMaxGreenJTextField()
        return @maxGreenJTextField
    end
    

    def setMaxGreenJTextField(maxGreenJTextField)
        @maxGreenJTextField = maxGreenJTextField
    end
    

    def getMaxRedJTextField()
        return @maxRedJTextField
    end
    

    def setMaxRedJTextField(maxRedJTextField)
        @maxRedJTextField = maxRedJTextField
    end
    

    def getMinBlueJTextField()
        return @minBlueJTextField
    end
    

    def setMinBlueJTextField(minBlueJTextField)
        @minBlueJTextField = minBlueJTextField
    end
    

    def getMinGreenJTextField()
        return @minGreenJTextField
    end
    

    def setMinGreenJTextField(minGreenJTextField)
        @minGreenJTextField = minGreenJTextField
    end
    

    def getMinRedJTextField()
        return @minRedJTextField
    end
    

    def setMinRedJTextField(minRedJTextField)
        @minRedJTextField = minRedJTextField
    end
    

    def getYJLabel()
        return @yJLabel
    end
    

    def setYJLabel(yJLabel)
        @yJLabel = yJLabel
    end
    

    def getColorAtActionJDialog()
        return @colorAtActionJDialog
    end
    

    def setColorAtActionJDialog(colorAtActionJDialog)
        @colorAtActionJDialog = colorAtActionJDialog
    end
    

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
        end.new())
        colorAtActionJDialogLayout = GroupLayout.new(@colorAtActionJDialog.getContentPane())
        @colorAtActionJDialog.getContentPane().setLayout(colorAtActionJDialogLayout)
        colorAtActionJDialogLayout.setHorizontalGroup(colorAtActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(colorAtActionJDialogLayout.createSequentialGroup().addContainerGap().addGroup(colorAtActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(colorAtActionJDialogLayout.createSequentialGroup().addGroup(colorAtActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING).addComponent(@okJButton).addGroup(colorAtActionJDialogLayout.createSequentialGroup().addGroup(colorAtActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false).addGroup(colorAtActionJDialogLayout.createSequentialGroup().addGroup(colorAtActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addComponent(@blueJLabel).addComponent(@greenJLabel).addComponent(@redJLabel).addComponent(@colorRangeJLabel)).addGap(29, 29, 29)).addGroup(javax.swing.GroupLayout.Alignment.TRAILING, colorAtActionJDialogLayout.createSequentialGroup().addComponent(@locationJLabel).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, 32767).addComponent(@xJLabel).addGap(18, 18, 18))).addGroup(colorAtActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addComponent(@minBlueJTextField, javax.swing.GroupLayout.DEFAULT_SIZE, 40, 32767).addComponent(@minGreenJTextField, javax.swing.GroupLayout.DEFAULT_SIZE, 40, 32767).addComponent(@minJLabel, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, 32767).addComponent(@minRedJTextField, javax.swing.GroupLayout.DEFAULT_SIZE, 40, 32767).addComponent(@colorAtXJTextField, javax.swing.GroupLayout.DEFAULT_SIZE, 40, 32767)).addGap(16, 16, 16))).addGap(6, 6, 6).addComponent(@yJLabel).addGap(24, 24, 24).addGroup(colorAtActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING).addComponent(@maxJLabel, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, 32767).addGroup(javax.swing.GroupLayout.Alignment.LEADING, colorAtActionJDialogLayout.createSequentialGroup().addGap(1, 1, 1).addGroup(colorAtActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false).addComponent(@maxBlueJTextField, javax.swing.GroupLayout.Alignment.TRAILING).addComponent(@maxRedJTextField, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 43, 32767).addComponent(@maxGreenJTextField, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 43, javax.swing.GroupLayout.PREFERRED_SIZE))).addComponent(@colorAtYJTextField, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 44, 32767)).addGap(22, 22, 22)).addGroup(javax.swing.GroupLayout.Alignment.TRAILING, colorAtActionJDialogLayout.createSequentialGroup().addComponent(@titleJLabel).addGap(33, 33, 33)))))
        colorAtActionJDialogLayout.setVerticalGroup(colorAtActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(colorAtActionJDialogLayout.createSequentialGroup().addContainerGap().addComponent(@titleJLabel).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(colorAtActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(colorAtActionJDialogLayout.createSequentialGroup().addGap(15, 15, 15).addGroup(colorAtActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@xJLabel).addComponent(@locationJLabel).addComponent(@colorAtXJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE).addComponent(@yJLabel)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(colorAtActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@minJLabel).addComponent(@colorRangeJLabel)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(colorAtActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@minRedJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE).addComponent(@redJLabel)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(colorAtActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@greenJLabel).addComponent(@minGreenJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(colorAtActionJDialogLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@blueJLabel).addComponent(@minBlueJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 17, 32767).addComponent(@okJButton)).addGroup(colorAtActionJDialogLayout.createSequentialGroup().addGap(14, 14, 14).addComponent(@colorAtYJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@maxJLabel).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@maxRedJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@maxGreenJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(@maxBlueJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))).addContainerGap()))
        setPreferredSize(Dimension.new(100, 0))
        @colorAtActionJButton.setText("Edit")
        @colorAtActionJButton.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                colorAtActionJButtonActionPerformed(evt)
            end
        end.new())
        @jLabel1.setText("Color At:")
        layout = GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(@jLabel1).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 15, 32767).addComponent(@colorAtActionJButton)))
        layout.setVerticalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@jLabel1).addComponent(@colorAtActionJButton)))
    end
    

    def okJButtonActionPerformed(evt)
        self.update()
        self.getColorAtActionJDialog().setVisible(false)
    end
    

    def colorAtActionJButtonActionPerformed(evt)
        self.getColorAtActionJDialog().setVisible(true)
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/media/image/analysis/ColorRangeInterface"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/input/automation/actions/script/condition/ColorAtActionScriptConditionInterface"

