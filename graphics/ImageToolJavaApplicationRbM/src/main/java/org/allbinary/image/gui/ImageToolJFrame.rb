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
require "java/lang/JavaClass"
# require "java/awt/image/BufferedImage"
# require "java/io/File"
# require "java/util/Arrays"
# require "java/util/Comparator"
# require "javax/imageio/ImageIO"
require "org/allbinary/gui/dialog/FileJDialogListenerInterface"
# require "java/awt/Dimension"
# require "java/awt/GridLayout"
# require "java/awt/event/ActionEvent"
# require "java/awt/event/ActionListener"
# require "javax/swing/JButton"
# require "javax/swing/JDialog"
# require "javax/swing/JFrame"
# require "javax/swing/JLabel"
# require "javax/swing/JMenu"
# require "javax/swing/JMenuBar"
# require "javax/swing/JMenuItem"
# require "javax/swing/JPanel"
# require "javax/swing/JTextField"
# require "javax/swing/WindowConstants"

module ::Org; module Allbinary; module Image; module Gui

class ImageToolJFrame < JFrame
    include ::Org::Allbinary::Gui::Dialog::FileJDialogListenerInterface
    attr_accessor :logUtil, :commonStrings, :fileJDialog, :imageProcessorInput, :analysisActionJDialog, :analyzeJMenuItem, :blueJLabel, :colorRangeJLabel, :createStripImageJMenuItem, :fileJMenu, :generateSpriteSplitterMenuItem, :generateRotationMenuItem, :generateMirrorSpriteMenuItem, :generateRotationSpriteJMenuItem, :greenJLabel, :jPanel1, :mainJMenuBar, :maxBlueJTextField, :maxGreenJTextField, :maxJLabel, :maxRedJTextField, :minBlueJTextField, :minGreenJTextField, :minJLabel, :minRedJTextField, :mirrorJMenuItem, :okJButton, :openImageJMenuItem, :processingJMenu, :redJLabel, :scaleImagesJMenuItem, :canvasImagesJMenuItem, :createIconImagesJMenuItem, :titleJLabel

    def jfields_org_allbinary_image_gui_ImageToolJFrame
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @fileJDialog = nil unless instance_variable_defined?(:@fileJDialog)
        @imageProcessorInput = nil unless instance_variable_defined?(:@imageProcessorInput)
        @analysisActionJDialog = nil unless instance_variable_defined?(:@analysisActionJDialog)
        @analyzeJMenuItem = nil unless instance_variable_defined?(:@analyzeJMenuItem)
        @blueJLabel = nil unless instance_variable_defined?(:@blueJLabel)
        @colorRangeJLabel = nil unless instance_variable_defined?(:@colorRangeJLabel)
        @createStripImageJMenuItem = nil unless instance_variable_defined?(:@createStripImageJMenuItem)
        @fileJMenu = nil unless instance_variable_defined?(:@fileJMenu)
        @generateSpriteSplitterMenuItem = nil unless instance_variable_defined?(:@generateSpriteSplitterMenuItem)
        @generateRotationMenuItem = nil unless instance_variable_defined?(:@generateRotationMenuItem)
        @generateMirrorSpriteMenuItem = nil unless instance_variable_defined?(:@generateMirrorSpriteMenuItem)
        @generateRotationSpriteJMenuItem = nil unless instance_variable_defined?(:@generateRotationSpriteJMenuItem)
        @greenJLabel = nil unless instance_variable_defined?(:@greenJLabel)
        @jPanel1 = nil unless instance_variable_defined?(:@jPanel1)
        @mainJMenuBar = nil unless instance_variable_defined?(:@mainJMenuBar)
        @maxBlueJTextField = nil unless instance_variable_defined?(:@maxBlueJTextField)
        @maxGreenJTextField = nil unless instance_variable_defined?(:@maxGreenJTextField)
        @maxJLabel = nil unless instance_variable_defined?(:@maxJLabel)
        @maxRedJTextField = nil unless instance_variable_defined?(:@maxRedJTextField)
        @minBlueJTextField = nil unless instance_variable_defined?(:@minBlueJTextField)
        @minGreenJTextField = nil unless instance_variable_defined?(:@minGreenJTextField)
        @minJLabel = nil unless instance_variable_defined?(:@minJLabel)
        @minRedJTextField = nil unless instance_variable_defined?(:@minRedJTextField)
        @mirrorJMenuItem = nil unless instance_variable_defined?(:@mirrorJMenuItem)
        @okJButton = nil unless instance_variable_defined?(:@okJButton)
        @openImageJMenuItem = nil unless instance_variable_defined?(:@openImageJMenuItem)
        @processingJMenu = nil unless instance_variable_defined?(:@processingJMenu)
        @redJLabel = nil unless instance_variable_defined?(:@redJLabel)
        @scaleImagesJMenuItem = nil unless instance_variable_defined?(:@scaleImagesJMenuItem)
        @canvasImagesJMenuItem = nil unless instance_variable_defined?(:@canvasImagesJMenuItem)
        @createIconImagesJMenuItem = nil unless instance_variable_defined?(:@createIconImagesJMenuItem)
        @titleJLabel = nil unless instance_variable_defined?(:@titleJLabel)
    end
    

    def initialize()
        super()
        jfields_org_allbinary_image_gui_ImageToolJFrame
        self.initComponents()
        commonPhoneStrings = ::Org::Allbinary::StringPackage::CommonPhoneStrings.getInstance()
        self.setSize(640, 480)
        self.getMaxRedJTextField().setText("255")
        self.getMaxGreenJTextField().setText("255")
        self.getMaxBlueJTextField().setText("255")
        self.getMinRedJTextField().setText(commonPhoneStrings.ZERO)
        self.getMinGreenJTextField().setText(commonPhoneStrings.ZERO)
        self.getMinBlueJTextField().setText(commonPhoneStrings.ZERO)
        @fileJDialog = ::Org::Allbinary::Gui::Dialog::FileJDialog.new()
        @fileJDialog.addFinishedListener(self)
    end
    

    def initComponents()
        @analysisActionJDialog = JDialog.new()
        @titleJLabel = JLabel.new()
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
        @jPanel1 = JPanel.new()
        @mainJMenuBar = JMenuBar.new()
        @fileJMenu = JMenu.new()
        @openImageJMenuItem = JMenuItem.new()
        @processingJMenu = JMenu.new()
        @analyzeJMenuItem = JMenuItem.new()
        @generateSpriteSplitterMenuItem = JMenuItem.new()
        @generateRotationMenuItem = JMenuItem.new()
        @generateMirrorSpriteMenuItem = JMenuItem.new()
        @generateRotationSpriteJMenuItem = JMenuItem.new()
        @createStripImageJMenuItem = JMenuItem.new()
        @mirrorJMenuItem = JMenuItem.new()
        @scaleImagesJMenuItem = JMenuItem.new()
        @canvasImagesJMenuItem = JMenuItem.new()
        @createIconImagesJMenuItem = JMenuItem.new()
        @analysisActionJDialog.setMinimumSize(Dimension.new(350, 250))
        @titleJLabel.setText("              Color At Action Options            ")
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
        analysisActionJDialogLayout = ::Org::Jdesktop::Layout::GroupLayout.new(@analysisActionJDialog.getContentPane())
        @analysisActionJDialog.getContentPane().setLayout(analysisActionJDialogLayout)
        analysisActionJDialogLayout.setHorizontalGroup(analysisActionJDialogLayout.createParallelGroup(::Org::Jdesktop::Layout::GroupLayout::LEADING).add(analysisActionJDialogLayout.createSequentialGroup().addContainerGap().add(analysisActionJDialogLayout.createParallelGroup(::Org::Jdesktop::Layout::GroupLayout::LEADING).add(analysisActionJDialogLayout.createSequentialGroup().add(analysisActionJDialogLayout.createParallelGroup(::Org::Jdesktop::Layout::GroupLayout::LEADING).add(@blueJLabel).add(@greenJLabel).add(@redJLabel).add(@colorRangeJLabel)).add(29, 29, 29).add(analysisActionJDialogLayout.createParallelGroup(::Org::Jdesktop::Layout::GroupLayout::LEADING).add(::Org::Jdesktop::Layout::GroupLayout::TRAILING, @minJLabel, ::Org::Jdesktop::Layout::GroupLayout::DEFAULT_SIZE, 58, 32767).add(analysisActionJDialogLayout.createParallelGroup(::Org::Jdesktop::Layout::GroupLayout::TRAILING, false).add(::Org::Jdesktop::Layout::GroupLayout::LEADING, @minBlueJTextField).add(::Org::Jdesktop::Layout::GroupLayout::LEADING, @minGreenJTextField).add(::Org::Jdesktop::Layout::GroupLayout::LEADING, @minRedJTextField, ::Org::Jdesktop::Layout::GroupLayout::DEFAULT_SIZE, 42, 32767).add(::Org::Jdesktop::Layout::GroupLayout::LEADING, @okJButton))).addPreferredGap(::Org::Jdesktop::Layout::LayoutStyle::RELATED).add(analysisActionJDialogLayout.createParallelGroup(::Org::Jdesktop::Layout::GroupLayout::TRAILING).add(::Org::Jdesktop::Layout::GroupLayout::LEADING, analysisActionJDialogLayout.createSequentialGroup().add(analysisActionJDialogLayout.createParallelGroup(::Org::Jdesktop::Layout::GroupLayout::TRAILING, false).add(::Org::Jdesktop::Layout::GroupLayout::LEADING, @maxRedJTextField).add(::Org::Jdesktop::Layout::GroupLayout::LEADING, analysisActionJDialogLayout.createSequentialGroup().add(1, 1, 1).add(analysisActionJDialogLayout.createParallelGroup(::Org::Jdesktop::Layout::GroupLayout::LEADING).add(@maxBlueJTextField).add(@maxGreenJTextField, ::Org::Jdesktop::Layout::GroupLayout::PREFERRED_SIZE, 43, ::Org::Jdesktop::Layout::GroupLayout::PREFERRED_SIZE)))).addPreferredGap(::Org::Jdesktop::Layout::LayoutStyle::RELATED, 17, 32767)).add(::Org::Jdesktop::Layout::GroupLayout::LEADING, @maxJLabel, ::Org::Jdesktop::Layout::GroupLayout::DEFAULT_SIZE, 61, 32767)).addContainerGap()).add(::Org::Jdesktop::Layout::GroupLayout::TRAILING, analysisActionJDialogLayout.createSequentialGroup().add(@titleJLabel).add(25, 25, 25)))))
        analysisActionJDialogLayout.setVerticalGroup(analysisActionJDialogLayout.createParallelGroup(::Org::Jdesktop::Layout::GroupLayout::LEADING).add(analysisActionJDialogLayout.createSequentialGroup().add(@titleJLabel).addPreferredGap(::Org::Jdesktop::Layout::LayoutStyle::RELATED).add(analysisActionJDialogLayout.createParallelGroup(::Org::Jdesktop::Layout::GroupLayout::BASELINE).add(@minJLabel).add(@colorRangeJLabel).add(@maxJLabel)).addPreferredGap(::Org::Jdesktop::Layout::LayoutStyle::RELATED).add(analysisActionJDialogLayout.createParallelGroup(::Org::Jdesktop::Layout::GroupLayout::TRAILING).add(@redJLabel).add(analysisActionJDialogLayout.createParallelGroup(::Org::Jdesktop::Layout::GroupLayout::BASELINE).add(@minRedJTextField, ::Org::Jdesktop::Layout::GroupLayout::PREFERRED_SIZE, ::Org::Jdesktop::Layout::GroupLayout::DEFAULT_SIZE, ::Org::Jdesktop::Layout::GroupLayout::PREFERRED_SIZE).add(@maxRedJTextField, ::Org::Jdesktop::Layout::GroupLayout::PREFERRED_SIZE, ::Org::Jdesktop::Layout::GroupLayout::DEFAULT_SIZE, ::Org::Jdesktop::Layout::GroupLayout::PREFERRED_SIZE))).addPreferredGap(::Org::Jdesktop::Layout::LayoutStyle::RELATED).add(analysisActionJDialogLayout.createParallelGroup(::Org::Jdesktop::Layout::GroupLayout::TRAILING).add(@greenJLabel).add(analysisActionJDialogLayout.createParallelGroup(::Org::Jdesktop::Layout::GroupLayout::BASELINE).add(@minGreenJTextField, ::Org::Jdesktop::Layout::GroupLayout::PREFERRED_SIZE, ::Org::Jdesktop::Layout::GroupLayout::DEFAULT_SIZE, ::Org::Jdesktop::Layout::GroupLayout::PREFERRED_SIZE).add(@maxGreenJTextField, ::Org::Jdesktop::Layout::GroupLayout::PREFERRED_SIZE, ::Org::Jdesktop::Layout::GroupLayout::DEFAULT_SIZE, ::Org::Jdesktop::Layout::GroupLayout::PREFERRED_SIZE))).addPreferredGap(::Org::Jdesktop::Layout::LayoutStyle::RELATED).add(analysisActionJDialogLayout.createParallelGroup(::Org::Jdesktop::Layout::GroupLayout::TRAILING).add(@blueJLabel).add(analysisActionJDialogLayout.createParallelGroup(::Org::Jdesktop::Layout::GroupLayout::BASELINE).add(@minBlueJTextField, ::Org::Jdesktop::Layout::GroupLayout::PREFERRED_SIZE, ::Org::Jdesktop::Layout::GroupLayout::DEFAULT_SIZE, ::Org::Jdesktop::Layout::GroupLayout::PREFERRED_SIZE).add(@maxBlueJTextField, ::Org::Jdesktop::Layout::GroupLayout::PREFERRED_SIZE, ::Org::Jdesktop::Layout::GroupLayout::DEFAULT_SIZE, ::Org::Jdesktop::Layout::GroupLayout::PREFERRED_SIZE))).add(16, 16, 16).add(@okJButton).addContainerGap(::Org::Jdesktop::Layout::GroupLayout::DEFAULT_SIZE, 32767)))
        setDefaultCloseOperation(WindowConstants::EXIT_ON_CLOSE)
        getContentPane().setLayout(GridLayout.new(1, 0))
        @jPanel1.setLayout(GridLayout.new(1, 0))
        getContentPane().add(@jPanel1)
        @fileJMenu.setText("File")
        @fileJMenu.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                fileJMenuActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @openImageJMenuItem.setText("Open")
        @openImageJMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                openImageJMenuItemActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @fileJMenu.add(@openImageJMenuItem)
        @mainJMenuBar.add(@fileJMenu)
        @processingJMenu.setText("Processing")
        @processingJMenu.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                processingJMenuActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @analyzeJMenuItem.setText("Image Analyze")
        @analyzeJMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                analyzeJMenuItemActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @processingJMenu.add(@analyzeJMenuItem)
        @generateMirrorSpriteMenuItem.setText("Mirror Sprite Generator")
        @generateMirrorSpriteMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                generateMirrorSpriteMenuItemActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @processingJMenu.add(@generateMirrorSpriteMenuItem)
        @generateRotationSpriteJMenuItem.setText("Rotation Sprite Generator")
        @generateRotationSpriteJMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                generateRotationSpriteJMenuItemActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @processingJMenu.add(@generateRotationSpriteJMenuItem)
        @generateSpriteSplitterMenuItem.setText("Sprite Splitter Generator")
        @generateSpriteSplitterMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                generateSpriteSplitterMenuItemActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @processingJMenu.add(@generateSpriteSplitterMenuItem)
        @generateRotationMenuItem.setText("Rotate Image Generator")
        @generateRotationMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                generateRotationMenuItemActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @processingJMenu.add(@generateRotationMenuItem)
        @createStripImageJMenuItem.setText("Multi Image Unifier")
        @createStripImageJMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                createStripImageJMenuItemActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @processingJMenu.add(@createStripImageJMenuItem)
        @mirrorJMenuItem.setText("Mirror Image(s)")
        @mirrorJMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                mirrorJMenuItemActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @processingJMenu.add(@mirrorJMenuItem)
        @scaleImagesJMenuItem.setText("Scale Image(s)")
        @scaleImagesJMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                scaleImagesJMenuItemActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @processingJMenu.add(@scaleImagesJMenuItem)
        @canvasImagesJMenuItem.setText("Canvas Image(s)")
        @canvasImagesJMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                canvasImagesJMenuItemActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @processingJMenu.add(@canvasImagesJMenuItem)
        @createIconImagesJMenuItem.setText("Create Icon Image(s)")
        @createIconImagesJMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                createIconsJMenuItemActionPerformed(evt)
            end
            java_overload :actionPerformed, 1
        end.new())
        @processingJMenu.add(@createIconImagesJMenuItem)
        @mainJMenuBar.add(@processingJMenu)
        setJMenuBar(@mainJMenuBar)
        pack()
    end
    java_overload :initComponents, 0
    

    def createStripImageJMenuItemActionPerformed(evt)
        begin
            imageUnifierJPanel = ImageUnifierJPanel.new(@imageProcessorInput)
            @jPanel1.removeAll()
            @jPanel1.add(imageUnifierJPanel)
            @jPanel1.updateUI()
            ImageToolJFrame.imageProcessorInputCompositeInterface = imageUnifierJPanel
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "createStripImageJMenuItemActionPerformed", e)
        end
    end
    java_overload :createStripImageJMenuItemActionPerformed, 1
    

    def okJButtonActionPerformed(evt)
        begin
            @logUtil.putF("Starting", self, "okJButtonActionPerformed")
            imageAnalysisResultsArray = ::Org::Allbinary::Media::Image::Analysis::ImageAnalysis.getInstance().process(@imageProcessorInput.getBufferedImageArray(), self.getColorRangeInterface())
            @jPanel1.removeAll()
            @jPanel1.add(ImageAnalysisResultsJPanel.new(imageAnalysisResultsArray))
            @jPanel1.updateUI()
            @analysisActionJDialog.setVisible(false)
            ImageToolJFrame.imageProcessorInputCompositeInterface = nil
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "okJButtonActionPerformed", e)
        end
    end
    java_overload :okJButtonActionPerformed, 1
    

    def processingJMenuActionPerformed(evt)
    end
    java_overload :processingJMenuActionPerformed, 1
    

    def openImageJMenuItemActionPerformed(evt)
        begin
            @logUtil.putF("Starting", self, "openImageJMenuItemActionPerformed")
            @fileJDialog.setVisible(true)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "openImageJMenuItemActionPerformed", e)
        end
    end
    java_overload :openImageJMenuItemActionPerformed, 1
    

    def onFiles(files)
        begin
            @logUtil.putF("Reading " + (files.length).to_s + " files.", self, "onFiles")
            Arrays.sort(files, Class.new(Comparator.is_a?(Class) ? Comparator : Object) do
                include(Comparator) unless Comparator.is_a?(Class)
                

                def compare(file1, file2)
                    fileNameIndexValue1 = extractIndexNumberIfAnyFromFileName(file1.getName())
                    fileNameIndexValue2 = extractIndexNumberIfAnyFromFileName(file2.getName())
                    return fileNameIndexValue1 - fileNameIndexValue2
                end
                java_overload :compare, 2
                

                def extractIndexNumberIfAnyFromFileName(name)
                    i = 0
                    begin
                        start = (name.rindex("_") || -1) + 1
                        end_ = (name.rindex(".") || -1)
                        number = name[start...end_]
                        i = Integer(number)
                    rescue StandardError => e
                        i = 0
                    end
                    return i
                end
                java_overload :extractIndexNumberIfAnyFromFileName, 1
            end.new())
            bufferedImageArray = Array.new(files.length, nil)
            (0...files.length).each do |index|
                bufferedImageArray[index] = ImageIO.read(files[index])
                if bufferedImageArray[index] == nil
                    raise StandardError.new("Unable to read file: " + (files[index].getPath()).to_s)
                end
            end
            @imageProcessorInput = ::Org::Allbinary::Media::Image::ImageProcessorInput.new(files, bufferedImageArray)
            @fileJDialog.setVisible(false)
            if ImageToolJFrame.imageProcessorInputCompositeInterface != nil
                ImageToolJFrame.imageProcessorInputCompositeInterface.setImageProcessorInput(@imageProcessorInput)
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "onFiles", e)
        end
    end
    java_overload :onFiles, 1
    

    def fileJMenuActionPerformed(evt)
    end
    java_overload :fileJMenuActionPerformed, 1
    

    def analyzeJMenuItemActionPerformed(evt)
        begin
            @logUtil.putF("Starting", self, "analyzeJMenuItemActionPerformed")
            @analysisActionJDialog.setVisible(true)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "analyzeJMenuItemActionPerformed", e)
        end
    end
    java_overload :analyzeJMenuItemActionPerformed, 1
    

    def generateRotationSpriteJMenuItemActionPerformed(evt)
        begin
            @logUtil.putF("Starting", self, "generateRotationSpriteJMenuItemActionPerformed")
            spriteImageJPanel = RotationSpriteImageJPanel.new(@imageProcessorInput)
            @jPanel1.removeAll()
            @jPanel1.add(spriteImageJPanel)
            @jPanel1.updateUI()
            ImageToolJFrame.imageProcessorInputCompositeInterface = spriteImageJPanel
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "generateRotationSpriteJMenuItemActionPerformed", e)
        end
    end
    java_overload :generateRotationSpriteJMenuItemActionPerformed, 1
    

    def generateSpriteSplitterMenuItemActionPerformed(evt)
        begin
            @logUtil.putF("Starting", self, "generateRotationSpriteJMenuItemActionPerformed")
            imageJPanel = SpriteSplitterImageJPanel.new(@imageProcessorInput)
            @jPanel1.removeAll()
            @jPanel1.add(imageJPanel)
            @jPanel1.updateUI()
            ImageToolJFrame.imageProcessorInputCompositeInterface = imageJPanel
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "generateRotationMenuItemActionPerformed", e)
        end
    end
    java_overload :generateSpriteSplitterMenuItemActionPerformed, 1
    

    def generateRotationMenuItemActionPerformed(evt)
        begin
            @logUtil.putF("Starting", self, "generateRotationSpriteJMenuItemActionPerformed")
            rotationImageJPanel = RotationImageJPanel.new(@imageProcessorInput)
            @jPanel1.removeAll()
            @jPanel1.add(rotationImageJPanel)
            @jPanel1.updateUI()
            ImageToolJFrame.imageProcessorInputCompositeInterface = rotationImageJPanel
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "generateRotationMenuItemActionPerformed", e)
        end
    end
    java_overload :generateRotationMenuItemActionPerformed, 1
    

    def scaleImagesJMenuItemActionPerformed(evt)
        begin
            @logUtil.putF(@commonStrings.START, self, "scaleImagesJMenuItemActionPerformed")
            resizeImageJPanel = ResizeImageJPanel.new(@imageProcessorInput)
            @jPanel1.removeAll()
            @jPanel1.add(resizeImageJPanel)
            @jPanel1.updateUI()
            ImageToolJFrame.imageProcessorInputCompositeInterface = resizeImageJPanel
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "scaleImagesJMenuItemActionPerformed", e)
        end
    end
    java_overload :scaleImagesJMenuItemActionPerformed, 1
    

    def createIconsJMenuItemActionPerformed(evt)
        begin
            @logUtil.putF(@commonStrings.START, self, "createIconsJMenuItemActionPerformed")
            createIconImagesJPanel = CreateIconImagesJPanel.new(@imageProcessorInput)
            @jPanel1.removeAll()
            @jPanel1.add(createIconImagesJPanel)
            @jPanel1.updateUI()
            ImageToolJFrame.imageProcessorInputCompositeInterface = createIconImagesJPanel
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "scaleImagesJMenuItemActionPerformed", e)
        end
    end
    java_overload :createIconsJMenuItemActionPerformed, 1
    

    def canvasImagesJMenuItemActionPerformed(evt)
        begin
            @logUtil.putF(@commonStrings.START, self, "canvasImagesJMenuItemActionPerformed")
            resizeImageJPanel = CanvasImageJPanel.new(@imageProcessorInput)
            @jPanel1.removeAll()
            @jPanel1.add(resizeImageJPanel)
            @jPanel1.updateUI()
            ImageToolJFrame.imageProcessorInputCompositeInterface = resizeImageJPanel
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "scaleImagesJMenuItemActionPerformed", e)
        end
    end
    java_overload :canvasImagesJMenuItemActionPerformed, 1
    

    def generateMirrorSpriteMenuItemActionPerformed(evt)
        begin
            @logUtil.putF("Starting", self, "generateMirrorSpriteJMenuItemActionPerformed")
            spriteImageJPanel = MirrorSpriteImageJPanel.new(@imageProcessorInput)
            @jPanel1.removeAll()
            @jPanel1.add(spriteImageJPanel)
            @jPanel1.updateUI()
            ImageToolJFrame.imageProcessorInputCompositeInterface = spriteImageJPanel
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "generateMirrorSpriteJMenuItemActionPerformed", e)
        end
    end
    java_overload :generateMirrorSpriteMenuItemActionPerformed, 1
    

    def mirrorJMenuItemActionPerformed(evt)
        begin
            @logUtil.putF("Starting", self, "generateMirrorJMenuItemActionPerformed")
            mirrorImageJPanel = MirrorImageJPanel.new(@imageProcessorInput)
            @jPanel1.removeAll()
            @jPanel1.add(mirrorImageJPanel)
            @jPanel1.updateUI()
            ImageToolJFrame.imageProcessorInputCompositeInterface = mirrorImageJPanel
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "generateMirrorJMenuItemActionPerformed", e)
        end
    end
    java_overload :mirrorJMenuItemActionPerformed, 1
    

    def getColorRangeInterface()
        colorRangeInterface = ::Org::Allbinary::Media::Image::Analysis::ColorRange.new()
        colorRangeInterface.setMinRed(self.getMinRedJTextField().getText().to_i)
        colorRangeInterface.setMaxRed(self.getMaxRedJTextField().getText().to_i)
        colorRangeInterface.setMinGreen(self.getMinGreenJTextField().getText().to_i)
        colorRangeInterface.setMaxGreen(self.getMaxGreenJTextField().getText().to_i)
        colorRangeInterface.setMinBlue(self.getMinBlueJTextField().getText().to_i)
        colorRangeInterface.setMaxBlue(self.getMaxBlueJTextField().getText().to_i)
        return colorRangeInterface
    end
    java_overload :getColorRangeInterface, 0
    

    def getMaxBlueJTextField()
        return @maxBlueJTextField
    end
    java_overload :getMaxBlueJTextField, 0
    

    def setMaxBlueJTextField(maxBlueJTextField)
        @maxBlueJTextField = @maxBlueJTextField
    end
    java_overload :setMaxBlueJTextField, 1
    

    def getMaxGreenJTextField()
        return @maxGreenJTextField
    end
    java_overload :getMaxGreenJTextField, 0
    

    def setMaxGreenJTextField(maxGreenJTextField)
        @maxGreenJTextField = @maxGreenJTextField
    end
    java_overload :setMaxGreenJTextField, 1
    

    def getMaxRedJTextField()
        return @maxRedJTextField
    end
    java_overload :getMaxRedJTextField, 0
    

    def setMaxRedJTextField(maxRedJTextField)
        @maxRedJTextField = @maxRedJTextField
    end
    java_overload :setMaxRedJTextField, 1
    

    def getMinBlueJTextField()
        return @minBlueJTextField
    end
    java_overload :getMinBlueJTextField, 0
    

    def setMinBlueJTextField(minBlueJTextField)
        @minBlueJTextField = @minBlueJTextField
    end
    java_overload :setMinBlueJTextField, 1
    

    def getMinGreenJTextField()
        return @minGreenJTextField
    end
    java_overload :getMinGreenJTextField, 0
    

    def setMinGreenJTextField(minGreenJTextField)
        @minGreenJTextField = @minGreenJTextField
    end
    java_overload :setMinGreenJTextField, 1
    

    def getMinRedJTextField()
        return @minRedJTextField
    end
    java_overload :getMinRedJTextField, 0
    

    def setMinRedJTextField(minRedJTextField)
        @minRedJTextField = @minRedJTextField
    end
    java_overload :setMinRedJTextField, 1

    def self.imageProcessorInputCompositeInterface()
        ImageToolJFrame.java_static_fields unless @java_static_fields_started
        return defined?(@@imageProcessorInputCompositeInterface) ? @@imageProcessorInputCompositeInterface : nil
    end

    def self.imageProcessorInputCompositeInterface=(value)
        ImageToolJFrame.java_static_fields unless @java_static_fields_started
        @@imageProcessorInputCompositeInterface = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@imageProcessorInputCompositeInterface = nil
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ImageToolJFrame"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Gui; module Dialog; autoload :FileJDialog, "org/allbinary/gui/dialog/FileJDialog" unless const_defined?(:FileJDialog, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageProcessorInput, "org/allbinary/media/image/ImageProcessorInput" unless const_defined?(:ImageProcessorInput, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; autoload :ImageProcessorInputCompositeInterface, "org/allbinary/media/image/ImageProcessorInputCompositeInterface" unless const_defined?(:ImageProcessorInputCompositeInterface, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Analysis; autoload :ColorRange, "org/allbinary/media/image/analysis/ColorRange" unless const_defined?(:ColorRange, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Analysis; autoload :ColorRangeInterface, "org/allbinary/media/image/analysis/ColorRangeInterface" unless const_defined?(:ColorRangeInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Analysis; autoload :ImageAnalysis, "org/allbinary/media/image/analysis/ImageAnalysis" unless const_defined?(:ImageAnalysis, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Image; module Analysis; autoload :ImageAnalysisResults, "org/allbinary/media/image/analysis/ImageAnalysisResults" unless const_defined?(:ImageAnalysisResults, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonPhoneStrings, "org/allbinary/string/CommonPhoneStrings" unless const_defined?(:CommonPhoneStrings, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :CanvasImageJPanel, "org/allbinary/image/gui/CanvasImageJPanel" unless const_defined?(:CanvasImageJPanel, false)
autoload :CreateIconImagesJPanel, "org/allbinary/image/gui/CreateIconImagesJPanel" unless const_defined?(:CreateIconImagesJPanel, false)
autoload :ImageAnalysisResultsJPanel, "org/allbinary/image/gui/ImageAnalysisResultsJPanel" unless const_defined?(:ImageAnalysisResultsJPanel, false)
autoload :ImageUnifierJPanel, "org/allbinary/image/gui/ImageUnifierJPanel" unless const_defined?(:ImageUnifierJPanel, false)
autoload :MirrorImageJPanel, "org/allbinary/image/gui/MirrorImageJPanel" unless const_defined?(:MirrorImageJPanel, false)
autoload :MirrorSpriteImageJPanel, "org/allbinary/image/gui/MirrorSpriteImageJPanel" unless const_defined?(:MirrorSpriteImageJPanel, false)
autoload :ResizeImageJPanel, "org/allbinary/image/gui/ResizeImageJPanel" unless const_defined?(:ResizeImageJPanel, false)
autoload :RotationImageJPanel, "org/allbinary/image/gui/RotationImageJPanel" unless const_defined?(:RotationImageJPanel, false)
autoload :RotationSpriteImageJPanel, "org/allbinary/image/gui/RotationSpriteImageJPanel" unless const_defined?(:RotationSpriteImageJPanel, false)
autoload :SpriteSplitterImageJPanel, "org/allbinary/image/gui/SpriteSplitterImageJPanel" unless const_defined?(:SpriteSplitterImageJPanel, false)
module ::Org; module Jdesktop; module Layout; autoload :GroupLayout, "org/jdesktop/layout/GroupLayout" unless const_defined?(:GroupLayout, false); end; end; end
module ::Org; module Jdesktop; module Layout; autoload :GroupLayout, "org/jdesktop/layout/GroupLayout" unless const_defined?(:GroupLayout, false); end; end; end

begin
    ImageToolJFrame.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

