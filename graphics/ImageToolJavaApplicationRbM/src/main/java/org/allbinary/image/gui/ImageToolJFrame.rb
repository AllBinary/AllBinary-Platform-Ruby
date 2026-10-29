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
# require "java/util/Arrays"
# require "java/util/Comparator"
# require "javax/imageio/ImageIO"
require "org/allbinary/gui/dialog/FileJDialogListenerInterface"

class ImageToolJFrame < JFrame
    include FileJDialogListenerInterface
    attr_accessor :logUtil, :commonStrings, :fileJDialog, :imageProcessorInput, :analysisActionJDialog, :analyzeJMenuItem, :blueJLabel, :colorRangeJLabel, :createStripImageJMenuItem, :fileJMenu, :generateSpriteSplitterMenuItem, :generateRotationMenuItem, :generateMirrorSpriteMenuItem, :generateRotationSpriteJMenuItem, :greenJLabel, :jPanel1, :mainJMenuBar, :maxBlueJTextField, :maxGreenJTextField, :maxJLabel, :maxRedJTextField, :minBlueJTextField, :minGreenJTextField, :minJLabel, :minRedJTextField, :mirrorJMenuItem, :okJButton, :openImageJMenuItem, :processingJMenu, :redJLabel, :scaleImagesJMenuItem, :canvasImagesJMenuItem, :createIconImagesJMenuItem, :titleJLabel

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @fileJDialog = nil
        @imageProcessorInput = nil
        @analysisActionJDialog = nil
        @analyzeJMenuItem = nil
        @blueJLabel = nil
        @colorRangeJLabel = nil
        @createStripImageJMenuItem = nil
        @fileJMenu = nil
        @generateSpriteSplitterMenuItem = nil
        @generateRotationMenuItem = nil
        @generateMirrorSpriteMenuItem = nil
        @generateRotationSpriteJMenuItem = nil
        @greenJLabel = nil
        @jPanel1 = nil
        @mainJMenuBar = nil
        @maxBlueJTextField = nil
        @maxGreenJTextField = nil
        @maxJLabel = nil
        @maxRedJTextField = nil
        @minBlueJTextField = nil
        @minGreenJTextField = nil
        @minJLabel = nil
        @minRedJTextField = nil
        @mirrorJMenuItem = nil
        @okJButton = nil
        @openImageJMenuItem = nil
        @processingJMenu = nil
        @redJLabel = nil
        @scaleImagesJMenuItem = nil
        @canvasImagesJMenuItem = nil
        @createIconImagesJMenuItem = nil
        @titleJLabel = nil
    end
    

    def initialize()
        super()
        initialize_fields
        self.initComponents()
        commonPhoneStrings = CommonPhoneStrings.getInstance()
        self.setSize(640, 480)
        self.getMaxRedJTextField().setText("255")
        self.getMaxGreenJTextField().setText("255")
        self.getMaxBlueJTextField().setText("255")
        self.getMinRedJTextField().setText(commonPhoneStrings.ZERO)
        self.getMinGreenJTextField().setText(commonPhoneStrings.ZERO)
        self.getMinBlueJTextField().setText(commonPhoneStrings.ZERO)
        @fileJDialog = FileJDialog.new()
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
        end.new())
        analysisActionJDialogLayout = GroupLayout.new(@analysisActionJDialog.getContentPane())
        @analysisActionJDialog.getContentPane().setLayout(analysisActionJDialogLayout)
        analysisActionJDialogLayout.setHorizontalGroup(analysisActionJDialogLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING).add(analysisActionJDialogLayout.createSequentialGroup().addContainerGap().add(analysisActionJDialogLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING).add(analysisActionJDialogLayout.createSequentialGroup().add(analysisActionJDialogLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING).add(@blueJLabel).add(@greenJLabel).add(@redJLabel).add(@colorRangeJLabel)).add(29, 29, 29).add(analysisActionJDialogLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING).add(org.jdesktop.layout.GroupLayout.TRAILING, @minJLabel, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 58, 32767).add(analysisActionJDialogLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false).add(org.jdesktop.layout.GroupLayout.LEADING, @minBlueJTextField).add(org.jdesktop.layout.GroupLayout.LEADING, @minGreenJTextField).add(org.jdesktop.layout.GroupLayout.LEADING, @minRedJTextField, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 42, 32767).add(org.jdesktop.layout.GroupLayout.LEADING, @okJButton))).addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED).add(analysisActionJDialogLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING).add(org.jdesktop.layout.GroupLayout.LEADING, analysisActionJDialogLayout.createSequentialGroup().add(analysisActionJDialogLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false).add(org.jdesktop.layout.GroupLayout.LEADING, @maxRedJTextField).add(org.jdesktop.layout.GroupLayout.LEADING, analysisActionJDialogLayout.createSequentialGroup().add(1, 1, 1).add(analysisActionJDialogLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING).add(@maxBlueJTextField).add(@maxGreenJTextField, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 43, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))).addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 17, 32767)).add(org.jdesktop.layout.GroupLayout.LEADING, @maxJLabel, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 61, 32767)).addContainerGap()).add(org.jdesktop.layout.GroupLayout.TRAILING, analysisActionJDialogLayout.createSequentialGroup().add(@titleJLabel).add(25, 25, 25)))))
        analysisActionJDialogLayout.setVerticalGroup(analysisActionJDialogLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING).add(analysisActionJDialogLayout.createSequentialGroup().add(@titleJLabel).addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED).add(analysisActionJDialogLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE).add(@minJLabel).add(@colorRangeJLabel).add(@maxJLabel)).addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED).add(analysisActionJDialogLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING).add(@redJLabel).add(analysisActionJDialogLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE).add(@minRedJTextField, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE).add(@maxRedJTextField, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))).addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED).add(analysisActionJDialogLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING).add(@greenJLabel).add(analysisActionJDialogLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE).add(@minGreenJTextField, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE).add(@maxGreenJTextField, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))).addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED).add(analysisActionJDialogLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING).add(@blueJLabel).add(analysisActionJDialogLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE).add(@minBlueJTextField, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE).add(@maxBlueJTextField, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))).add(16, 16, 16).add(@okJButton).addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 32767)))
        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE)
        getContentPane().setLayout(GridLayout.new(1, 0))
        @jPanel1.setLayout(GridLayout.new(1, 0))
        getContentPane().add(@jPanel1)
        @fileJMenu.setText("File")
        @fileJMenu.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                fileJMenuActionPerformed(evt)
            end
        end.new())
        @openImageJMenuItem.setText("Open")
        @openImageJMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                openImageJMenuItemActionPerformed(evt)
            end
        end.new())
        @fileJMenu.add(@openImageJMenuItem)
        @mainJMenuBar.add(@fileJMenu)
        @processingJMenu.setText("Processing")
        @processingJMenu.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                processingJMenuActionPerformed(evt)
            end
        end.new())
        @analyzeJMenuItem.setText("Image Analyze")
        @analyzeJMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                analyzeJMenuItemActionPerformed(evt)
            end
        end.new())
        @processingJMenu.add(@analyzeJMenuItem)
        @generateMirrorSpriteMenuItem.setText("Mirror Sprite Generator")
        @generateMirrorSpriteMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                generateMirrorSpriteMenuItemActionPerformed(evt)
            end
        end.new())
        @processingJMenu.add(@generateMirrorSpriteMenuItem)
        @generateRotationSpriteJMenuItem.setText("Rotation Sprite Generator")
        @generateRotationSpriteJMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                generateRotationSpriteJMenuItemActionPerformed(evt)
            end
        end.new())
        @processingJMenu.add(@generateRotationSpriteJMenuItem)
        @generateSpriteSplitterMenuItem.setText("Sprite Splitter Generator")
        @generateSpriteSplitterMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                generateSpriteSplitterMenuItemActionPerformed(evt)
            end
        end.new())
        @processingJMenu.add(@generateSpriteSplitterMenuItem)
        @generateRotationMenuItem.setText("Rotate Image Generator")
        @generateRotationMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                generateRotationMenuItemActionPerformed(evt)
            end
        end.new())
        @processingJMenu.add(@generateRotationMenuItem)
        @createStripImageJMenuItem.setText("Multi Image Unifier")
        @createStripImageJMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                createStripImageJMenuItemActionPerformed(evt)
            end
        end.new())
        @processingJMenu.add(@createStripImageJMenuItem)
        @mirrorJMenuItem.setText("Mirror Image(s)")
        @mirrorJMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                mirrorJMenuItemActionPerformed(evt)
            end
        end.new())
        @processingJMenu.add(@mirrorJMenuItem)
        @scaleImagesJMenuItem.setText("Scale Image(s)")
        @scaleImagesJMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                scaleImagesJMenuItemActionPerformed(evt)
            end
        end.new())
        @processingJMenu.add(@scaleImagesJMenuItem)
        @canvasImagesJMenuItem.setText("Canvas Image(s)")
        @canvasImagesJMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                canvasImagesJMenuItemActionPerformed(evt)
            end
        end.new())
        @processingJMenu.add(@canvasImagesJMenuItem)
        @createIconImagesJMenuItem.setText("Create Icon Image(s)")
        @createIconImagesJMenuItem.addActionListener(Class.new(ActionListener.is_a?(Class) ? ActionListener : Object) do
            include(ActionListener) unless ActionListener.is_a?(Class)
            

            def actionPerformed(evt)
                createIconsJMenuItemActionPerformed(evt)
            end
        end.new())
        @processingJMenu.add(@createIconImagesJMenuItem)
        @mainJMenuBar.add(@processingJMenu)
        setJMenuBar(@mainJMenuBar)
        pack()
    end
    

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
    

    def okJButtonActionPerformed(evt)
        begin
            @logUtil.putF("Starting", self, "okJButtonActionPerformed")
            imageAnalysisResultsArray = ImageAnalysis.getInstance().process(@imageProcessorInput.getBufferedImageArray(), self.getColorRangeInterface())
            @jPanel1.removeAll()
            @jPanel1.add(ImageAnalysisResultsJPanel.new(imageAnalysisResultsArray))
            @jPanel1.updateUI()
            @analysisActionJDialog.setVisible(false)
            ImageToolJFrame.imageProcessorInputCompositeInterface = nil
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "okJButtonActionPerformed", e)
        end
    end
    

    def processingJMenuActionPerformed(evt)
    end
    

    def openImageJMenuItemActionPerformed(evt)
        begin
            @logUtil.putF("Starting", self, "openImageJMenuItemActionPerformed")
            @fileJDialog.setVisible(true)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "openImageJMenuItemActionPerformed", e)
        end
    end
    

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
            end.new())
            bufferedImageArray = Array.new(files.length, nil)
            (0...files.length).each do |index|
                bufferedImageArray[index] = ImageIO.read(files[index])
                if bufferedImageArray[index] == nil
                    raise StandardError.new("Unable to read file: " + (files[index].getPath()).to_s)
                end
            end
            @imageProcessorInput = ImageProcessorInput.new(files, bufferedImageArray)
            @fileJDialog.setVisible(false)
            if ImageToolJFrame.imageProcessorInputCompositeInterface != nil
                ImageToolJFrame.imageProcessorInputCompositeInterface.setImageProcessorInput(@imageProcessorInput)
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "onFiles", e)
        end
    end
    

    def fileJMenuActionPerformed(evt)
    end
    

    def analyzeJMenuItemActionPerformed(evt)
        begin
            @logUtil.putF("Starting", self, "analyzeJMenuItemActionPerformed")
            @analysisActionJDialog.setVisible(true)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "analyzeJMenuItemActionPerformed", e)
        end
    end
    

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
    

    def getColorRangeInterface()
        colorRangeInterface = ColorRange.new()
        colorRangeInterface.setMinRed(self.getMinRedJTextField().getText().to_i)
        colorRangeInterface.setMaxRed(self.getMaxRedJTextField().getText().to_i)
        colorRangeInterface.setMinGreen(self.getMinGreenJTextField().getText().to_i)
        colorRangeInterface.setMaxGreen(self.getMaxGreenJTextField().getText().to_i)
        colorRangeInterface.setMinBlue(self.getMinBlueJTextField().getText().to_i)
        colorRangeInterface.setMaxBlue(self.getMaxBlueJTextField().getText().to_i)
        return colorRangeInterface
    end
    

    def getMaxBlueJTextField()
        return @maxBlueJTextField
    end
    

    def setMaxBlueJTextField(maxBlueJTextField)
        @maxBlueJTextField = @maxBlueJTextField
    end
    

    def getMaxGreenJTextField()
        return @maxGreenJTextField
    end
    

    def setMaxGreenJTextField(maxGreenJTextField)
        @maxGreenJTextField = @maxGreenJTextField
    end
    

    def getMaxRedJTextField()
        return @maxRedJTextField
    end
    

    def setMaxRedJTextField(maxRedJTextField)
        @maxRedJTextField = @maxRedJTextField
    end
    

    def getMinBlueJTextField()
        return @minBlueJTextField
    end
    

    def setMinBlueJTextField(minBlueJTextField)
        @minBlueJTextField = @minBlueJTextField
    end
    

    def getMinGreenJTextField()
        return @minGreenJTextField
    end
    

    def setMinGreenJTextField(minGreenJTextField)
        @minGreenJTextField = @minGreenJTextField
    end
    

    def getMinRedJTextField()
        return @minRedJTextField
    end
    

    def setMinRedJTextField(minRedJTextField)
        @minRedJTextField = @minRedJTextField
    end

    def self.imageProcessorInputCompositeInterface()
        return defined?(@@imageProcessorInputCompositeInterface) ? @@imageProcessorInputCompositeInterface : nil
    end

    def self.imageProcessorInputCompositeInterface=(value)
        @@imageProcessorInputCompositeInterface = value
    end
end

require "org/allbinary/gui/dialog/FileJDialog"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/media/image/ImageProcessorInput"
require "org/allbinary/media/image/ImageProcessorInputCompositeInterface"
require "org/allbinary/media/image/analysis/ColorRange"
require "org/allbinary/media/image/analysis/ColorRangeInterface"
require "org/allbinary/media/image/analysis/ImageAnalysis"
require "org/allbinary/media/image/analysis/ImageAnalysisResults"
require "org/allbinary/string/CommonPhoneStrings"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/image/gui/CanvasImageJPanel"
require "org/allbinary/image/gui/CreateIconImagesJPanel"
require "org/allbinary/image/gui/ImageAnalysisResultsJPanel"
require "org/allbinary/image/gui/ImageUnifierJPanel"
require "org/allbinary/image/gui/MirrorImageJPanel"
require "org/allbinary/image/gui/MirrorSpriteImageJPanel"
require "org/allbinary/image/gui/ResizeImageJPanel"
require "org/allbinary/image/gui/RotationImageJPanel"
require "org/allbinary/image/gui/RotationSpriteImageJPanel"
require "org/allbinary/image/gui/SpriteSplitterImageJPanel"

class ImageToolJFrame
    @@imageProcessorInputCompositeInterface = nil
end

