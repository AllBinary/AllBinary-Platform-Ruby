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
# require "javax/swing/DefaultComboBoxModel"
# require "javax/swing/GroupLayout"
# require "javax/swing/JComboBox"
# require "javax/swing/JLabel"
# require "javax/swing/JPanel"
# require "javax/swing/JTextField"
# require "javax/swing/LayoutStyle"

module ::Org; module Allbinary; module Image; module Gui

class ImageAnalysisResultsJPanel < JPanel
    attr_accessor :avgBlueJTextField, :avgGreenJTextField, :avgRedJTextField, :jComboBox1, :jLabel1, :jLabel10, :jLabel11, :jLabel12, :jLabel13, :jLabel2, :jLabel3, :jLabel4, :jLabel5, :jLabel6, :jLabel7, :jLabel8, :jLabel9, :matchingPixelsJTextField, :maxBlueJTextField, :maxGreenJTextField, :maxRedJTextField, :minBlueJTextField, :minGreenJTextField, :minRedJTextField, :percentMatchingJTextField, :totalPixelsJTextField

    def jfields_org_allbinary_image_gui_ImageAnalysisResultsJPanel
        @avgBlueJTextField = nil unless instance_variable_defined?(:@avgBlueJTextField)
        @avgGreenJTextField = nil unless instance_variable_defined?(:@avgGreenJTextField)
        @avgRedJTextField = nil unless instance_variable_defined?(:@avgRedJTextField)
        @jComboBox1 = nil unless instance_variable_defined?(:@jComboBox1)
        @jLabel1 = nil unless instance_variable_defined?(:@jLabel1)
        @jLabel10 = nil unless instance_variable_defined?(:@jLabel10)
        @jLabel11 = nil unless instance_variable_defined?(:@jLabel11)
        @jLabel12 = nil unless instance_variable_defined?(:@jLabel12)
        @jLabel13 = nil unless instance_variable_defined?(:@jLabel13)
        @jLabel2 = nil unless instance_variable_defined?(:@jLabel2)
        @jLabel3 = nil unless instance_variable_defined?(:@jLabel3)
        @jLabel4 = nil unless instance_variable_defined?(:@jLabel4)
        @jLabel5 = nil unless instance_variable_defined?(:@jLabel5)
        @jLabel6 = nil unless instance_variable_defined?(:@jLabel6)
        @jLabel7 = nil unless instance_variable_defined?(:@jLabel7)
        @jLabel8 = nil unless instance_variable_defined?(:@jLabel8)
        @jLabel9 = nil unless instance_variable_defined?(:@jLabel9)
        @matchingPixelsJTextField = nil unless instance_variable_defined?(:@matchingPixelsJTextField)
        @maxBlueJTextField = nil unless instance_variable_defined?(:@maxBlueJTextField)
        @maxGreenJTextField = nil unless instance_variable_defined?(:@maxGreenJTextField)
        @maxRedJTextField = nil unless instance_variable_defined?(:@maxRedJTextField)
        @minBlueJTextField = nil unless instance_variable_defined?(:@minBlueJTextField)
        @minGreenJTextField = nil unless instance_variable_defined?(:@minGreenJTextField)
        @minRedJTextField = nil unless instance_variable_defined?(:@minRedJTextField)
        @percentMatchingJTextField = nil unless instance_variable_defined?(:@percentMatchingJTextField)
        @totalPixelsJTextField = nil unless instance_variable_defined?(:@totalPixelsJTextField)
    end
    

    def initialize(imageAnalysisResultsArray)
        super()
        jfields_org_allbinary_image_gui_ImageAnalysisResultsJPanel
        self.initComponents()
        imageAnalysisResults = imageAnalysisResultsArray[0]
        self.updateImageColorRangeResults(imageAnalysisResults)
    end
    

    def initComponents()
        @jLabel1 = JLabel.new()
        @jLabel2 = JLabel.new()
        @jLabel3 = JLabel.new()
        @percentMatchingJTextField = JTextField.new()
        @totalPixelsJTextField = JTextField.new()
        @matchingPixelsJTextField = JTextField.new()
        @jComboBox1 = JComboBox.new()
        @jLabel4 = JLabel.new()
        @jLabel5 = JLabel.new()
        @jLabel6 = JLabel.new()
        @jLabel7 = JLabel.new()
        @avgRedJTextField = JTextField.new()
        @avgGreenJTextField = JTextField.new()
        @avgBlueJTextField = JTextField.new()
        @minGreenJTextField = JTextField.new()
        @jLabel8 = JLabel.new()
        @jLabel9 = JLabel.new()
        @jLabel10 = JLabel.new()
        @minRedJTextField = JTextField.new()
        @minBlueJTextField = JTextField.new()
        @jLabel11 = JLabel.new()
        @jLabel12 = JLabel.new()
        @jLabel13 = JLabel.new()
        @maxRedJTextField = JTextField.new()
        @maxGreenJTextField = JTextField.new()
        @maxBlueJTextField = JTextField.new()
        @jLabel1.setText("Matching Pixels:")
        @jLabel2.setText("Total Pixels:")
        @jLabel3.setText("Percent Matching:")
        @percentMatchingJTextField.setEditable(false)
        @totalPixelsJTextField.setEditable(false)
        @matchingPixelsJTextField.setEditable(false)
        @jComboBox1.setModel(DefaultComboBoxModel.new([::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance().ONE]))
        @jComboBox1.setEnabled(false)
        @jLabel4.setText("Image:")
        @jLabel5.setText("Average Red:")
        @jLabel6.setText("Average Green:")
        @jLabel7.setText("Average Blue:")
        @avgRedJTextField.setEditable(false)
        @avgGreenJTextField.setEditable(false)
        @avgBlueJTextField.setEditable(false)
        @minGreenJTextField.setEditable(false)
        @jLabel8.setText("Min Red:")
        @jLabel9.setText("Min Green:")
        @jLabel10.setText("Min Blue:")
        @minRedJTextField.setEditable(false)
        @minBlueJTextField.setEditable(false)
        @jLabel11.setText("Max Red:")
        @jLabel12.setText("Max Green:")
        @jLabel13.setText("Max Blue:")
        @maxRedJTextField.setEditable(false)
        @maxGreenJTextField.setEditable(false)
        @maxBlueJTextField.setEditable(false)
        layout = GroupLayout.new(self)
        self.setLayout(layout)
        layout.setHorizontalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createSequentialGroup().addContainerGap().addGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addComponent(@jLabel3).addComponent(@jLabel2).addComponent(@jLabel1).addComponent(@jLabel5).addComponent(@jLabel6).addComponent(@jLabel7).addComponent(@jLabel4)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addComponent(@jComboBox1, GroupLayout::PREFERRED_SIZE, 81, GroupLayout::PREFERRED_SIZE).addComponent(@avgBlueJTextField, GroupLayout::DEFAULT_SIZE, 81, 32767).addComponent(@avgGreenJTextField, GroupLayout::DEFAULT_SIZE, 81, 32767).addComponent(@avgRedJTextField, GroupLayout::DEFAULT_SIZE, 81, 32767).addComponent(@totalPixelsJTextField, GroupLayout::DEFAULT_SIZE, 81, 32767).addComponent(@percentMatchingJTextField, GroupLayout::DEFAULT_SIZE, 81, 32767).addComponent(@matchingPixelsJTextField, GroupLayout::DEFAULT_SIZE, 81, 32767)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addComponent(@jLabel12).addComponent(@jLabel13).addComponent(@jLabel8).addComponent(@jLabel9).addComponent(@jLabel10).addComponent(@jLabel11)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addComponent(@minRedJTextField, GroupLayout::PREFERRED_SIZE, 82, GroupLayout::PREFERRED_SIZE).addComponent(@maxGreenJTextField, GroupLayout::PREFERRED_SIZE, 82, GroupLayout::PREFERRED_SIZE).addComponent(@minGreenJTextField, GroupLayout::PREFERRED_SIZE, 82, GroupLayout::PREFERRED_SIZE).addComponent(@minBlueJTextField, GroupLayout::PREFERRED_SIZE, 82, GroupLayout::PREFERRED_SIZE).addComponent(@maxRedJTextField, GroupLayout::PREFERRED_SIZE, 82, GroupLayout::PREFERRED_SIZE).addComponent(@maxBlueJTextField, GroupLayout::PREFERRED_SIZE, 82, GroupLayout::PREFERRED_SIZE)).addContainerGap(18, 32767)))
        layout.setVerticalGroup(layout.createParallelGroup(GroupLayout::Alignment.LEADING).addGroup(layout.createSequentialGroup().addGroup(layout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@jLabel4).addComponent(@jComboBox1, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@jLabel1).addComponent(@matchingPixelsJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE).addComponent(@jLabel8).addComponent(@minRedJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@jLabel2).addComponent(@totalPixelsJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE).addComponent(@jLabel9).addComponent(@minGreenJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@jLabel3).addComponent(@percentMatchingJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE).addComponent(@jLabel10).addComponent(@minBlueJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@jLabel5).addComponent(@avgRedJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE).addComponent(@jLabel11).addComponent(@maxRedJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@jLabel6).addComponent(@avgGreenJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE).addComponent(@maxGreenJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE).addComponent(@jLabel12)).addPreferredGap(LayoutStyle::ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(GroupLayout::Alignment.BASELINE).addComponent(@jLabel7).addComponent(@avgBlueJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE).addComponent(@jLabel13).addComponent(@maxBlueJTextField, GroupLayout::PREFERRED_SIZE, GroupLayout::DEFAULT_SIZE, GroupLayout::PREFERRED_SIZE))))
    end
    java_overload :initComponents, 0
    

    def updateImageColorRangeResults(imageAnalysisResults)
        imageColorRangeResults = imageAnalysisResults.getImageColorRangeResults()
        @matchingPixelsJTextField.setText(imageColorRangeResults.getMatchingPixelsChecked().to_s)
        @totalPixelsJTextField.setText(imageColorRangeResults.getTotalPixelsChecked().to_s)
        @percentMatchingJTextField.setText(imageColorRangeResults.getPercent().to_s)
        imageColorResults = imageAnalysisResults.getImageColorResults()
        @avgRedJTextField.setText(imageColorResults.getColorAverage().getAvgRed().to_s)
        @avgGreenJTextField.setText(imageColorResults.getColorAverage().getAvgGreen().to_s)
        @avgBlueJTextField.setText(imageColorResults.getColorAverage().getAvgBlue().to_s)
        @minRedJTextField.setText(imageColorResults.getColorRange().getMinRed().to_s)
        @minGreenJTextField.setText(imageColorResults.getColorRange().getMinGreen().to_s)
        @minBlueJTextField.setText(imageColorResults.getColorRange().getMinBlue().to_s)
        @maxRedJTextField.setText(imageColorResults.getColorRange().getMaxRed().to_s)
        @maxGreenJTextField.setText(imageColorResults.getColorRange().getMaxGreen().to_s)
        @maxBlueJTextField.setText(imageColorResults.getColorRange().getMaxBlue().to_s)
    end
    java_overload :updateImageColorRangeResults, 1
end

module ::Org; module Allbinary; module Media; module Image; module Analysis; autoload :ImageAnalysisResults, "org/allbinary/media/image/analysis/ImageAnalysisResults" unless const_defined?(:ImageAnalysisResults, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Analysis; autoload :ImageColorRangeResults, "org/allbinary/media/image/analysis/ImageColorRangeResults" unless const_defined?(:ImageColorRangeResults, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Analysis; autoload :ImageColorResults, "org/allbinary/media/image/analysis/ImageColorResults" unless const_defined?(:ImageColorResults, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonPhoneStrings, "org/allbinary/string/CommonPhoneStrings" unless const_defined?(:CommonPhoneStrings, false); end; end; end

end; end; end; end

