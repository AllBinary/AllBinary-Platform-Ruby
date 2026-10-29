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
# package org.allbinary.game.displayable.canvas

require "java/lang/Object"
# require "javax/microedition/lcdui/Command"
# require "javax/microedition/lcdui/CommandListener"
# require "javax/microedition/lcdui/Graphics"
# require "javax/microedition/lcdui/Item"
require "org/allbinary/canvas/RunnableCanvas"
require "org/allbinary/graphics/displayable/event/DisplayChangeEventListener"
require "org/allbinary/game/displayable/canvas/DemoPaintableInterface"
require "org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface"
require "org/allbinary/game/displayable/canvas/MenuListener"

class DemoCanvas < RunnableCanvas
    include GameCanvasRunnableInterface
    include MenuListener
    include DisplayChangeEventListener
    include DemoPaintableInterface
    attr_accessor :basicColorFactory, :myCommandsFactory, :gameAdStateFactory, :gameInputStrings, :gameStateFactory, :threadFactoryUtil, :formUtil, :fullscreenPaintable, :basicGameDemoPaintable, :specialAnimationInterface, :paintedSpecialAnimationInterface, :fullScreenUtil, :gameCanvas, :highScoresHelper, :realHighScoresPaintable, :highScoresPaintable, :state, :canvasThread, :timeDelayHelper, :basicColor, :abeClientInformation, :highScoresFactoryInterface, :menuInputProcessor, :menuForm, :gameInitializationInterfaceFactoryInterface, :initialized, :demoGameRunnable, :defaultPaintableInterface, :paintableInterface, :overlayPaintable, :progressPaintable, :tempWait, :inputToGameKeyMapping, :gameRunnable, :isSingleKeyRepeatableProcessing, :NONE, :gameKeyEventFactory, :lastKeyNotMapped, :SET_STATE, :baseGameStatistics

    def initialize_fields
        @basicColorFactory = BasicColorFactory.getInstance()
        @myCommandsFactory = MyCommandsFactory.getInstance()
        @gameAdStateFactory = GameAdStateFactory.getInstance()
        @gameInputStrings = GameInputStrings.getInstance()
        @gameStateFactory = GameStateFactory.getInstance()
        @threadFactoryUtil = ThreadFactoryUtil.getInstance()
        @formUtil = FormUtil.getInstance()
        @fullscreenPaintable = FullScreenPaintableFactory.getInstance().paintable
        @basicGameDemoPaintable = StatePaintableFactory.getInstance()
        @specialAnimationInterface = SpecialAnimation.getInstance()
        @paintedSpecialAnimationInterface = SpecialAnimation.getInstance()
        @fullScreenUtil = FullScreenUtil.getInstance()
        @gameCanvas = NullGameCanvas.getInstance()
        @highScoresHelper = HighScoresHelper.new()
        @realHighScoresPaintable = HighScoresPaintable.new()
        @highScoresPaintable = NullPaintable.getInstance()
        @state = 0
        @canvasThread = NullThread::NULL_THREAD
        @timeDelayHelper = TimeDelayHelper.new(6000)
        @basicColor = @basicColorFactory.RED
        @abeClientInformation = nil
        @highScoresFactoryInterface = nil
        @menuInputProcessor = NoMenuInputProcessor.getInstance()
        @menuForm = ScrollSelectionForm.getNullScrollSelectionForm()
        @gameInitializationInterfaceFactoryInterface = nil
        @initialized = false
        @demoGameRunnable = nil
        @defaultPaintableInterface = NullPaintable.getInstance()
        @paintableInterface = NullPaintable.getInstance()
        @overlayPaintable = nil
        @progressPaintable = ProgressCanvasFactory.getLazyInstance()
        @tempWait = NullWaitGameRunnable.getInstance().WAIT
        @inputToGameKeyMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping()
        @gameRunnable = NullWaitGameRunnable.getInstance()
        @isSingleKeyRepeatableProcessing = Features.getInstance().isFeature(InputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS)
        @NONE = GameKeyFactory.getInstance().NONE
        @gameKeyEventFactory = GameKeyEventFactory.getInstance()
        @lastKeyNotMapped = -1
        @SET_STATE = "setState"
        @baseGameStatistics = GameStatisticsFactory.getInstance()
    end
    

    def initialize(abeClientInformation, commandListener, highScoresFactoryInterface, paintable, overlayPaintable, gameInitializationInterfaceFactoryInterface, isContinue)
        super(commandListener, CurrentDisplayableFactory.getInstance().DEFAULT_CHILD_NAME_LIST, true)
        initialize_fields
        @abeClientInformation = abeClientInformation
        self.setWait(NullWaitGameRunnable.getInstance().WAIT)
        @gameInitializationInterfaceFactoryInterface = gameInitializationInterfaceFactoryInterface
        GameInitializationUtil.getInstance().initDemo(abeClientInformation, self, gameInitializationInterfaceFactoryInterface)
        ResizableListenerHandler.getInstance().fireEvent(false)
        @overlayPaintable = overlayPaintable
        @highScoresFactoryInterface = highScoresFactoryInterface
        self.setDefaultPaintableInterface(paintable)
        self.setPaintableInterface(self.getDefaultPaintableInterface())
        if isContinue
            self.addCommand(GameCommandsFactory.getInstance().CONTINUE_COMMAND)
        end
        if ChangedGameFeatureListener.getInstance().isChangedFeature(GameFeatureFactory.getInstance().SOUND)
            self.mediaInit()
        end
        @demoGameRunnable = DemoGameStartupRunnable.new(self)
        DisplayChangeEventHandler.getInstance().addListenerInterface(self)
    end
    

    def onEvent(eventObject)
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    

    def onDisplayChangeEvent(displayChangeEvent)
        begin
            @logUtil.putF(StringMaker.new().append(@commonLabels.START_LABEL).append(@displayInfo.to_s).to_s, self, @canvasStrings.ON_DISPLAY_CHANGE_EVENT)
            scrollSelectionForm = self.getMenuForm()
            if scrollSelectionForm != nil
                formType = FormTypeFactory.getInstance().getFormType()
                rectangle = @formUtil.createFormRectangle()
                scrollSelectionForm.init(rectangle, formType)
            end
            @overlayPaintable.init()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @canvasStrings.ON_DISPLAY_CHANGE_EVENT, e)
        end
    end
    

    def getCustomCommands()
        gameCommandsFactory = GameCommandsFactory.getInstance()
        if J2MEUtil.isHTML()
            commandArray = [gameCommandsFactory.START_COMMAND, HighScoreCommands.getInstance().DISPLAY, GameInputMappingCanvas::DISPLAY, gameCommandsFactory.DISPLAY_ABOUT]
            return commandArray
        else
            commandList = BasicArrayListD.new()
            commandList.add(gameCommandsFactory.START_COMMAND)
            inApplicationPurchaseFactory = InApplicationPurchaseFactory.getInstance()
            if inApplicationPurchaseFactory.isEnabled()
                list = LockableFeatureFactory.getInstance().getList()
                if list.size() > 0 && !inApplicationPurchaseFactory.isPurchased(list.get(0))
                    commandList.add(gameCommandsFactory.BUY_COMMAND)
                end
            end
            commandList.add(HighScoreCommands.getInstance().DISPLAY)
            begin
                isOverScan = OperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan()
                if SWTUtil.isSWT
                    commandList.add(GameInputMappingCanvas::DISPLAY)
                elsif !isOverScan
                    commandList.add(gameCommandsFactory.DISPLAY_OPTIONS)
                    commandList.add(gameCommandsFactory.DISPLAY_LOAD_FORM)
                    commandList.add(GameInputMappingCanvas::DISPLAY)
                end
            rescue StandardError => e
            end
            commandList.add(gameCommandsFactory.DISPLAY_ABOUT)
            commandArray = commandList.toArray()
            return commandArray
        end
    end
    

    def initCommands(cmdListener)
        self.removeAllCommands()
        commandArray = self.getCustomCommands()
        size = commandArray.length
        (0...size).each do |index|
            self.addCommand(commandArray[index])
        end
        CustomGameMenuUtil.add(self)
        self.setCommandListener(cmdListener)
    end
    

    # throws Exception
    def initPostPaint()
    end
    

    # throws Exception
    def mediaInit()
        AllBinaryMediaManager.init(EarlySoundsFactory.getInstance())
    end
    

    def itemStateChanged(item)
        ForcedLogUtil.log(@commonStrings.NOT_IMPLEMENTED, self)
    end
    

    # throws Exception
    def initMenu()
        self.close()
        commandTextItemArrayFactory = DemoLimitedCommandTextItemArrayFactory.getInstance().getCommandTextItemArrayFactory()
        items = commandTextItemArrayFactory.getInstance(self.getCommandStack(), @basicColorFactory.BLACK, @basicColorFactory.WHITE)
        formType = FormTypeFactory.getInstance().getFormType()
        rectangle = @formUtil.createFormRectangle()
        PreLogUtil.put(StringMaker.new().append(@commonLabels.START_LABEL).append(@displayInfo.to_s).to_s, self, "initMenu")
        scrollSelectionForm = CommandCurrentSelectionFormFactory.getInstance(StringUtil.getInstance().EMPTY_STRING, items, rectangle, formType, 15, true, @basicColorFactory.BLACK, @basicColorFactory.WHITE)
        self.setMenuForm(scrollSelectionForm)
        formType2 = FormTypeFactory.getInstance().getFormType()
        rectangle2 = @formUtil.createFormRectangle()
        scrollSelectionForm.init(rectangle2, formType2)
        if self.getMenuForm() != ScrollSelectionFormNoneFactory.getInstance()
            self.setMenuInputProcessor(CommandFormInputProcessor.new(BasicArrayListD.new(), -1, self, self.getMenuForm()))
        end
        self.open()
    end
    

    def open()
        BasicMotionGesturesHandler.getInstance().addListenerInterface(self.getMenuInputProcessor())
        GameKeyEventHandler.getInstance().addListener(self.getMenuInputProcessor())
    end
    

    def close()
        BasicMotionGesturesHandler.getInstance().removeListener(self.getMenuInputProcessor())
        GameKeyEventHandler.getInstance().removeListener(self.getMenuInputProcessor())
    end
    

    def getSourceId()
        return DemoCanvas.id
    end
    

    def keyPressed(keyCode)
        self.keyPressedByDevice(keyCode, 0)
    end
    

    def keyReleased(keyCode)
        self.keyReleasedByDevice(keyCode, 0)
    end
    

    def keyRepeated(keyCode)
        self.keyRepeatedByDevice(keyCode, 0)
    end
    

    def keyPressedByDevice(keyCode, deviceId)
        self.addGameKeyEvent(keyCode, false)
    end
    

    def keyReleasedByDevice(keyCode, deviceId)
        self.removeGameKeyEvent(keyCode, false)
    end
    

    def keyRepeatedByDevice(keyCode, deviceId)
        if @isSingleKeyRepeatableProcessing
            self.addGameKeyEvent(keyCode, true)
        end
    end
    

    def addGameKeyEvent(keyCode, repeated)
        begin
            gameKey = @inputToGameKeyMapping.getInstanceForCanvas(self, keyCode)
            if gameKey != @NONE
                gameKeyEvent = @gameKeyEventFactory.getInstanceForInput(self, gameKey)
                DownGameKeyEventHandler.getInstance().fireEvent(gameKeyEvent)
            else
                if @lastKeyNotMapped != keyCode
                    @lastKeyNotMapped = keyCode
                    @logUtil.putF(StringMaker.new().append(@gameInputStrings.NO_KEY).appendint(keyCode).to_s, self, @gameInputStrings.ADD_KEY_EVENT)
                end
            end
        rescue StandardError => e
            @logUtil.put("Key Event Error", self, @gameInputStrings.ADD_KEY_EVENT, e)
        end
    end
    

    def removeGameKeyEvent(keyCode, repeated)
        begin
            gameKey = @inputToGameKeyMapping.getInstanceForCanvas(self, keyCode)
            if gameKey != @NONE
                gameKeyEvent = @gameKeyEventFactory.getInstanceForInput(self, gameKey)
                UpGameKeyEventHandler.getInstance().fireEvent(gameKeyEvent)
            else
                @logUtil.putF(StringMaker.new().append(@gameInputStrings.NO_KEY).appendint(keyCode).to_s, self, @gameInputStrings.REMOVE_KEY_EVENT)
            end
        rescue StandardError => e
            @logUtil.put("Key Event Error", self, @gameInputStrings.REMOVE_KEY_EVENT, e)
        end
    end
    

    def pause()
        java_monitor.synchronize do
        self.close()
        self.setPaused(true)
        @gameRunnable = NullWaitGameRunnable.getInstance()
        @gameCanvas.pause()
        end
    end
    

    def unPause()
        java_monitor.synchronize do
        self.open()
        @gameCanvas.unPause()
        @gameRunnable = @gameCanvas.gameRunnable
        self.setPaused(false)
        end
    end
    

    def isPausable()
        if CurrentDisplayableFactory.getInstance().getUsedRunnable() == NullWaitGameRunnable.getInstance()
            return true
        else
            return false
        end
    end
    

    def isGameOver()
        @logUtil.putF(StringMaker.new().append(@commonStrings.NOT_IMPLEMENTED).append(" since not a game").to_s, self, "isGameOver")
        return false
    end
    

    # throws Exception
    def setLoadStateHashtable(hashtable)
        @logUtil.putF("Trying to continue a demo lol - only continue a game canvas not the demo", self, "setLoadStateHashtable")
    end
    

    # throws Exception
    def getLoadStateHashtable()
        @logUtil.putF("Trying to continue a demo lol - only continue a game canvas not the demo", self, "getLoadStateHashtable")
        return @stdUtil.NULL_TABLE
    end
    

    # throws Exception
    def getCurrentStateHashtable()
        @logUtil.putF("Trying to save the AI lol", self, "getCurrentStateHashtable")
        return @stdUtil.NULL_TABLE
    end
    

    def setHighScoreSubmitted(isNotUsed)
    end
    

    def paint(graphics)
        @paintableInterface.paint(graphics)
        @paintedSpecialAnimationInterface.paintXY(graphics, 0, 0)
        @highScoresPaintable.paint(graphics)
        self.getBasicGameDemoPaintable().paint(graphics)
        @overlayPaintable.paint(graphics)
        @fullscreenPaintable.paint(graphics)
        @progressPaintable.paint(graphics)
    end
    

    def paintThreed(graphics)
        @paintableInterface.paintThreed(graphics)
        @paintedSpecialAnimationInterface.paintThreedXYZ(graphics, 0, 0, 0)
    end
    

    def processGameOver()
        java_monitor.synchronize do
        @logUtil.putF("Not Implemented since not a game", self, "setGameOver")
        end
    end
    

    def demoStateChange()
        newState = @state + 1
        if newState > 2
            newState = 0
        elsif newState == 2
            if !@highScoresHelper.isAnyHighScores()
                newState = 0
            else
                highScores = @highScoresHelper.getNextHighScores()
                if highScores == NullHighScoresSingletonFactory.getInstance()
                    newState = 0
                else
                    self.getRealHighScoresPaintable().setHighScores(highScores)
                end
            end
        end
        self.setState(newState)
        self.updateDemoState()
    end
    

    def updateDemoState()
        PreLogUtil.put(SmallIntegerSingletonFactory.getInstance().createInstance(@state).to_s, self, @SET_STATE)
        self.getBasicGameDemoPaintable().setState(@state)
        if @state == 0
            @highScoresPaintable = NullPaintable.getInstance()
            @paintedSpecialAnimationInterface = self.getSpecialAnimationInterface()
            if !@demoGameRunnable.isRunning() && @gameCanvas.isInitialized()
                self.getSpecialAnimationInterface().reset()
            end
        elsif @state == 1
            @paintedSpecialAnimationInterface = SpecialAnimation.getInstance()
        elsif @state == 2
            @highScoresPaintable = self.getRealHighScoresPaintable()
        end
        gameAdState = @gameAdStateFactory.getCurrentInstance()
        gameAdState.processPageAdState()
    end
    

    # throws Exception
    def getNextRandom()
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    

    # throws Exception
    def createGameLayerManager(randomValue)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    

    # throws Exception
    def createRunnable(randomLevel)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    

    # throws Exception
    def create()
        PreLogUtil.put(@commonStrings.START, self, "create")
        @highScoresPaintable = NullPaintable.getInstance()
        randomLevel = self.getNextRandom()
        @gameCanvas = self.createRunnable(randomLevel)
        @basicColor = @gameCanvas.getLayerManager().getForegroundBasicColor()
        self.getRealHighScoresPaintable().setBasicColorP(@basicColor)
        @gameCanvas.setGameCanvasStartListener(self)
        gameInfo = @gameCanvas.getLayerManager().getGameInfo()
        self.getHighScoresFactoryInterface().fetchHighScores(gameInfo, @highScoresHelper)
    end
    

    # throws Exception
    def start()
        gameCanvas = @gameCanvas
        PreLogUtil.put(StringMaker.new().append("Game Thread in DemoCanvas: ").append(@stringUtil.toString(gameCanvas)).to_s, self, @commonStrings.START)
        @canvasThread = @threadFactoryUtil.getInstanceGameCanvasRunnable(gameCanvas)
        @gameCanvas.setThread(@canvasThread)
        @threadFactoryUtil.start(@canvasThread)
        if self.getWait() == NullWaitGameRunnable.getInstance().WAIT
            self.setWait(self.getTempWait())
        end
    end
    

    def preDemoProcess()
        if !@gameCanvas.isInitialized() || @gameCanvas.getTitle() == NullGameCanvas::NO_GAME
            if AllBinaryMediaManager.update()
                if !PrimaryPlayerQueueFactory.getInstance().process()
                    SecondaryPlayerQueueFactory.getInstance().process()
                end
            end
        end
        @overlayPaintable.update()
    end
    

    # throws Exception
    def process()
        super()
        self.getMenuInputProcessor().processInputList()
        self.preDemoProcess()
        if @state == 0
            indexedAnimationBehavior = (self.getSpecialAnimationInterface().getAnimationBehavior())
            if indexedAnimationBehavior.loopIndex < 1
                @timeDelayHelper.setStartTimeTNT()
            end
            demoGameMidlet = self.getCustomCommandListener()
            if @gameCanvas != NullGameCanvas.getInstance() && @gameCanvas.isGameOver()
                self.stopGameDemo()
                randomLevel = self.getNextRandom()
                gameInfo = @gameCanvas.getLayerManager().getGameInfo()
                gameInfo.setCurrentLevel(randomLevel)
                @gameCanvas.setGameOver(false)
                self.start()
            elsif @gameCanvas == NullGameCanvas.getInstance() && demoGameMidlet.isReady()
                if !@demoGameRunnable.isRunning()
                    self.startDemoGame()
                    @demoGameRunnable.setRunning(true)
                    thread = @threadFactoryUtil.getInstanceForRunnable(@demoGameRunnable)
                    @demoGameRunnable.setThread(thread)
                    @threadFactoryUtil.start(thread)
                end
            end
        end
    end
    

    # throws Exception
    def startDemoGame()
        DemoCanvasProgressUtil.showProgress(self)
    end
    

    # throws Exception
    def stopGameDemo()
        if @gameCanvas != NullGameCanvas.getInstance()
            @logUtil.putF("Set Running False", self, "stopGameDemo")
            @gameCanvas.setRunning(false)
        end
        ThreadUtil.getInstance().join(@canvasThread)
    end
    

    def showGamePaintable()
        _METHOD_NAME = "showGamePaintable"
        PreLogUtil.put(@commonStrings.START, self, _METHOD_NAME)
        isDefault = J2MEUtil.isHTML()
        if @gameCanvas != NullGameCanvas.getInstance() && (@gameCanvas.isRunning() || isDefault || SWTUtil.isSWT) && !(@gameCanvas.getType() == NullGameCanvas::TYPE)
            @gameRunnable = @gameCanvas.gameRunnable
            PreLogUtil.put("Showing Game", self, _METHOD_NAME)
            self.setPaintableInterface(@gameCanvas)
        else
            @gameRunnable = NullWaitGameRunnable.getInstance()
            PreLogUtil.put("Not Showing Game", self, _METHOD_NAME)
            self.setPaintableInterface(self.getDefaultPaintableInterface())
        end
    end
    

    def isReadyForStateChange()
        return !@demoGameRunnable.isRunning() && @gameCanvas.isInitialized()
    end
    

    # throws Exception
    def processGame()
        @gameRunnable.run()
        if !@specialAnimationInterface.isComplete() && self.isReadyForStateChange()
            @specialAnimationInterface.nextFrame()
        end
        if @timeDelayHelper.isTimeTNT() && self.isReadyForStateChange()
            self.demoStateChange()
        else
            self.process()
        end
    end
    

    def run()
        @logUtil.putF(@commonStrings.START_RUNNABLE, self, @commonStrings.RUN)
        begin
            progressCanvas = ProgressCanvasFactory.getInstance()
            features = Features.getInstance()
            openGLFeatureFactory = OpenGLFeatureFactory.getInstance()
            progressCanvas.addNormalPortion(50, "Demo Thread")
            self.setCurrentThread()
            self.setRunning(true)
            if features.isFeature(MainFeatureFactory.getInstance().LOAD_ONDEMAND)
                progressCanvas.end_()
            else
                progressCanvas.addNormalPortion(50, "Demo Thread Running")
            end
            @fullScreenUtil.initOnRun(self, self.getCustomCommandListener())
            self.initMenu()
            self.initPostPaint()
            self.updateDemoState()
            if features.isDefault(openGLFeatureFactory.OPENGL_AS_GAME_THREAD)
                while @gameCanvas == NullGameCanvas.getInstance() || !@gameCanvas.isInitialized()
                    @loopTimeHelper.setStartTimeTNT()
                    self.processGame()
                    self.processLoopSleep()
                end
                demoGameRunnable = DemoGameRunnable.new(self)
                currentDisplayableFactory = CurrentDisplayableFactory.getInstance()
                currentDisplayableFactory.setRunnable(demoGameRunnable)
                currentDisplayableFactory.setMyCanvas(self)
                OpenGLThreadUtil.getInstance().onResume()
            end
            if features.isDefault(openGLFeatureFactory.OPENGL_AS_GAME_THREAD) || J2MEUtil.isHTML()
                demoGameRunnable = DemoGameRunnable.new(self)
                currentDisplayableFactory = CurrentDisplayableFactory.getInstance()
                currentDisplayableFactory.setRunnable(demoGameRunnable)
                currentDisplayableFactory.setMyCanvas(self)
            else
                while self.isRunning()
                    self.run3()
                end
                self.end_()
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.RUN, e)
        end
        @logUtil.putF(@commonStrings.END_RUNNABLE, self, @commonStrings.RUN)
    end
    

    # throws Exception
    def run3()
        @loopTimeHelper.setStartTimeTNT()
        self.processGame()
        self.processLoopSleep()
    end
    

    def setRunning(running)
        super(running)
        begin
            features = Features.getInstance()
            openGLFeatureFactory = OpenGLFeatureFactory.getInstance()
            if running
            else
                if (features.isDefault(openGLFeatureFactory.OPENGL) || J2MEUtil.isHTML()) || SWTUtil.isSWT
                    currentDisplayableFactory = CurrentDisplayableFactory.getInstance()
                    currentDisplayableFactory.clearRunnable()
                    self.end_()
                end
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @SET_RUNNING, e)
        end
    end
    

    # throws Exception
    def end_()
        progressCanvas = ProgressCanvasFactory.getInstance()
        features = Features.getInstance()
        @baseGameStatistics.add(StringMaker.new().append(DemoCanvas::BOT_GAME_STATS).append(@baseGameStatistics.to_s).append(CommonSeps.getInstance().NEW_LINE).to_s)
        @baseGameStatistics.init()
        if features.isFeature(MainFeatureFactory.getInstance().LOAD_ONDEMAND)
            progressCanvas.start()
        end
        @logUtil.putF("Demo End", self, @commonStrings.RUN)
        self.close()
        DisplayChangeEventHandler.getInstance().removeListener(self)
        self.stopGameDemo()
    end
    

    def setGameState(gameState)
    end
    

    def getGameState()
        return @gameStateFactory.PLAYING_GAME_STATE
    end
    

    def getGameCanvasRunnableInterface()
        return @gameCanvas
    end
    

    def isDemoLoading()
        gameCanvas = @gameCanvas
        if gameCanvas == NullGameCanvas.getInstance()
            return true
        elsif gameCanvas.isInitialized()
            return false
        end
        return true
    end
    

    def getState()
        return @state
    end
    

    def setState(state)
        @state = state
    end
    

    def isHighScoreSubmitted()
        @logUtil.putF("Wow the AI got a high score!", self, "isHighScoreSubmitted")
        return false
    end
    

    def getRealHighScoresPaintable()
        return @realHighScoresPaintable
    end
    

    def setSpecialAnimationInterface(specialAnimationInterface)
        specialAnimationInterface.setFrame(0)
        @specialAnimationInterface = specialAnimationInterface
    end
    

    def getSpecialAnimationInterface()
        return @specialAnimationInterface
    end
    

    def setPaintableInterface(paintableInterface)
        @paintableInterface = paintableInterface
    end
    

    def getPaintableInterface()
        return @paintableInterface
    end
    

    def setDefaultPaintableInterface(defaultPaintableInterface)
        @defaultPaintableInterface = defaultPaintableInterface
    end
    

    def getDefaultPaintableInterface()
        return @defaultPaintableInterface
    end
    

    def getHighScoresFactoryInterface()
        return @highScoresFactoryInterface
    end
    

    def setMenuInputProcessor(menuInputProcessor)
        @menuInputProcessor = menuInputProcessor
    end
    

    def getMenuInputProcessor()
        return @menuInputProcessor
    end
    

    def getMenuForm()
        return @menuForm
    end
    

    def setMenuForm(menuForm)
        @menuForm = menuForm
    end
    

    def isInitialized()
        return @initialized
    end
    

    def getOverlayPaintable()
        return @overlayPaintable
    end
    

    def setBasicGameDemoPaintable(basicGameDemoPaintable)
        @basicGameDemoPaintable = basicGameDemoPaintable
    end
    

    def getBasicGameDemoPaintable()
        return @basicGameDemoPaintable
    end
    

    def setTempWait(tempWait)
        @tempWait = tempWait
    end
    

    def getTempWait()
        return @tempWait
    end
    

    def isSingleThread()
        return OpenGLFeatureUtil.getInstance().isAnyThreed() || SWTUtil.isSWT
    end
    

    def isRunningInAnotherThread()
        features = Features.getInstance()
        openGLFeatureFactory = OpenGLFeatureFactory.getInstance()
        if features.isDefault(openGLFeatureFactory.OPENGL_AS_GAME_THREAD)
            return true
        else
            return self.isRunning()
        end
    end
    

    def getGameInitializationInterfaceFactoryInterface()
        return @gameInitializationInterfaceFactoryInterface
    end
    

    def getType()
        return DemoCanvas::TYPE
    end

    def self.id()
        return defined?(@@id) ? @@id : nil
    end

    def self.id=(value)
        @@id = value
    end
end

require "org/allbinary/J2MEUtil"
require "org/allbinary/animation/Animation"
require "org/allbinary/animation/IndexedAnimationBehavior"
require "org/allbinary/animation/special/SpecialAnimation"
require "org/allbinary/business/advertisement/GameAdStateFactory"
require "org/allbinary/canvas/BaseGameStatistics"
require "org/allbinary/canvas/CustomGameMenuUtil"
require "org/allbinary/canvas/FullScreenUtil"
require "org/allbinary/canvas/GameStatisticsFactory"
require "org/allbinary/game/GameAdState"
require "org/allbinary/game/GameInfo"
require "org/allbinary/game/commands/GameCommandsFactory"
require "org/allbinary/game/configuration/event/ChangedGameFeatureListener"
require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/configuration/feature/GameFeatureFactory"
require "org/allbinary/game/configuration/feature/InputFeatureFactory"
require "org/allbinary/game/configuration/feature/MainFeatureFactory"
require "org/allbinary/game/init/BasicBuildGameInitializerFactory"
require "org/allbinary/game/init/GameInitializationUtil"
require "org/allbinary/game/input/GameInputStrings"
require "org/allbinary/game/input/GameKey"
require "org/allbinary/game/input/GameKeyFactory"
require "org/allbinary/game/input/PlatformInputMappingFactory"
require "org/allbinary/game/input/event/DownGameKeyEventHandler"
require "org/allbinary/game/input/event/GameKeyEvent"
require "org/allbinary/game/input/event/GameKeyEventFactory"
require "org/allbinary/game/input/event/GameKeyEventHandler"
require "org/allbinary/game/input/event/UpGameKeyEventHandler"
require "org/allbinary/game/input/mapping/InputToGameKeyMapping"
require "org/allbinary/game/layer/AllBinaryGameLayerManager"
require "org/allbinary/game/layer/SWTUtil"
require "org/allbinary/game/midlet/DemoGameMidlet"
require "org/allbinary/game/score/HighScoreCommands"
require "org/allbinary/game/score/HighScores"
require "org/allbinary/game/score/HighScoresFactoryInterface"
require "org/allbinary/game/score/HighScoresHelper"
require "org/allbinary/game/score/HighScoresHelperBase"
require "org/allbinary/game/score/HighScoresPaintable"
require "org/allbinary/game/score/NullHighScoresSingletonFactory"
require "org/allbinary/game/state/GameState"
require "org/allbinary/game/state/GameStateFactory"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/graphics/ResizableListenerHandler"
require "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas"
require "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory"
require "org/allbinary/graphics/color/BasicColor"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/graphics/displayable/command/MyCommandsFactory"
require "org/allbinary/graphics/displayable/event/DisplayChangeEvent"
require "org/allbinary/graphics/displayable/event/DisplayChangeEventHandler"
require "org/allbinary/graphics/displayable/screen/FullScreenPaintableFactory"
require "org/allbinary/graphics/form/CommandCurrentSelectionFormFactory"
require "org/allbinary/graphics/form/FormType"
require "org/allbinary/graphics/form/FormTypeFactory"
require "org/allbinary/graphics/form/ScrollSelectionForm"
require "org/allbinary/graphics/form/ScrollSelectionFormNoneFactory"
require "org/allbinary/graphics/form/item/CommandTextItemArrayFactory"
require "org/allbinary/graphics/form/item/ABCustomItem"
require "org/allbinary/graphics/opengles/CurrentDisplayableFactory"
require "org/allbinary/graphics/opengles/OpenGLFeatureFactory"
require "org/allbinary/graphics/opengles/OpenGLFeatureUtil"
require "org/allbinary/graphics/opengles/OpenGLThreadUtil"
require "org/allbinary/graphics/paint/InitUpdatePaintable"
require "org/allbinary/graphics/paint/NullPaintable"
require "org/allbinary/graphics/paint/Paintable"
require "org/allbinary/graphics/paint/PaintableInterface"
require "org/allbinary/graphics/paint/StatePaintable"
require "org/allbinary/graphics/paint/StatePaintableFactory"
require "org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/system/os/OperatingSystemFactory"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/system/security/licensing/InApplicationPurchaseFactory"
require "org/allbinary/logic/system/security/licensing/LockableFeature"
require "org/allbinary/logic/system/security/licensing/LockableFeatureFactory"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventStrings"
require "org/allbinary/media/audio/AllBinaryMediaManager"
require "org/allbinary/media/audio/EarlySoundsFactory"
require "org/allbinary/media/audio/PrimaryPlayerQueueFactory"
require "org/allbinary/media/audio/SecondaryPlayerQueueFactory"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/thread/NullThread"
require "org/allbinary/thread/ThreadFactoryUtil"
require "org/allbinary/thread/ThreadUtil"
require "org/allbinary/time/TimeDelayHelper"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"
require "org/allbinary/game/displayable/canvas/BasicMenuInputProcessor"
require "org/allbinary/game/displayable/canvas/CommandFormInputProcessor"
require "org/allbinary/game/displayable/canvas/DemoCanvasProgressUtil"
require "org/allbinary/game/displayable/canvas/DemoGameRunnable"
require "org/allbinary/game/displayable/canvas/DemoGameStartupRunnable"
require "org/allbinary/game/displayable/canvas/DemoLimitedCommandTextItemArrayFactory"
require "org/allbinary/game/displayable/canvas/FormUtil"
require "org/allbinary/game/displayable/canvas/GameInputMappingCanvas"
require "org/allbinary/game/displayable/canvas/GameRunnable"
require "org/allbinary/game/displayable/canvas/NoMenuInputProcessor"
require "org/allbinary/game/displayable/canvas/NullGameCanvas"
require "org/allbinary/game/displayable/canvas/NullWaitGameRunnable"
require "java/lang/Thread"

class DemoCanvas
    @@id = 0
    BOT_GAME_STATS = "Bot Game Statistics: "
    TYPE = 3
end

