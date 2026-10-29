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


class ImageAnalysisResultsJPanel < JPanel
    attr_accessor :avgBlueJTextField, :avgGreenJTextField, :avgRedJTextField, :jComboBox1, :jLabel1, :jLabel10, :jLabel11, :jLabel12, :jLabel13, :jLabel2, :jLabel3, :jLabel4, :jLabel5, :jLabel6, :jLabel7, :jLabel8, :jLabel9, :matchingPixelsJTextField, :maxBlueJTextField, :maxGreenJTextField, :maxRedJTextField, :minBlueJTextField, :minGreenJTextField, :minRedJTextField, :percentMatchingJTextField, :totalPixelsJTextField

    def initialize_fields
        @avgBlueJTextField = nil
        @avgGreenJTextField = nil
        @avgRedJTextField = nil
        @jComboBox1 = nil
        @jLabel1 = nil
        @jLabel10 = nil
        @jLabel11 = nil
        @jLabel12 = nil
        @jLabel13 = nil
        @jLabel2 = nil
        @jLabel3 = nil
        @jLabel4 = nil
        @jLabel5 = nil
        @jLabel6 = nil
        @jLabel7 = nil
        @jLabel8 = nil
        @jLabel9 = nil
        @matchingPixelsJTextField = nil
        @maxBlueJTextField = nil
        @maxGreenJTextField = nil
        @maxRedJTextField = nil
        @minBlueJTextField = nil
        @minGreenJTextField = nil
        @minRedJTextField = nil
        @percentMatchingJTextField = nil
        @totalPixelsJTextField = nil
    end
    

    def initialize(imageAnalysisResultsArray)
        super()
        initialize_fields
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
        @jComboBox1.setModel(DefaultComboBoxModel.new([CommonPhoneStrings.getInstance().ONE]))
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
        layout.setHorizontalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addContainerGap().addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addComponent(@jLabel3).addComponent(@jLabel2).addComponent(@jLabel1).addComponent(@jLabel5).addComponent(@jLabel6).addComponent(@jLabel7).addComponent(@jLabel4)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addComponent(@jComboBox1, javax.swing.GroupLayout.PREFERRED_SIZE, 81, javax.swing.GroupLayout.PREFERRED_SIZE).addComponent(@avgBlueJTextField, javax.swing.GroupLayout.DEFAULT_SIZE, 81, 32767).addComponent(@avgGreenJTextField, javax.swing.GroupLayout.DEFAULT_SIZE, 81, 32767).addComponent(@avgRedJTextField, javax.swing.GroupLayout.DEFAULT_SIZE, 81, 32767).addComponent(@totalPixelsJTextField, javax.swing.GroupLayout.DEFAULT_SIZE, 81, 32767).addComponent(@percentMatchingJTextField, javax.swing.GroupLayout.DEFAULT_SIZE, 81, 32767).addComponent(@matchingPixelsJTextField, javax.swing.GroupLayout.DEFAULT_SIZE, 81, 32767)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addComponent(@jLabel12).addComponent(@jLabel13).addComponent(@jLabel8).addComponent(@jLabel9).addComponent(@jLabel10).addComponent(@jLabel11)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addComponent(@minRedJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, 82, javax.swing.GroupLayout.PREFERRED_SIZE).addComponent(@maxGreenJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, 82, javax.swing.GroupLayout.PREFERRED_SIZE).addComponent(@minGreenJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, 82, javax.swing.GroupLayout.PREFERRED_SIZE).addComponent(@minBlueJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, 82, javax.swing.GroupLayout.PREFERRED_SIZE).addComponent(@maxRedJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, 82, javax.swing.GroupLayout.PREFERRED_SIZE).addComponent(@maxBlueJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, 82, javax.swing.GroupLayout.PREFERRED_SIZE)).addContainerGap(18, 32767)))
        layout.setVerticalGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@jLabel4).addComponent(@jComboBox1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@jLabel1).addComponent(@matchingPixelsJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE).addComponent(@jLabel8).addComponent(@minRedJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@jLabel2).addComponent(@totalPixelsJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE).addComponent(@jLabel9).addComponent(@minGreenJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@jLabel3).addComponent(@percentMatchingJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE).addComponent(@jLabel10).addComponent(@minBlueJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@jLabel5).addComponent(@avgRedJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE).addComponent(@jLabel11).addComponent(@maxRedJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@jLabel6).addComponent(@avgGreenJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE).addComponent(@maxGreenJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE).addComponent(@jLabel12)).addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE).addComponent(@jLabel7).addComponent(@avgBlueJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE).addComponent(@jLabel13).addComponent(@maxBlueJTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))))
    end
    

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
end

require "org/allbinary/media/image/analysis/ImageAnalysisResults"
require "org/allbinary/media/image/analysis/ImageColorRangeResults"
require "org/allbinary/media/image/analysis/ImageColorResults"
require "org/allbinary/string/CommonPhoneStrings"

