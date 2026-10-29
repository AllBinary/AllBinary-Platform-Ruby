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
# require "javax/microedition/lcdui/ChoiceGroup"
# require "javax/microedition/lcdui/CommandListener"
# require "javax/microedition/lcdui/Font"
# require "javax/microedition/lcdui/Graphics"
# require "javax/microedition/lcdui/Item"
# require "javax/microedition/lcdui/NullCommandListener"
require "org/allbinary/canvas/RunnableCanvas"
require "org/allbinary/game/IntermissionCompositeInterface"
require "org/allbinary/game/IntermissionEnableListenerInterface"
require "org/allbinary/graphics/displayable/event/DisplayChangeEventListener"
require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/game/displayable/canvas/AllBinaryGameCanvasInterface"
require "org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface"
require "org/allbinary/game/displayable/canvas/MenuListener"
require "org/allbinary/game/displayable/canvas/PopupMenuInterface"
require "java/lang/Runnable"

class AllBinaryGameCanvas < RunnableCanvas
    include AllBinaryGameCanvasInterface
    include GameCanvasRunnableInterface
    include MenuListener
    include IntermissionCompositeInterface
    include IntermissionEnableListenerInterface
    include PopupMenuInterface
    include DisplayChangeEventListener
    include UpdateMyFontInterface
    attr_accessor :basicColorFactory, :basicSetColorUtil, :touchFeatureFactory, :openGLFeatureFactory, :touchButtonFactory, :gameAdStateFactory, :gameStrings, :gameInputStrings, :gameStateFactory, :gameTickTimeDelayHelper, :gameTickDisplayInfoSingleton, :gameRunnable, :gamePauseRunnable, :formUtil, :myFormUtil, :updateMyFontProcessor, :myFontProcessor, :gameSpecificPaintable, :sensorGameUpdateProcessor, :endGameInfo, :startIntermissionInterface, :endLevelIntermissionInterface, :gameLayerManager, :gameState, :gameOver, :initialized, :gameStateTimeHelper, :highScoresHelper, :highScoreSubmitted, :realHighScoresPaintable, :highScoresPaintable, :localPlayerGameInputList, :isCheating, :hashtable, :isSingleKeyRepeatableProcessing, :gameInitializationInterfaceFactoryInterface, :touchButtonsPaintable, :touchPaintable, :cheatProcessor, :gameInputProcessor, :endGameProcessor, :realEndGameProcessor, :startIntermissionProcessor, :realStartIntermissionProcessor, :endGamePaintable, :endGameStatePaintable, :nonBotPaintable, :intermissionPaintable, :startIntermissionPaintable, :mainStateProcessor, :processGameProcessor, :highScoresFactoryInterface, :startLevel, :mainMenuInputProcessor, :popupMenuInputProcessor, :menuInputProcessor, :menuForm, :formPaintable, :openMenuPaintable, :menuPaintable, :currentTouchInputFactory, :colorFillPaintable, :baseGameStatistics, :primaryPlayerQueue, :secondaryPlayerQueue, :BUILD_GAME, :gameTypeFactory, :screenCapture, :basicMotionGesturesHandler, :gameKeyEventHandler, :gameBehavior, :menuBehavior, :progressPaintable, :fontHeightP, :gameCanvasStartListener, :rawGameInputProcessor, :rawInputProcessor, :inputProcessor, :YIELD_SLEEP

    def initialize_fields
        @basicColorFactory = BasicColorFactory.getInstance()
        @basicSetColorUtil = BasicColorSetUtil.getInstance()
        @touchFeatureFactory = TouchFeatureFactory.getInstance()
        @openGLFeatureFactory = OpenGLFeatureFactory.getInstance()
        @touchButtonFactory = TouchButtonFactory.getInstance()
        @gameAdStateFactory = GameAdStateFactory.getInstance()
        @gameStrings = GameStrings.getInstance()
        @gameInputStrings = GameInputStrings.getInstance()
        @gameStateFactory = GameStateFactory.getInstance()
        @gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
        @gameTickDisplayInfoSingleton = GameTickDisplayInfoSingleton.getInstance()
        @gameRunnable = GameCanvasRunnable.new(self)
        @gamePauseRunnable = GameCanvasPauseRunnable.new(self)
        @formUtil = FormUtil.getInstance()
        @myFormUtil = MyFormUtil.getInstance()
        @updateMyFontProcessor = UpdateMyFontProcessor.new(self)
        @myFontProcessor = @updateMyFontProcessor
        @gameSpecificPaintable = NullPaintable.getInstance()
        @sensorGameUpdateProcessor = SingleSensorGameUpdateProcessor.new()
        @endGameInfo = EndGameInfo.new()
        @startIntermissionInterface = Intermission.new()
        @endLevelIntermissionInterface = Intermission.new()
        @gameLayerManager = AllBinaryGameLayerManager.getNullInstance()
        @gameState = @gameStateFactory.NO_GAME_STATE
        @gameOver = false
        @initialized = false
        @gameStateTimeHelper = TimeDelayHelper.new(0)
        @highScoresHelper = nil
        @highScoreSubmitted = false
        @realHighScoresPaintable = HighScoresPaintable.new()
        @highScoresPaintable = NullPaintable.getInstance()
        @localPlayerGameInputList = BasicArrayListD.new()
        @isCheating = false
        @hashtable = @stdUtil.NULL_TABLE
        @isSingleKeyRepeatableProcessing = false
        @gameInitializationInterfaceFactoryInterface = BasicBuildGameInitializerFactory::NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY
        @touchButtonsPaintable = NullPaintable.getInstance()
        @touchPaintable = NullPaintable.getInstance()
        @cheatProcessor = NoPlayerGameInput.getInstance()
        @gameInputProcessor = Processor.getInstance()
        @endGameProcessor = Processor.getInstance()
        @realEndGameProcessor = Processor.getInstance()
        @startIntermissionProcessor = Processor.getInstance()
        @realStartIntermissionProcessor = Processor.getInstance()
        @endGamePaintable = NullPaintable.getInstance()
        @endGameStatePaintable = NullPaintable.getInstance()
        @nonBotPaintable = NullPaintable.getInstance()
        @intermissionPaintable = NullPaintable.getInstance()
        @startIntermissionPaintable = NullInitUpdatePaintable.getInstance()
        @mainStateProcessor = Processor.getInstance()
        @processGameProcessor = Processor.getInstance()
        @highScoresFactoryInterface = nil
        @startLevel = 0
        @mainMenuInputProcessor = NoMenuInputProcessor.getInstance()
        @popupMenuInputProcessor = NoMenuInputProcessor.getInstance()
        @menuInputProcessor = NoMenuInputProcessor.getInstance()
        @menuForm = ScrollSelectionForm.getNullScrollSelectionForm()
        @formPaintable = NullPaintable.getInstance()
        @openMenuPaintable = NullPaintable.getInstance()
        @menuPaintable = NullPaintable.getInstance()
        @currentTouchInputFactory = NoButtonsTouchInputFactory.getInstance()
        @colorFillPaintable = ColorFillPaintableFactory.getInstance().getInstance(@basicColorFactory.BLACK, true)
        @baseGameStatistics = GameStatisticsFactory.getInstance()
        @primaryPlayerQueue = PrimaryPlayerQueueFactory.getInstance()
        @secondaryPlayerQueue = SecondaryPlayerQueueFactory.getInstance()
        @BUILD_GAME = "buildGame"
        @gameTypeFactory = GameTypeFactory.getInstance()
        @screenCapture = ScreenCaptureFactory.getInstance()
        @basicMotionGesturesHandler = BasicMotionGesturesHandler.getInstance()
        @gameKeyEventHandler = GameKeyEventHandler.getInstance()
        @gameBehavior = nil
        @menuBehavior = nil
        @progressPaintable = ProgressCanvasFactory.getLazyInstance()
        @fontHeightP = 0
        @gameCanvasStartListener = NullDemoPaintable::NULL_DEMO_PAINTABLE
        @rawGameInputProcessor = GameCanvasInputProcessor.new(self)
        @rawInputProcessor = FormInputProcessor.new(self)
        @inputProcessor = self.getRawGameInputProcessor()
        @YIELD_SLEEP = 100
    end
    

    def initialize(commandListener, gameLayerManager, highScoresFactoryInterface, gameInitializationInterfaceFactoryInterface, buffered)
        super(commandListener, CanvasStrings.getInstance().EMPTY_CHILD_NAME_LIST, true)
        initialize_fields
        @highScoresHelper = highScoresFactoryInterface.createHighScoresHelper()
        @gameInitializationInterfaceFactoryInterface = gameInitializationInterfaceFactoryInterface
        self.init(gameLayerManager, buffered)
        @highScoresFactoryInterface = highScoresFactoryInterface
        if @gameLayerManager.getGameInfo().getGameType() == @gameTypeFactory.BOT || @gameLayerManager.getGameInfo().getGameType() == @gameTypeFactory.NONE
            @gameBehavior = DemoGameBehavior.getInstance()
            @menuBehavior = BaseMenuBehavior.getInstance()
        else
            @gameBehavior = BaseGameBehavior.getInstance()
            @menuBehavior = self.getInGameMenuBehavior()
        end
        self.initPopupMenu()
        self.initMenu()
        self.initSpecialPaint()
        DisplayChangeEventHandler.getInstance().addListenerInterface(self)
    end
    

    def updateMeasurement(graphics)
        begin
            font = graphics.getFont()
            @logUtil.putF(StringMaker.new().append(@commonStrings.START).append(@canvasStrings.FD_WIDTH).appendint((MyFontProcessor.defaultCharWidth(font)).to_i).append(@canvasStrings.FD_HEIGHT).appendint((font.getHeight()).to_i).to_s, self, @canvasStrings.UPDATE_MEASUREMENT)
            @fontHeightP = font.getHeight()
            @myFormUtil.updateMeasurement(graphics)
            popupMenuRectangle = @myFormUtil.getPopupMenuRectangle()
            basicPopupMenuPaintable = (self.getOpenMenuPaintable())
            basicPopupMenuPaintable.init(popupMenuRectangle)
            if self.getPopupMenuInputProcessor() != NoMenuInputProcessor.getInstance()
                popupMenuInputProcessor = (self.getPopupMenuInputProcessor())
                popupMenuInputProcessor.init(popupMenuRectangle)
            end
            @myFontProcessor = MyFontProcessor.getInstance()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @canvasStrings.ON_DISPLAY_CHANGE_EVENT, e)
        end
    end
    

    def getInGameMenuBehavior()
        return InGameMenuBehavior.getInstance()
    end
    

    def setCurrentThread()
        if J2MEUtil.isHTML()
            self.class.superclass.instance_method(:setCurrentThreadFake).bind(self).call()
        else
            super()
        end
    end
    

    def onEvent(eventObject)
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    

    def onDisplayChangeEvent(displayChangeEvent)
        begin
            @logUtil.putF(StringMaker.new().append(@commonStrings.START).append(DisplayInfoSingleton.getInstance().to_s).to_s, self, @canvasStrings.UPDATE_MEASUREMENT)
            @myFontProcessor = @updateMyFontProcessor
            @menuBehavior.onDisplayChangeEvent(self, displayChangeEvent)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @canvasStrings.ON_DISPLAY_CHANGE_EVENT, e)
        end
    end
    

    # throws Exception
    def updateMenuFromEvent(displayChangeEvent)
        formType = FormTypeFactory.getInstance().getFormType()
        rectangle = @formUtil.createFormRectangle()
        @menuForm.init(rectangle, formType)
        if @currentTouchInputFactory != NoButtonsTouchInputFactory.getInstance()
            @touchButtonFactory.toggle(self.isPaused(), @currentTouchInputFactory.getList())
        end
        @myFontProcessor = @updateMyFontProcessor
    end
    

    # throws Exception
    def processSleep()
        super()
        if AllBinaryMediaManager.update()
            if !@primaryPlayerQueue.process()
                @secondaryPlayerQueue.process()
            end
        end
        if @menuInputProcessor.processInputList() != -1
            @runnableCanvasRefreshHelper.process()
        end
    end
    

    # throws Exception
    def initPopupMenu()
        if @popupMenuInputProcessor == NoMenuInputProcessor.getInstance()
            features = Features.getInstance()
            popupMenuRectangle = @myFormUtil.getPopupMenuRectangle()
            if features.isFeature(@touchFeatureFactory.TOUCH_ENABLED)
                self.setOpenMenuPaintable(BasicPopupMenuPaintable.new(popupMenuRectangle, @gameLayerManager.getBackgroundBasicColor(), @gameLayerManager.getForegroundBasicColor()))
                self.setPopupMenuInputProcessor(PopupMenuInputProcessor.new(BasicArrayListD.new(), -1, self, popupMenuRectangle))
            end
        else
        end
    end
    

    def initMenu()
        begin
            @menuBehavior.initMenu(self)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "initMenu", e)
        end
    end
    

    # throws Exception
    def initMenu2()
        self.closeMenu()
        formType = FormTypeFactory.getInstance().getFormType()
        gameLimitedCommandTextItemArrayFactory = GameLimitedCommandTextItemArrayFactory.getInstance()
        commandTextItemArrayFactory = gameLimitedCommandTextItemArrayFactory.getCommandTextItemArrayFactory()
        items = commandTextItemArrayFactory.getInstance(self.getCommandStack(), @gameLayerManager.getBackgroundBasicColor(), @gameLayerManager.getForegroundBasicColor())
        rectangle = @formUtil.createFormRectangle()
        self.setMenuForm(CommandCurrentSelectionFormFactory.getInstance(StringUtil.getInstance().EMPTY_STRING, items, rectangle, formType, 25, false, @gameLayerManager.getBackgroundBasicColor(), @gameLayerManager.getForegroundBasicColor()))
        scrollSelectionForm = self.getMenuForm()
        features = Features.getInstance()
        if features.isFeature(@touchFeatureFactory.TOUCH_ENABLED)
            @mainMenuInputProcessor = PopupCommandFormInputProcessor.new(BasicArrayListD.new(), -1, self, scrollSelectionForm, self.getPopupMenuInputProcessor())
        else
        end
        self.setMenuInputProcessor(self.getPopupMenuInputProcessor())
        if scrollSelectionForm != ScrollSelectionFormNoneFactory.getInstance()
            self.setFormPaintable(FormPaintable.new(scrollSelectionForm))
        else
        end
        self.closeMenu()
    end
    

    def updateMenu()
        begin
            @menuBehavior.updateMenu(self)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "initMenu", e)
        end
    end
    

    # throws Exception
    def updateMenu2()
        scrollSelectionForm = self.getMenuForm()
        scrollSelectionForm.deleteAll()
        gameLimitedCommandTextItemArrayFactory = GameLimitedCommandTextItemArrayFactory.getInstance()
        commandTextItemArrayFactory = gameLimitedCommandTextItemArrayFactory.getCommandTextItemArrayFactory()
        items = commandTextItemArrayFactory.getInstance(self.getCommandStack(), @gameLayerManager.getBackgroundBasicColor(), @gameLayerManager.getForegroundBasicColor())
        size = items.length
        (0...size).each do |index|
            scrollSelectionForm.append(items[index])
        end
        formType = FormTypeFactory.getInstance().getFormType()
        rectangle = @formUtil.createFormRectangle()
        scrollSelectionForm.init(rectangle, formType)
    end
    

    def pause()
        java_monitor.synchronize do
        @gameBehavior.pause(self)
        self.closeMenu()
        super()
        @touchButtonFactory.toggle(self.isPaused(), BasicArrayListUtil.getInstance().getImmutableInstance())
        @tsUtil.gc()
        end
    end
    

    def unPause()
        java_monitor.synchronize do
        @logUtil.putF(@commonStrings.START, self, @gameStrings.UNPAUSE)
        self.closeMenu()
        @tsUtil.gc()
        super()
        @touchButtonFactory.toggle(self.isPaused(), BasicArrayListUtil.getInstance().getImmutableInstance())
        @gameBehavior.unPause(self)
        end
    end
    

    def isPausable()
        if CurrentDisplayableFactory.getInstance().getUsedRunnable() == NullWaitGameRunnable.getInstance()
            return true
        else
            return false
        end
    end
    

    # throws Exception
    def popupMenu()
        @menuBehavior.popupMenu(self)
    end
    

    # throws Exception
    def popupMenu2()
        @primaryPlayerQueue.add(SelectSound.getInstance())
        self.setMenuPaintable(self.getFormPaintable())
        self.setMenuInputProcessor(@mainMenuInputProcessor)
        @basicMotionGesturesHandler.addListenerInterface(@mainMenuInputProcessor)
        @gameKeyEventHandler.addListener(@mainMenuInputProcessor)
    end
    

    # throws Exception
    def toggleMenu()
        @logUtil.putF(@commonStrings.START, self, @gameStrings.TOGGLE_MENU)
        if self.getMenuPaintable() == self.getOpenMenuPaintable()
            self.pause()
            self.updateMenu()
            self.popupMenu()
        elsif self.getMenuPaintable() == self.getFormPaintable()
            @primaryPlayerQueue.add(SelectSound.getInstance())
            self.unPause()
        end
    end
    

    def closeMenu()
        @menuBehavior.closeMenu(self)
    end
    

    def closeMenu2()
        self.setMenuPaintable(self.getOpenMenuPaintable())
        @basicMotionGesturesHandler.removeListener(@mainMenuInputProcessor)
        @gameKeyEventHandler.removeListener(@mainMenuInputProcessor)
        self.setMenuInputProcessor(self.getPopupMenuInputProcessor())
    end
    

    def open()
        @basicMotionGesturesHandler.addListenerInterface(@menuInputProcessor)
        @gameKeyEventHandler.addListener(@menuInputProcessor)
    end
    

    def close()
        @basicMotionGesturesHandler.removeListener(@menuInputProcessor)
        @gameKeyEventHandler.removeListener(@menuInputProcessor)
        @primaryPlayerQueue.clear()
        @secondaryPlayerQueue.clear()
    end
    

    # throws Exception
    def processorInit()
        self.setMainStateProcessor(Processor.getInstance())
        self.setProcessGameProcessorInit()
    end
    

    def setProcessGameProcessorInit()
        self.setProcessGameProcessor(GameProcessor.new(self))
    end
    

    def initSpecialPaint()
        @menuBehavior.initSpecialPaint(self)
    end
    

    # throws Exception
    def init(gameLayerManager, buffered)
        @gameStateTimeHelper.setStartTimeTNT()
        self.setHighScoreSubmitted(false)
        self.setLayerManager(gameLayerManager)
        if !buffered
            _BUFF_MESSAGE = "XXX Not Buffering Causes Concurrency Issues XXX"
            @logUtil.putF(_BUFF_MESSAGE, self, @commonStrings.CONSTRUCTOR)
        else
            raise StandardError.new("Buffering is disabled")
        end
        self.setGameInputProcessor(Processor.getInstance())
        features = Features.getInstance()
        if features.isFeature(GameFeatureFactory.getInstance().CHEATING)
            @isCheating = true
            @cheatProcessor = CheatGameInputProcessor.new(self)
            @gameKeyEventHandler.addListener(@cheatProcessor)
        else
            @isCheating = false
            @cheatProcessor = NoPlayerGameInput.getInstance()
        end
        @realEndGameProcessor = EndGameProcessor.new(self)
        self.setEndGameProcessor(Processor.getInstance())
        @realStartIntermissionProcessor = StartIntermissionProcessor.new(self)
        @startIntermissionProcessor = Processor.getInstance()
        self.setEndGameStatePaintable(EndGamePaintable.new(self))
        self.setEndGamePaintable(NullPaintable.getInstance())
        self.setIntermissionPaintable(NullPaintable.getInstance())
        self.getStartIntermissionInterface().setListener(self)
    end
    

    def notifyIntermission(enable)
        if enable
            @startIntermissionProcessor = @realStartIntermissionProcessor
        else
            @startIntermissionProcessor = Processor.getInstance()
        end
        if enable
            self.setIntermissionPaintable(self.getStartIntermissionPaintable())
        else
            self.setIntermissionPaintable(NullPaintable.getInstance())
        end
    end
    

    # throws Exception
    def mediaInit()
        ForcedLogUtil.log(@commonStrings.NOT_IMPLEMENTED, self)
    end
    

    # throws Exception
    def initConfigurable(abeClientInformation)
        java_monitor.synchronize do
        progressCanvas = ProgressCanvasFactory.getInstance()
        progressCanvas.addNormalPortion(50, "Setting Configurables")
        GameInitializationUtil.getInstance().initGame(abeClientInformation, self, @gameInitializationInterfaceFactoryInterface)
        gameFeatureFactory = GameFeatureFactory.getInstance()
        changedGameFeatureListener = ChangedGameFeatureListener.getInstance()
        if changedGameFeatureListener.isChangedFeature(gameFeatureFactory.SOUND)
            features = Features.getInstance()
            @logUtil.putF(StringMaker.new().append("Sound Changing To: ").appendboolean(features.isFeature(gameFeatureFactory.SOUND)).to_s, self, "initConfigurable")
            self.mediaInit()
            changedGameFeatureListener.remove(gameFeatureFactory.SOUND)
        end
        sensorFeatureFactory = SensorFeatureFactory.getInstance()
        if changedGameFeatureListener.isChangedFeature(sensorFeatureFactory.ORIENTATION_SENSORS) || changedGameFeatureListener.isChangedFeature(sensorFeatureFactory.NO_ORIENTATION) || changedGameFeatureListener.isChangedFeature(sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS)
            changedGameFeatureListener.remove(sensorFeatureFactory.NO_ORIENTATION)
            changedGameFeatureListener.remove(sensorFeatureFactory.ORIENTATION_SENSORS)
            changedGameFeatureListener.remove(sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS)
        end
        resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance()
        self.loadResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_GAME)
        end
    end
    

    # throws Exception
    def initApp(abeClientInformation)
        self.initConfigurable(abeClientInformation)
        self.processorInit()
        @sensorGameUpdateProcessor.process(@gameLayerManager)
        @sensorGameUpdateProcessor.sendNotifications(@gameLayerManager)
        self.initTouch()
    end
    

    # throws Exception
    def initTouch()
        gameInitializedEvent = GameInitializationUtil.getInstance().EVENT
        resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance()
        gameInitializedEvent.setResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_TOUCH)
        GameInitializedEventHandler.getInstance().fireEvent(gameInitializedEvent)
        @touchButtonFactory.defaultList()
        self.updateTouch()
        self.postInitTouch()
    end
    

    # throws Exception
    def updateCurrentTouchInputFactory(nextTouchInput)
        if nextTouchInput != @currentTouchInputFactory
            @currentTouchInputFactory = nextTouchInput
            PreLogUtil.put(@currentTouchInputFactory.to_s, self, @gameInputStrings.UDPATE_CURRENT_TOUCH_INPUT_FACTORY)
            @touchButtonFactory.toggle(self.isPaused(), @currentTouchInputFactory.getList())
        end
    end
    

    # throws Exception
    def updateTouch()
        @gameBehavior.updateTouch(self)
    end
    

    # throws Exception
    def updateTouch2()
        features = Features.getInstance()
        if features.isFeature(@touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS)
            if @gameLayerManager.getGameInfo().getCurrentLevel() - self.getStartLevel() == 1
                self.setTouchPaintableP(NullPaintable.getInstance())
            end
        end
    end
    

    # throws Exception
    def postInitTouch()
        self.setTouchButtonsPaintable(TouchButtonsPaintableFactory.getInstance(@gameLayerManager.getForegroundBasicColor()))
        self.updateScreenButtonPaintable()
    end
    

    def initCommands(cmdListener)
        self.removeAllCommands()
        self.addCommands()
        self.setCommandListener(cmdListener)
    end
    

    def addCommands()
        gameCommandsFactory = GameCommandsFactory.getInstance()
        myCommandsFactory = MyCommandsFactory.getInstance()
        if DebugFactory.getInstance() != NoDebug.getInstance()
            self.addCommand(gameCommandsFactory.START_TRACE)
        end
        self.addCommand(gameCommandsFactory.RESTART_COMMAND)
        self.addCommand(myCommandsFactory.PAUSE_COMMAND)
        self.addCommand(gameCommandsFactory.QUIT_COMMAND)
        isOverScan = OperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan()
        if J2MEUtil.isHTML()
        elsif SWTUtil.isSWT
        elsif !isOverScan
            if TouchScreenFactory.getInstance().isTouch() && InGameFeatures.new().isAny()
                self.addCommand(InGameOptionsForm::DISPLAY)
            end
            self.addCommand(gameCommandsFactory.SAVE)
            self.addCommand(gameCommandsFactory.DISPLAY_LOAD_FORM)
        end
    end
    

    def itemStateChanged(item)
        begin
            itemLabel = item.getLabel()
            @logUtil.putF(StringMaker.new().append(@commonLabels.ITEM_LABEL).append(itemLabel).to_s, self, "itemStateChanged")
            if item.is_a?(ChoiceGroup)
                gameFeatureUtil = GameFeatureUtil.getInstance()
                if gameFeatureUtil.isExclusive(itemLabel)
                    gameFeatureUtil.updateExclusiveForChoiceGroup(item)
                else
                    gameFeatureUtil.updateMultiple(item)
                end
            end
            @sensorGameUpdateProcessor.process(@gameLayerManager)
            self.updateTouch()
            self.updateScreenButtonPaintable()
            @sensorGameUpdateProcessor.sendNotifications(@gameLayerManager)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "itemStateChanged", e)
        end
    end
    

    # throws Exception
    def updateScreenButtonPaintable()
        @gameBehavior.updateScreenButtonPaintable(self)
    end
    

    def updateScreenButtonPaintable2()
        features = Features.getInstance()
        if features.isFeature(@touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS)
            self.setTouchPaintableP(self.getTouchButtonsPaintable())
            self.setStartLevel(@gameLayerManager.getGameInfo().getCurrentLevel())
        elsif features.isFeature(@touchFeatureFactory.SHOW_SCREEN_BUTTONS)
            self.setTouchPaintableP(self.getTouchButtonsPaintable())
        elsif features.isFeature(@touchFeatureFactory.HIDE_SCREEN_BUTTONS)
            self.setTouchPaintableP(NullPaintable.getInstance())
        else
            self.setTouchPaintableP(NullPaintable.getInstance())
        end
    end
    

    def getLayerManager()
        return @gameLayerManager
    end
    

    def setLayerManager(layerManager)
        @gameLayerManager = layerManager
    end
    

    def isGameOver()
        java_monitor.synchronize do
        return @gameOver
        end
    end
    

    def setGameOver(gameOver)
        java_monitor.synchronize do
        @gameOver = gameOver
        end
    end
    

    # throws Exception
    def processGameOver()
        PreLogUtil.put(@commonStrings.START, self, @gameStrings.SET_GAME_OVER)
        self.setGameOver(true)
        self.removePauseCommand()
        self.setGameState(@gameStateFactory.SHOW_END_RESULT_GAME_STATE)
        self.setEndGamePaintable(self.getEndGameStatePaintable())
    end
    

    def isHighScoreSubmitted()
        return @highScoreSubmitted
    end
    

    # throws Exception
    def setHighScoreSubmitted(highScoreSubmitted)
        @highScoreSubmitted = highScoreSubmitted
        if highScoreSubmitted
            @highScoresHelper.setSelectedHighScores(NullHighScoresSingletonFactory.getInstance())
        end
        @logUtil.putF(StringMaker.new().append("isHighScoreSubmitted: ").appendboolean(highScoreSubmitted).to_s, self, "setHighScoreSubmitted")
    end
    

    def getGameState()
        return @gameState
    end
    

    # throws Exception
    def setGameState(gameState)
        @logUtil.putF(StringMaker.new().append(@gameStrings.GAME_STATE).append(@stringUtil.toString(gameState)).to_s, self, @gameStrings.SET_GAME_STATE)
        @gameState = gameState
        @gameStateTimeHelper.setStartTimeTNT()
        self.updateEndGameProcessor()
        self.updateGameKeyEventProcessor()
        @gameBehavior.setGameState(self)
    end
    

    # throws Exception
    def updateGameState()
        gameAdState = @gameAdStateFactory.getCurrentInstance()
        gameAdState.processAdState(@gameState, @gameLayerManager.getGameInfo().getGameType())
        if @gameState != @gameStateFactory.PLAYING_GAME_STATE
            gameAdState.processPageAdState()
        end
    end
    

    def updateGameKeyEventProcessor()
        if self.getGameState() != @gameStateFactory.PLAYING_GAME_STATE || @isCheating
        else
        end
    end
    

    def removeAllGameKeyInputListenersOnBuild()
        self.removeAllGameKeyInputListeners()
    end
    

    def removeAllGameKeyInputListeners()
        @gameBehavior.removeAllGameKeyInputListeners(self)
    end
    

    def removeAllGameKeyInputListeners2()
        @logUtil.putF("Remove PlayerInput Listeners", self, "removeAllGameKeyInputListeners")
        (@localPlayerGameInputList.size() - 1).step(0, -(1)) do |index|
            playerGameInput = @localPlayerGameInputList.get(index)
            self.removeKeyInputListener(playerGameInput)
            playerGameInput.removeNonAIInputGameKeyEvents()
        end
    end
    

    def removeKeyInputListener(playerGameInput)
        @gameKeyEventHandler.removeListener(playerGameInput)
    end
    

    # throws Exception
    def updateEndGameProcessor()
        @gameBehavior.updateEndGameProcessor(self)
    end
    

    # throws Exception
    def updateEndGameProcessor2()
        if self.getGameState() == @gameStateFactory.SHOW_END_RESULT_GAME_STATE || self.getGameState() == @gameStateFactory.SHOW_HIGH_SCORE_GAME_STATE
            self.setEndGameProcessor(@realEndGameProcessor)
        else
            self.setEndGameProcessor(Processor.getInstance())
        end
    end
    

    # throws Exception
    def buildGameInit(isPortion)
    end
    

    # throws Exception
    def cleanupGame()
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CLEANUP)
        progressCanvas = ProgressCanvasFactory.getInstance()
        progressCanvas.addNormalPortion(10, "Cleaning Up")
        @primaryPlayerQueue.clear()
        @secondaryPlayerQueue.clear()
        GameLevelDisplayChangeEventListenersFactory.getInstance().clear()
    end
    

    # throws Exception
    def loadResourceLoadingLevel(resourceLoadingLevel)
        gameInitializedEvent = GameInitializationUtil.getInstance().EVENT
        gameInitializedEvent.setResourceLoadingLevel(resourceLoadingLevel)
        GameInitializedEventHandler.getInstance().fireEvent(gameInitializedEvent)
    end
    

    # throws Exception
    def loadResources(level)
        gameInitializedEvent = GameInitializationUtil.getInstance().EVENT
        gameInitializedEvent.setLevel(level)
        GameInitializedEventHandler.getInstance().fireEvent(gameInitializedEvent)
    end
    

    # throws Exception
    def updateColor()
    end
    

    # throws Exception
    def buildGame(portion)
        @screenCapture.endRecording()
        @screenCapture.startRecording()
        progressCanvas = ProgressCanvasFactory.getInstance()
        features = Features.getInstance()
        progressCanvas.addNormalPortion(portion, "Generic Build")
        self.removeAllGameKeyInputListenersOnBuild()
        self.updateTouch()
        progressCanvas.addNormalPortion(portion, "High Scores")
        @highScoresFactoryInterface.fetchHighScores(@gameLayerManager.getGameInfo(), @highScoresHelper)
        self.setHighScoresPaintable(NullPaintable.getInstance())
        progressCanvas.addNormalPortion(portion, "Finishing.")
        self.getEndGameInfoP().update(self.getLayerManager().getGameInfo(), self)
        @isSingleKeyRepeatableProcessing = features.isFeature(InputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS)
        self.setGameOver(false)
        progressCanvas.addNormalPortion(portion, "Finishing..")
        self.updateColor()
        self.getStartIntermissionPaintable().update()
        if !self.isRunningInAnotherThread()
            return
        end
        progressCanvas.addNormalPortion(portion, "Finishing...")
        if self.isMainCanvas() || !self.isInitialized()
            if features.isFeature(MainFeatureFactory.getInstance().LOAD_ONDEMAND)
                if self.getCustomCommandListener() != nil
                    progressCanvas.end_()
                end
            else
                progressCanvas.end_()
            end
            self.setInitialized(true)
        end
        if self.getCustomCommandListener() == NullCommandListener::NULL_COMMAND_LISTENER
            @logUtil.putF("Show Game Paintable in DemoCanvas Thread", self, @BUILD_GAME)
            @gameCanvasStartListener.showGamePaintable()
        else
            @logUtil.putF("No GameCanvasStartListener", self, @BUILD_GAME)
        end
        @colorFillPaintable.setBasicColorP(@gameLayerManager.getBackgroundBasicColor())
        @gameBehavior.buildGame(self)
    end
    

    def buildGame2()
        PreLogUtil.put(StringMaker.new().append(@gameInputStrings.ENABLE_PLAYER_GAME_INPUTS).appendint(@localPlayerGameInputList.size()).to_s, self, @BUILD_GAME)
        playerGameInput = nil
        (@localPlayerGameInputList.size() - 1).step(0, -(1)) do |index|
            playerGameInput = @localPlayerGameInputList.get(index)
            PreLogUtil.put(StringMaker.new().append(@gameInputStrings.ENABLE_PLAYER_GAME_INPUT).append(playerGameInput.to_s).to_s, self, @BUILD_GAME)
            playerGameInput.removeNonAIInputGameKeyEvents()
            self.addKeyInputListener(playerGameInput)
        end
    end
    

    def addKeyInputListener(playerGameInput)
        GameKeyEventHandler.getInstance().addListenerForPlayer(playerGameInput, playerGameInput.getPlayerInputId())
    end
    

    def setGameCanvasStartListener(gameCanvasStartListener)
        @gameCanvasStartListener = gameCanvasStartListener
    end
    

    # throws Exception
    def loadState()
        @logUtil.putF(@commonStrings.START, self, @commonStrings.LOAD)
        hashtable = self.getLoadStateHashtable()
        if hashtable != nil && hashtable.size() > 0
            levelAsString = hashtable.get(GameInfo::LEVEL_NAME)
            level = (levelAsString).to_s.to_i
            gameInfo = @gameLayerManager.getGameInfo()
            gameInfo.setCurrentLevel(level)
        end
    end
    

    # throws Exception
    def getLoadStateHashtable()
        @logUtil.putF(StringMaker.new().append(@commonLabels.START_LABEL).append(@stringUtil.toString(@hashtable)).to_s, self, "getLoadStateHashtable")
        return @hashtable
    end
    

    def setLoadStateHashtable(hashtable)
        @logUtil.putF(StringMaker.new().append(@commonLabels.START_LABEL).append(@stringUtil.toString(hashtable)).to_s, self, "setLoadStateHashtable")
        @hashtable = hashtable
    end
    

    def getCurrentStateHashtable()
        hashtable = @stdUtil.createHashtable()
        level = @gameLayerManager.getGameInfo().getCurrentLevel()
        hashtable.put(GameInfo::LEVEL_NAME.to_s, (level).to_s)
        @logUtil.putF(StringMaker.new().append("End: ").append(@stringUtil.toString(hashtable)).to_s, self, "getCurrentStateHashtable")
        return hashtable
    end
    

    def paintGameOver(graphics)
        ForcedLogUtil.log(@commonStrings.NOT_IMPLEMENTED, self)
    end
    

    def draw(graphics)
        @colorFillPaintable.paint(graphics)
        @basicSetColorUtil.setBasicColorP(graphics, @gameLayerManager.getForegroundBasicColor())
        @gameSpecificPaintable.paint(graphics)
    end
    

    def clear(graphics)
        @colorFillPaintable.paint(graphics)
    end
    

    def paint(graphics)
        @myFontProcessor.process(graphics)
        @baseGameStatistics.nextRefresh()
        self.draw(graphics)
        @menuPaintable.paint(graphics)
        @progressPaintable.paint(graphics)
    end
    

    def paintThreed(graphics)
    end
    

    # throws Exception
    def processEndLevelIntermissionGameState()
    end
    

    def nonBotPaint(graphics)
        @endGamePaintable.paint(graphics)
        @intermissionPaintable.paint(graphics)
        self.paintIntermission(graphics)
        @touchPaintable.paint(graphics)
    end
    

    def paintIntermission(graphics)
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
        @inputProcessor.keyPressedByDevice(keyCode, deviceId)
    end
    

    def keyRepeatedByDevice(keyCode, deviceId)
        if @isSingleKeyRepeatableProcessing
            @inputProcessor.keyPressedByDevice(keyCode, deviceId)
        end
    end
    

    def keyReleasedByDevice(keyCode, deviceId)
        @inputProcessor.keyReleasedByDevice(self, keyCode, deviceId)
    end
    

    # throws Exception
    def handleRawKey(keyCode, deviceId, repeated)
    end
    

    def endProgress(isProgress)
        portion = 30
        if isProgress && self.isMainCanvas()
            myCommandsFactory = MyCommandsFactory.getInstance()
            progressCanvas = ProgressCanvasFactory.getInstance()
            progressCanvas.start()
            self.getCustomCommandListener().commandAction(myCommandsFactory.SET_DISPLAYABLE, progressCanvas)
            portion = 4
        end
        return portion
    end
    

    # throws Exception
    def processPlayingGame()
        @cheatProcessor.update()
        @sensorGameUpdateProcessor.getInputSensor().update()
        @gameInputProcessor.process()
        @gameLayerManager.process()
        @startIntermissionProcessor.process()
    end
    

    # throws Exception
    def threadInit()
    end
    

    # throws Exception
    def processGame()
        self.class.superclass.instance_method(:process).bind(self).call()
        if AllBinaryMediaManager.update()
            if !@primaryPlayerQueue.process()
                @secondaryPlayerQueue.process()
            end
        end
        @mainStateProcessor.process()
        @menuInputProcessor.processInputList()
        @endGameProcessor.process()
        @baseGameStatistics.nextFrame()
    end
    

    def notifyDonePainting()
        (self).java_monitor.synchronize do
            @threadObjectUtil.notifyObject(self)
        end
    end
    

    # throws Exception
    def shouldWait()
        features = Features.getInstance()
        if AndroidUtil.isAndroid()
        elsif features.isFeature(@openGLFeatureFactory.OPENGL_2D)
        else
            if features.isDefault(@openGLFeatureFactory.OPENGL)
                openGLImageSpecificFactory = OpenGLImageSpecificFactory.getInstance()
                while openGLImageSpecificFactory.updating
                    sleep((@YIELD_SLEEP) / 1000.0)
                end
            end
        end
    end
    

    def run()
        begin
            @logUtil.putF(@commonStrings.START_RUNNABLE, self, @commonStrings.RUN)
            progressCanvas = ProgressCanvasFactory.getInstance()
            progressCanvas.addNormalPortion(50, "Game Thread")
            self.setCurrentThread()
            self.setRunning(true)
            if self.getCustomCommandListener() == NullCommandListener::NULL_COMMAND_LISTENER
                sleep((@YIELD_SLEEP) / 1000.0)
            end
            self.shouldWait()
            self.threadInit()
            if self.getCustomCommandListener() == NullCommandListener::NULL_COMMAND_LISTENER
                sleep((@YIELD_SLEEP) / 1000.0)
            end
            self.open()
            gameAdState = @gameAdStateFactory.getCurrentInstance()
            gameAdState.init()
            gameAdState.setGameIsReady(true)
            @gameBehavior.run(self)
            @logUtil.putF(@commonStrings.END_RUNNABLE, self, @commonStrings.RUN)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.RUN, e)
        end
    end
    

    # throws Exception
    def run2()
        features = Features.getInstance()
        if features.isDefault(@openGLFeatureFactory.OPENGL_AS_GAME_THREAD) || J2MEUtil.isHTML()
            if features.isDefault(@openGLFeatureFactory.OPENGL_AS_GAME_THREAD)
                @logUtil.putF(@openGLFeatureFactory.OPENGL_AS_GAME_THREAD.getName(), self, @commonStrings.RUN)
            end
            if J2MEUtil.isHTML()
                @logUtil.putF(GraphicsStrings.getInstance().HTML, self, @commonStrings.RUN)
            end
            currentDisplayableFactory = CurrentDisplayableFactory.getInstance()
            currentDisplayableFactory.setRunnable(@gameRunnable)
            currentDisplayableFactory.setDisplayable(self)
            OpenGLThreadUtil.getInstance().onResume()
        elsif features.isDefault(@openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS)
            @logUtil.putF(@openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS.getName(), self, @commonStrings.RUN)
            OpenGLThreadUtil.getInstance().onResume()
            while self.isRunning()
                self.run3()
            end
            self.end_()
        else
            @logUtil.putF("this thread", self, @commonStrings.RUN)
            while self.isRunning()
                self.run3()
            end
            self.end_()
        end
    end
    

    # throws Exception
    def run3()
        @loopTimeHelper.setStartTime(@gameTickTimeDelayHelper.setStartTime())
        @gameTickDisplayInfoSingleton.update()
        self.processGame()
        self.processLoopSleep()
    end
    

    def setRunning(running)
        super(running)
        begin
            features = Features.getInstance()
            if running
            else
                if features.isDefault(@openGLFeatureFactory.OPENGL) || SWTUtil.isSWT
                    if @gameLayerManager.getGameInfo().getGameType() != @gameTypeFactory.BOT
                        currentDisplayableFactory = CurrentDisplayableFactory.getInstance()
                        currentDisplayableFactory.clearRunnable()
                    end
                    self.end_()
                end
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @SET_RUNNING, e)
        end
    end
    

    # throws Exception
    def end_()
        @screenCapture.endRecording()
        @baseGameStatistics.add(StringMaker.new().append(@baseGameStatistics.to_s).append(CommonSeps.getInstance().NEW_LINE).to_s)
        @baseGameStatistics.init()
        @gameKeyEventHandler.removeListener(@cheatProcessor)
        self.close()
        self.removeAllGameKeyInputListeners()
        self.endGameThread()
    end
    

    # throws Exception
    def endGameThread()
        DisplayChangeEventHandler.getInstance().removeListener(self)
        GameLevelDisplayChangeEventListenersFactory.getInstance().clear()
        gameAdState = @gameAdStateFactory.getCurrentInstance()
        gameAdState.notPlayingAdState()
    end
    

    def createHighScore(score)
        gameInfo = @gameLayerManager.getGameInfo()
        return HighScore.new(0, "NONE", GameInfo.new(gameInfo.getGameType(), gameInfo.getGameMode(), PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 0, 0), score)
    end
    

    # throws Exception
    def setHighScore(abeClientInformation, name, score, autoSubmit, isLast)
        @gameBehavior.setHighScore(abeClientInformation, self, name, score, autoSubmit, isLast)
    end
    

    # throws Exception
    def setHighScore2(abeClientInformation, name, score, autoSubmit, isLast)
        highScore = self.createHighScore(score)
        textBox = HighScoreTextBox.new(@highScoresFactoryInterface, @highScoresHelper, abeClientInformation, @gameLayerManager.getGameInfo(), self.getCustomCommandListener(), name, highScore, @gameLayerManager.getBackgroundBasicColor(), @gameLayerManager.getForegroundBasicColor())
        if isLast
            self.getCustomCommandListener().commandAction(GameCommandsFactory.getInstance().SET_MENU_DISPLAYABLE, textBox)
        end
        if autoSubmit
            class SaveHighScoreRunnable
                include Runnable
                attr_accessor :progressCanvas

                def initialize_fields
                    @progressCanvas = ProgressCanvasFactory.getInstance()
                end

                def initialize
                    initialize_fields
                end
                

                def run()
                    logUtil = LogUtil.getInstance()
                    begin
                        if @isLast
                            @textBox.submit()
                        else
                            @textBox.saveHighScore()
                        end
                    rescue StandardError => e
                        commonStrings = CommonStrings.getInstance()
                        logUtil.put(commonStrings.EXCEPTION, self, "run", e)
                        @progressCanvas.end_()
                    end
                end
            end
            SecondaryThreadPool.getInstance().runTask(SaveHighScoreRunnable.new())
        end
    end
    

    def getGameStateTimeHelper()
        return @gameStateTimeHelper
    end
    

    def setInitialized(initialized)
        @initialized = initialized
    end
    

    def isInitialized()
        return @initialized
    end
    

    def getSourceId()
        return AllBinaryGameCanvas.id
    end
    

    def setProgressPaintable(paintable)
        @progressPaintable = paintable
    end
    

    def getStartIntermissionInterface()
        return @startIntermissionInterface
    end
    

    def getEndLevelIntermissionInterface()
        return @endLevelIntermissionInterface
    end
    

    def setTouchPaintableP(paintable)
        @touchPaintable = paintable
    end
    

    def getTouchPaintableP()
        return @touchPaintable
    end
    

    def setEndGamePaintable(endGamePaintable)
        @endGamePaintable = endGamePaintable
    end
    

    def getEndGamePaintable()
        return @endGamePaintable
    end
    

    def setIntermissionPaintable(intermissionPaintable)
        @intermissionPaintable = intermissionPaintable
    end
    

    def getIntermissionPaintable()
        return @intermissionPaintable
    end
    

    def getEndGameInfoP()
        return @endGameInfo
    end
    

    def setHighScoresPaintable(highScoresPaintable)
        @highScoresPaintable = highScoresPaintable
    end
    

    def getHighScoresPaintable()
        return @highScoresPaintable
    end
    

    def getRealHighScoresPaintable()
        return @realHighScoresPaintable
    end
    

    def clearPlayerGameInputList()
        playerGameInput = nil
        (@localPlayerGameInputList.size() - 1).step(0, -(1)) do |index|
            playerGameInput = @localPlayerGameInputList.get(index)
            @gameKeyEventHandler.removeListener(playerGameInput)
        end
        @localPlayerGameInputList.clear()
    end
    

    def addPlayerGameInput(playerGameInput)
        @localPlayerGameInputList.add(playerGameInput)
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
    

    def getStartLevel()
        return @startLevel
    end
    

    def setStartLevel(startLevel)
        @startLevel = startLevel
    end
    

    def setTouchButtonsPaintable(touchButtonsPaintable)
        @touchButtonsPaintable = touchButtonsPaintable
    end
    

    def getTouchButtonsPaintable()
        return @touchButtonsPaintable
    end
    

    def setGameInputProcessor(gameInputProcessor)
        @gameInputProcessor = gameInputProcessor
    end
    

    def getGameInputProcessor()
        return @gameInputProcessor
    end
    

    def setEndGameProcessor(endGameProcessor)
        @endGameProcessor = endGameProcessor
    end
    

    def getEndGameProcessor()
        return @endGameProcessor
    end
    

    def setEndGameStatePaintable(endGameStatePaintable)
        @endGameStatePaintable = endGameStatePaintable
    end
    

    def getEndGameStatePaintable()
        return @endGameStatePaintable
    end
    

    def setNonBotPaintableP(nonBotPaintable)
        @nonBotPaintable = nonBotPaintable
    end
    

    def getNonBotPaintableP()
        return @nonBotPaintable
    end
    

    def setStartIntermissionPaintable(startIntermissionPaintable)
        @startIntermissionPaintable = startIntermissionPaintable
    end
    

    def getStartIntermissionPaintable()
        return @startIntermissionPaintable
    end
    

    def setMainStateProcessor(mainStateProcessor)
        @mainStateProcessor = mainStateProcessor
    end
    

    def getMainStateProcessor()
        return @mainStateProcessor
    end
    

    def setProcessGameProcessor(processGameProcessor)
        @processGameProcessor = processGameProcessor
    end
    

    def getProcessGameProcessor()
        return @processGameProcessor
    end
    

    def setOpenMenuPaintable(openMenuPaintable)
        @openMenuPaintable = openMenuPaintable
    end
    

    def getOpenMenuPaintable()
        return @openMenuPaintable
    end
    

    def setPopupMenuInputProcessor(popupMenuInputProcessor)
        @popupMenuInputProcessor = popupMenuInputProcessor
    end
    

    def getPopupMenuInputProcessor()
        return @popupMenuInputProcessor
    end
    

    def getSensorGameUpdateProcessor()
        return @sensorGameUpdateProcessor
    end
    

    def getRawGameInputProcessor()
        return @rawGameInputProcessor
    end
    

    def getRawInputProcessor()
        return @rawInputProcessor
    end
    

    def setInputProcessor(inputProcessor)
        @inputProcessor = inputProcessor
    end
    

    def getInputProcessor()
        return @inputProcessor
    end
    

    def setMenuPaintable(menuPaintable)
        @menuPaintable = menuPaintable
    end
    

    def getMenuPaintable()
        return @menuPaintable
    end
    

    def setFormPaintable(formPaintable)
        @formPaintable = formPaintable
    end
    

    def getFormPaintable()
        return @formPaintable
    end
    

    def setGameSpecificPaintableP(gameSpecificPaintable)
        @gameSpecificPaintable = gameSpecificPaintable
    end
    

    def getGameSpecificPaintableP()
        return @gameSpecificPaintable
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
    

    def getType()
        return AllBinaryGameCanvas::TYPE
    end

    def self.id()
        return defined?(@@id) ? @@id : nil
    end

    def self.id=(value)
        @@id = value
    end
end

require "org/allbinary/AndroidUtil"
require "org/allbinary/J2MEUtil"
require "org/allbinary/business/advertisement/GameAdStateFactory"
require "org/allbinary/canvas/BaseGameStatistics"
require "org/allbinary/canvas/GameStatisticsFactory"
require "org/allbinary/canvas/Processor"
require "org/allbinary/debug/DebugFactory"
require "org/allbinary/debug/NoDebug"
require "org/allbinary/game/GameAdState"
require "org/allbinary/game/GameInfo"
require "org/allbinary/game/GameStrings"
require "org/allbinary/game/GameTypeFactory"
require "org/allbinary/game/Intermission"
require "org/allbinary/game/IntermissionInterface"
require "org/allbinary/game/PlayerTypesFactory"
require "org/allbinary/game/commands/GameCommandsFactory"
require "org/allbinary/game/configuration/InGameFeatures"
require "org/allbinary/game/configuration/InGameOptionsForm"
require "org/allbinary/game/configuration/event/ChangedGameFeatureListener"
require "org/allbinary/game/configuration/event/GameInitializedEvent"
require "org/allbinary/game/configuration/event/GameInitializedEventHandler"
require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/configuration/feature/GameFeatureFactory"
require "org/allbinary/game/configuration/feature/GameFeatureUtil"
require "org/allbinary/game/configuration/feature/InputFeatureFactory"
require "org/allbinary/game/configuration/feature/MainFeatureFactory"
require "org/allbinary/game/configuration/feature/SensorFeatureFactory"
require "org/allbinary/game/configuration/feature/TouchFeatureFactory"
require "org/allbinary/game/displayable/GameLevelDisplayChangeEventListenersFactory"
require "org/allbinary/game/init/BasicBuildGameInitializerFactory"
require "org/allbinary/game/init/GameInitializationUtil"
require "org/allbinary/game/input/GameInputStrings"
require "org/allbinary/game/input/InputProcessor"
require "org/allbinary/game/input/NoPlayerGameInput"
require "org/allbinary/game/input/PlayerGameInput"
require "org/allbinary/game/input/event/GameKeyEventHandler"
require "org/allbinary/game/layer/AllBinaryGameLayerManager"
require "org/allbinary/game/layer/SWTUtil"
require "org/allbinary/game/paint/ColorFillBasePaintable"
require "org/allbinary/game/paint/ColorFillPaintableFactory"
require "org/allbinary/game/resource/ResourceLoadingLevel"
require "org/allbinary/game/resource/ResourceLoadingLevelFactory"
require "org/allbinary/game/score/HighScore"
require "org/allbinary/game/score/HighScoresHelperBaseInterface"
require "org/allbinary/game/score/HighScoresFactoryInterface"
require "org/allbinary/game/score/HighScoresPaintable"
require "org/allbinary/game/score/NullHighScoresSingletonFactory"
require "org/allbinary/game/score/displayable/HighScoreTextBox"
require "org/allbinary/game/state/GameState"
require "org/allbinary/game/state/GameStateFactory"
require "org/allbinary/graphics/GraphicsStrings"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/graphics/ScreenCapture"
require "org/allbinary/graphics/ScreenCaptureFactory"
require "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas"
require "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory"
require "org/allbinary/graphics/color/BasicColorFactory"
require "org/allbinary/graphics/color/BasicColorSetUtil"
require "org/allbinary/graphics/displayable/CanvasStrings"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/graphics/displayable/GameTickDisplayInfoSingleton"
require "org/allbinary/graphics/displayable/command/MyCommandsFactory"
require "org/allbinary/graphics/displayable/event/DisplayChangeEvent"
require "org/allbinary/graphics/displayable/event/DisplayChangeEventHandler"
require "org/allbinary/graphics/font/MyFontProcessor"
require "org/allbinary/graphics/font/UpdateMyFontProcessor"
require "org/allbinary/graphics/form/CommandCurrentSelectionFormFactory"
require "org/allbinary/graphics/form/FormPaintable"
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
require "org/allbinary/graphics/paint/NullInitUpdatePaintable"
require "org/allbinary/graphics/paint/NullPaintable"
require "org/allbinary/graphics/paint/Paintable"
require "org/allbinary/graphics/paint/PaintableInterface"
require "org/allbinary/image/opengles/OpenGLImageSpecificFactory"
require "org/allbinary/input/gyro/SensorGameUpdateProcessor"
require "org/allbinary/input/gyro/SingleSensorGameUpdateProcessor"
require "org/allbinary/input/motion/button/BaseTouchInput"
require "org/allbinary/input/motion/button/NoButtonsTouchInputFactory"
require "org/allbinary/input/motion/button/TouchButtonFactory"
require "org/allbinary/input/motion/button/TouchButtonsPaintableFactory"
require "org/allbinary/input/motion/button/TouchScreenFactory"
require "org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler"
require "org/allbinary/logic/ABSystemWrapper"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/system/os/OperatingSystemFactory"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/logic/util/event/EventStrings"
require "org/allbinary/media/audio/AllBinaryMediaManager"
require "org/allbinary/media/audio/PlayerQueue"
require "org/allbinary/media/audio/PrimaryPlayerQueueFactory"
require "org/allbinary/media/audio/SecondaryPlayerQueueFactory"
require "org/allbinary/media/audio/SelectSound"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/thread/SecondaryThreadPool"
require "org/allbinary/time/GameTickTimeDelayHelper"
require "org/allbinary/time/GameTickTimeDelayHelperFactory"
require "org/allbinary/time/TimeDelayHelper"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/util/BasicArrayListUtil"
require "org/allbinary/game/displayable/canvas/BaseGameBehavior"
require "org/allbinary/game/displayable/canvas/BaseMenuBehavior"
require "org/allbinary/game/displayable/canvas/BasicMenuInputProcessor"
require "org/allbinary/game/displayable/canvas/BasicPopupMenuPaintable"
require "org/allbinary/game/displayable/canvas/CheatGameInputProcessor"
require "org/allbinary/game/displayable/canvas/DemoGameBehavior"
require "org/allbinary/game/displayable/canvas/DemoPaintableInterface"
require "org/allbinary/game/displayable/canvas/EndGameInfo"
require "org/allbinary/game/displayable/canvas/EndGamePaintable"
require "org/allbinary/game/displayable/canvas/EndGameProcessor"
require "org/allbinary/game/displayable/canvas/FormInputProcessor"
require "org/allbinary/game/displayable/canvas/FormUtil"
require "org/allbinary/game/displayable/canvas/GameCanvasInputProcessor"
require "org/allbinary/game/displayable/canvas/GameCanvasPauseRunnable"
require "org/allbinary/game/displayable/canvas/GameCanvasRunnable"
require "org/allbinary/game/displayable/canvas/GameLimitedCommandTextItemArrayFactory"
require "org/allbinary/game/displayable/canvas/GameProcessor"
require "org/allbinary/game/displayable/canvas/InGameMenuBehavior"
require "org/allbinary/game/displayable/canvas/MyFormUtil"
require "org/allbinary/game/displayable/canvas/NoMenuInputProcessor"
require "org/allbinary/game/displayable/canvas/NullDemoPaintable"
require "org/allbinary/game/displayable/canvas/NullWaitGameRunnable"
require "org/allbinary/game/displayable/canvas/PopupCommandFormInputProcessor"
require "org/allbinary/game/displayable/canvas/PopupMenuInputProcessor"
require "org/allbinary/game/displayable/canvas/StartIntermissionProcessor"
require "java/lang/Thread"

class AllBinaryGameCanvas
    @@id = 0
    TYPE = 2
end

