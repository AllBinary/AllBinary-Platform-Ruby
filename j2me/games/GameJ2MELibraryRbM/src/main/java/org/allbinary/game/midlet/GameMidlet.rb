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
# package org.allbinary.game.midlet

require "java/lang/Object"
require "javax/microedition/lcdui/CommandListener"
require "org/allbinary/midlet/ProgressMidlet"

class GameMidlet < ProgressMidlet
    include CommandListener
    attr_accessor :enumerationUtil, :basicColorFactory, :features, :midletStrings, :myCommandsFactory, :gameStrings, :gameAdStateFactory, :gameStateFactory, :tsUtil, :DISPLAYABLE, :COMMAND_NAME, :NO_COMMAND, :NO_DISPLAYABLE, :COMMAND_ACTION, :PAUSE_APP_BACKGROUND, :UN_PAUSE_APP_BACKGROUND, :aboutCommandProcessor, :webCommandProcessor, :gameMidletStateFactory, :gameStartTimeHelper, :fullScreenUtil, :debugInterface, :allbinaryGameCanvasRunnableInterface, :thread, :loadGameForm, :isFullScreen, :resized, :startedBefore

    def initialize_fields
        @enumerationUtil = EnumerationUtil.getInstance()
        @basicColorFactory = BasicColorFactory.getInstance()
        @features = Features.getInstance()
        @midletStrings = MidletStrings.getInstance()
        @myCommandsFactory = MyCommandsFactory.getInstance()
        @gameStrings = GameStrings.getInstance()
        @gameAdStateFactory = GameAdStateFactory.getInstance()
        @gameStateFactory = GameStateFactory.getInstance()
        @tsUtil = TsUtil.getInstance()
        @DISPLAYABLE = " Displayable: "
        @COMMAND_NAME = "command Name/Label: "
        @NO_COMMAND = "No Command"
        @NO_DISPLAYABLE = "No Displayable"
        @COMMAND_ACTION = StringMaker.new().append("GameMidlet::").append(@midletStrings.COMMAND_ACTION).to_s
        @PAUSE_APP_BACKGROUND = "pauseAppBackground"
        @UN_PAUSE_APP_BACKGROUND = "unPauseAppBackground"
        @aboutCommandProcessor = AboutCommandProcessor.getInstance()
        @webCommandProcessor = WebCommandProcessor.getInstance()
        @gameMidletStateFactory = GameMidletStateFactory.getInstance()
        @gameStartTimeHelper = TimeDelayHelper.new(240)
        @fullScreenUtil = FullScreenUtil.getInstance()
        @debugInterface = nil
        @allbinaryGameCanvasRunnableInterface = NullGameCanvasRunnable::NULL_GAME_CANVAS_RUNNABLE
        @thread = NullThread::NULL_THREAD
        @loadGameForm = nil
        @isFullScreen = false
        @resized = false
        @startedBefore = false
    end
    

    def initialize(clientInformationFactory)
        super(clientInformationFactory)
        initialize_fields
        SmallIntegerSingletonFactory.getInstance().initWithRange(0x291, 6)
        @loadGameForm = CommandForm.getNullCommandForm()
        progressCanvas = ProgressCanvasFactory.getInstance()
        progressCanvas.init(self)
        GameFeatureEventHandler.getInstance().addListenerInterface(ChangedGameFeatureListener.getInstance())
        GamePersistanceSingleton.getInstance().clear()
        @debugInterface = DebugFactory.getInstance()
        self.init()
    end
    

    def init()
    end
    

    # throws Exception
    def setDemo()
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    

    # throws Exception
    def createGame()
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    

    # throws Exception
    def mediaShutdown()
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    

    def stopAll()
    end
    

    def pauseApp()
        self.pauseAppBackground(true)
        gameAdState = @gameAdStateFactory.getCurrentInstance()
        gameAdState.getAdvertisements().stopAll()
    end
    

    def pauseAppBackground(background)
        @logUtil.putF(@commonStrings.START, self, @PAUSE_APP_BACKGROUND)
        if @allbinaryGameCanvasRunnableInterface != NullGameCanvasRunnable::NULL_GAME_CANVAS_RUNNABLE
            @allbinaryGameCanvasRunnableInterface.pause()
        else
            @logUtil.putF("<<<<<< Null", self, @PAUSE_APP_BACKGROUND)
        end
        AllBinarySensorManager.getInstance().shutdown()
    end
    

    def unPauseApp()
        self.unPauseAppBackground(true)
        gameAdState = @gameAdStateFactory.getCurrentInstance()
        gameAdState.getAdvertisements().startAll()
    end
    

    def unPauseAppBackground(background)
        @logUtil.putF(@commonStrings.START, self, @UN_PAUSE_APP_BACKGROUND)
        AllBinarySensorManager.getInstance().init()
        gameCanvasRunnableInterface = @allbinaryGameCanvasRunnableInterface
        if gameCanvasRunnableInterface != NullGameCanvasRunnable::NULL_GAME_CANVAS_RUNNABLE
            gameCanvasRunnableInterface.unPause()
        else
            @logUtil.putF("<<<<<< Null", self, @UN_PAUSE_APP_BACKGROUND)
        end
    end
    

    def destroyAppInRunnable(unconditional, isProgress)
        progressCanvas = ProgressCanvasFactory.getInstance()
        if isProgress
            progressCanvas.start()
            self.commandAction(@myCommandsFactory.SET_DISPLAYABLE, progressCanvas)
        end
        self.destroyApp(unconditional)
        if isProgress
            progressCanvas.end_()
        end
    end
    

    def destroyApp(unconditional)
        _METHOD_NAME = "GameMidlet::destroyApp"
        begin
            PreLogUtil.put(GameStatisticsFactory.getInstance().to_s, self, _METHOD_NAME)
            gameAdState = @gameAdStateFactory.getCurrentInstance()
            gameAdState.getAdvertisements().stopAll()
            if !self.isDestroyed()
                self.stopGameCanvasRunnableInterface()
                self.setGameCanvasRunnableInterface(NullGameCanvasRunnable::NULL_GAME_CANVAS_RUNNABLE)
                self.mediaShutdown()
            else
                @logUtil.putF("Midlet Managment Error: Midlet Should Only Be Destroyed Once", self, _METHOD_NAME)
            end
            super(true)
            PreLogUtil.put(@commonStrings.END_, self, _METHOD_NAME)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, _METHOD_NAME, e)
        end
        @logUtil.putF(@commonStrings.END_, self, _METHOD_NAME)
    end
    

    # throws MIDletStateChangeException
    def startApp()
        begin
            gameAdState = @gameAdStateFactory.getCurrentInstance()
            gameAdState.getAdvertisements().startAll()
            _START_APP = "startApp"
            @logUtil.putF(@commonStrings.START, self, _START_APP)
            gameCanvasRunnableInterface = @allbinaryGameCanvasRunnableInterface
            if gameCanvasRunnableInterface == NullGameCanvasRunnable::NULL_GAME_CANVAS_RUNNABLE
                @gameMidletStateFactory.setCurrentGameState(@gameStateFactory.NO_GAME_STATE)
                self.setDemo()
            else
                @logUtil.putF("GameCanvasRunnableInterface is available", self, _START_APP)
                if gameCanvasRunnableInterface == self.getCurrentDisplayable()
                    self.unPauseAppBackground(false)
                else
                    @logUtil.putF("GameCanvasRunnableInterface is not current displayable", self, _START_APP)
                end
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "startApp", e)
            self.destroyApp(false)
            self.notifyDestroyed()
        end
    end
    

    def commandAction(command, displayable)
        java_monitor.synchronize do
        begin
            displayableAsString = @NO_DISPLAYABLE
            if displayable != nil
                displayableAsString = displayable.to_s
            end
            label = @NO_COMMAND
            if command != nil
                label = command.getLabel()
            end
            PreLogUtil.put(StringMaker.new().append(@COMMAND_NAME).append(label).append(@DISPLAYABLE).append(displayableAsString).to_s, self, @COMMAND_ACTION)
            gameCommandsFactory = GameCommandsFactory.getInstance()
            allbinaryGameCanvasRunnableInterface = @allbinaryGameCanvasRunnableInterface
            gameCanvasRunnableInterface = allbinaryGameCanvasRunnableInterface
            if command == gameCommandsFactory.SHOW_GAME_CANVAS
                if self.getDisplay().getCurrent() != gameCanvasRunnableInterface && allbinaryGameCanvasRunnableInterface.getType() != NullGameCanvasRunnable::NULL_GAME_CANVAS_RUNNABLE.getType()
                    self.setDisplay(gameCanvasRunnableInterface)
                end
                self.unPauseAppBackground(false)
            elsif command == gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS
                menuListener = displayable
                menuListener.close()
                self.setDisplay(gameCanvasRunnableInterface)
                self.unPauseAppBackground(false)
            elsif command == gameCommandsFactory.EXIT_COMMAND
                if GameMidletEventHandler.getInstance().getEventListenerInterfaceListP().size() == 0
                    self.exitProgress(true)
                end
                GameMidletEventHandler.getInstance().fireEvent(DemoGameMidletEvent.new(self, DemoGameMidletStateFactory.getInstance().NONE))
            elsif command == gameCommandsFactory.EXIT_WITHOUT_PROGRESS_COMMAND
                self.exitProgress(false)
            elsif command == gameCommandsFactory.START_COMMAND || command == gameCommandsFactory.RESTART_COMMAND || command == gameCommandsFactory.CONTINUE_COMMAND
                if @gameMidletStateFactory.getCurrentGameState() != @gameStateFactory.PLAYING_GAME_STATE || command == gameCommandsFactory.RESTART_COMMAND
                    if @gameStartTimeHelper.isTimeTNT()
                        if command == gameCommandsFactory.START_COMMAND && self.isDemoLoading()
                            @logUtil.putF("Trying to Start Game Before Loading Complete", self, @midletStrings.COMMAND_ACTION)
                        else
                            @startedBefore = true
                            self.createGame()
                            @gameMidletStateFactory.setCurrentGameState(@gameStateFactory.PLAYING_GAME_STATE)
                        end
                    else
                        @logUtil.putF("Starting Game Too Often", self, @midletStrings.COMMAND_ACTION)
                    end
                else
                    @logUtil.putF("Already in playing state", self, @COMMAND_ACTION)
                end
            elsif command == gameCommandsFactory.BUY_COMMAND
                inApplicationPurchaseFactory = InApplicationPurchaseFactory.getInstance()
                list = LockableFeatureFactory.getInstance().getList()
                lockableFeature = list.get(0)
                if list.size() > 0 && !inApplicationPurchaseFactory.isPurchased(lockableFeature)
                    inApplicationPurchaseFactory.purchase(lockableFeature)
                else
                    TextNotificationUtil.getInstance().fireSuccess("Already Purchased")
                end
            elsif command == gameCommandsFactory.QUIT_COMMAND
                if @gameStartTimeHelper.isTimeTNT()
                    if displayable.is_a?(HighScoreTextBox)
                        menuListener = displayable
                        menuListener.close()
                    end
                    self.stopGameCanvasRunnableInterface()
                    @gameMidletStateFactory.setCurrentGameState(@gameStateFactory.NO_GAME_STATE)
                    self.setDemo()
                end
            elsif command == @myCommandsFactory.RESUME_COMMAND
                self.unPauseAppBackground(false)
            elsif command == @myCommandsFactory.PAUSE_COMMAND
                self.pauseAppBackground(false)
            elsif command == @myCommandsFactory.SET_DISPLAYABLE
                self.pauseAppBackground(false)
                self.setDisplay(displayable)
            elsif command == gameCommandsFactory.SET_MENU_DISPLAYABLE
                self.pauseAppBackground(false)
                menuListener = displayable
                menuListener.open()
                self.setDisplay(displayable)
            elsif command == gameCommandsFactory.START_TRACE
                @debugInterface.start()
                gameCanvas = allbinaryGameCanvasRunnableInterface
                gameCanvas.addCommand(gameCommandsFactory.STOP_TRACE)
                gameCanvas.removeCommand(gameCommandsFactory.START_TRACE)
            elsif command == gameCommandsFactory.STOP_TRACE
                self.pauseAppBackground(false)
                @debugInterface.stop()
                self.unPauseAppBackground(false)
                gameCanvas = allbinaryGameCanvasRunnableInterface
                gameCanvas.addCommand(gameCommandsFactory.START_TRACE)
                gameCanvas.removeCommand(gameCommandsFactory.STOP_TRACE)
            elsif command == gameCommandsFactory.DEFAULT_OPTIONS
                tempDisplayable = displayable
                if tempDisplayable.is_a?(GameOptionsForm)
                    GameFeatureFormUtil.getInstance().setDefault(tempDisplayable)
                end
            elsif command == GameInputMappingInstructionsCanvas::DISPLAY
                tempDisplayable = displayable
                if tempDisplayable.is_a?(GameInputMappingCanvas)
                    gameInputMappingCanvas = tempDisplayable
                    gameInputMappingCanvas.update()
                end
                self.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, self.getInputMappingInstructionsCanvas())
            elsif HighScoreCommandsFactory.getInstance().isHighScoreCommand(command)
                tempDisplayable = displayable
                if tempDisplayable.is_a?(HighScoresCanvas)
                    highScoresCanvas = tempDisplayable
                    highScoresCanvas.updateCommand(command)
                end
            elsif command == HighScoreCommands.getInstance().DISPLAY
                self.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, self.createHighScoresCanvas())
            elsif command == GameInputMappingInstructionsCanvas::CLOSE
                menuListener = displayable
                menuListener.close()
                self.commandAction(GameInputMappingCanvas::DISPLAY, NullCanvas::NULL_CANVAS)
            elsif command == GameInputMappingCanvas::DISPLAY
                if J2MEUtil.isHTML()
                    self.pauseAppBackground(false)
                end
                self.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, self.getInputMappingCanvas())
            elsif command == GameInputMappingCanvas::DEFAULT
                tempDisplayable = displayable
                if tempDisplayable.is_a?(GameInputMappingCanvas)
                    gameInputMappingCanvas = tempDisplayable
                    gameInputMappingCanvas.setDefault()
                end
            elsif command == InGameOptionsForm::DISPLAY
                self.pauseAppBackground(false)
                progressCanvas = ProgressCanvasFactory.getInstance()
                progressCanvas.addNormalPortion(50, "In Game Options")
                layerManager = self.createGameLayerManager()
                inGameOptionsFormFactory = InGameOptionsFormFactory.getInstance()
                inGameOptionsFormFactory.init(self, InGameFeatures.new(), "Options In Game", layerManager.getBackgroundBasicColor(), layerManager.getForegroundBasicColor())
                inGameOptionsForm = inGameOptionsFormFactory.get()
                inGameOptionsForm.setItemStateListener(allbinaryGameCanvasRunnableInterface)
                self.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, inGameOptionsForm)
            elsif command == InGameOptionsForm::DEFAULT
                inGameOptionsForm = InGameOptionsFormFactory.getInstance().get()
                GameFeatureFormUtil.getInstance().setDefault(inGameOptionsForm)
            elsif command == gameCommandsFactory.DISPLAY_OPTIONS
                AllBinaryMediaManager.setMuted(true)
                self.stopAll()
                mainFeatureFactory = MainFeatureFactory.getInstance()
                @isFullScreen = @features.isFeature(mainFeatureFactory.FULL_SCREEN)
                ResizableListenerHandler.getInstance().fireEvent(true)
                self.setResized(false)
                self.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, self.getGameOptionsForm())
            elsif command == gameCommandsFactory.CLOSE_OPTIONS
                ResizableListenerHandler.getInstance().fireEvent(false)
                self.commandAction(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS, displayable)
                stringBuffer = StringMaker.new()
                stringBuffer.append("Close isFullScreen/change: ")
                stringBuffer.appendboolean(@isFullScreen)
                stringBuffer.appendboolean(@fullScreenUtil.isScreenChange(@isFullScreen))
                stringBuffer.append(" isResized: ")
                stringBuffer.appendboolean(self.isResized())
                PreLogUtil.put(stringBuffer.to_s, self, @COMMAND_ACTION)
                if self.isResized() || @fullScreenUtil.isScreenChange(@isFullScreen)
                    self.updateFullScreen()
                end
                AllBinaryMediaManager.setMuted(false)
            elsif command == gameCommandsFactory.DISPLAY_LOAD_FORM
                self.pauseAppBackground(false)
                keyValuePersistance = GamePersistanceSingleton.getInstance()
                keyValuePersistance.clear()
                keyValuePersistance.loadAll(@abeClientInformation)
                if self.getLoadGameForm() == CommandForm.getNullCommandForm()
                    layerManager = self.createGameLayerManager()
                    self.setLoadGameForm(LoadGameForm.new(self, "Load Game", layerManager.getBackgroundBasicColor(), layerManager.getForegroundBasicColor()))
                else
                    self.getLoadGameForm().update()
                end
                self.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, self.getLoadGameForm())
            elsif command == gameCommandsFactory.LOAD_FILE
                loadGameForm = self.getLoadGameForm()
                index = loadGameForm.getSelectedId()
                if index != -1
                    keyValuePersistance = GamePersistanceSingleton.getInstance()
                    self.setStartStateHashtable(keyValuePersistance.get(index))
                    menuListener = self.getLoadGameForm()
                    menuListener.close()
                    PreLogUtil.put(BasicMotionGesturesHandler.getInstance().to_s, self, @COMMAND_ACTION)
                    self.commandAction(gameCommandsFactory.START_COMMAND, NullCanvas::NULL_CANVAS)
                    PreLogUtil.put(BasicMotionGesturesHandler.getInstance().to_s, self, @COMMAND_ACTION)
                end
            elsif command == gameCommandsFactory.DELETE_FILE
                loadGameForm = self.getLoadGameForm()
                index = loadGameForm.getSelectedText()
                if index != -1
                    keyValuePersistance = GamePersistanceSingleton.getInstance()
                    keyValuePersistance.delete(@abeClientInformation, index)
                    keyValuePersistance.clear()
                    keyValuePersistance.loadAllSize(@abeClientInformation, 1)
                    self.getLoadGameForm().update()
                end
            elsif command == gameCommandsFactory.SAVE
                keyValuePersistance = GamePersistanceSingleton.getInstance()
                self.pauseAppBackground(false)
                keyValuePersistance.save(@abeClientInformation, self.getCurrentStateHashtable())
                self.unPauseAppBackground(false)
            elsif command == HighScoreUtil::SUBMIT_TEXTBOX_COMMAND
                @logUtil.putF("Submitted Score", self, @COMMAND_ACTION)
                if displayable.is_a?(HighScoreTextBox)
                    highScoreTextBox = displayable
                    highScoreTextBox.submitted = true
                end
                allbinaryGameCanvasRunnableInterface.setHighScoreSubmitted(true)
                self.commandAction(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS, displayable)
            elsif command == gameCommandsFactory.DISPLAY_ABOUT
                @aboutCommandProcessor.process(self, gameCommandsFactory.SET_MENU_DISPLAYABLE, self.getAboutCanvas())
            elsif command == gameCommandsFactory.OPEN_WEB_URL
                @webCommandProcessor.process(self, gameCommandsFactory.OPEN_WEB_URL, NullCanvas::NULL_CANVAS)
            elsif command == gameCommandsFactory.TOGGLE_KEYBOARD
                virtualKeyboardEventHandler = VirtualKeyboardEventHandler.getInstance()
                virtualKeyboardEventHandler.fireEvent(virtualKeyboardEventHandler.SHOW_EVENT)
            elsif @tsUtil.compareTo(command.getLabel(), gameCommandsFactory.TOGGLE_FULLSCREEN.getLabel()) == 0
                mainFeatureFactory = MainFeatureFactory.getInstance()
                isFullScreen = @features.isFeature(mainFeatureFactory.FULL_SCREEN)
                if isFullScreen
                    @features.removeDefault(mainFeatureFactory.FULL_SCREEN)
                else
                    @features.addDefault(mainFeatureFactory.FULL_SCREEN)
                end
                self.updateFullScreen()
            end
        rescue StandardError => e
            @logUtil.put(StringMaker.new().append(@commonStrings.EXCEPTION_LABEL).append(command.getLabel()).to_s, self, @midletStrings.COMMAND_ACTION, e)
            if command != GameCommandsFactory.getInstance().EXIT_COMMAND
                self.exitProgress(false)
            end
        end
        end
    end
    

    def updateFullScreen()
        mainFeatureFactory = MainFeatureFactory.getInstance()
        isFullScreen = @features.isFeature(mainFeatureFactory.FULL_SCREEN)
        displayable = self.getDisplay().getCurrent()
        if displayable.is_a?(Canvas)
            canvas = displayable
            canvas.setFullScreenMode(isFullScreen)
        end
    end
    

    def onEvent(eventObject)
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    

    # throws Exception
    def getInputMappingInstructionsCanvas()
        return GameInputMappingInstructionsCanvas.new(self, self.createGameLayerManager())
    end
    

    # throws Exception
    def getInputMappingCanvas()
        return GameInputMappingCanvas.new(@abeClientInformation, self, self.createGameLayerManager(), self.getHelpPaintable())
    end
    

    # throws Exception
    def getAboutCanvas()
        return BasicPaintablesCanvas.new(self, CanvasStrings.getInstance().ABOUT, self.createGameLayerManager(), AboutPaintableFactory.getInstance().paintableArray)
    end
    

    # throws Exception
    def getHelpPaintable()
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    

    # throws Exception
    def createHighScoresCanvas()
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    

    # throws Exception
    def startGameCanvasRunnableInterface()
        threadFactoryUtil = ThreadFactoryUtil.getInstance()
        @thread = threadFactoryUtil.getInstanceGameCanvasRunnable(@allbinaryGameCanvasRunnableInterface)
        @logUtil.putF(StringMaker.new().append("Thread Priority: ").appendint((@thread.getPriority()).to_i).to_s, self, "startGameCanvasRunnableInterface")
        @allbinaryGameCanvasRunnableInterface.setThread(@thread)
        threadFactoryUtil.start(@thread)
    end
    

    # throws Exception
    def stopGameCanvasRunnableInterface()
        @logUtil.putF(@commonStrings.START, self, @gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE)
        GameNotificationEventHandler.getInstance().removeAllListeners()
        ColorChangeEventHandler.getInstance().removeAllListeners()
        GameEventHandlerUtil.removeAllListeners()
        gameCanvasRunnableInterface = @allbinaryGameCanvasRunnableInterface
        if gameCanvasRunnableInterface != NullGameCanvasRunnable::NULL_GAME_CANVAS_RUNNABLE
            @logUtil.putF(StringMaker.new().append("Set Running False: ").append(gameCanvasRunnableInterface.to_s).to_s, self, @gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE)
            gameCanvasRunnableInterface.setRunning(false)
        else
            @logUtil.putF("StopGame - Could Not Stop", self, @gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE)
        end
        ThreadUtil.getInstance().join(@thread)
        progressCanvas = ProgressCanvasFactory.getInstance()
        if @features.isFeature(MainFeatureFactory.getInstance().LOAD_ALL)
            progressCanvas.addNormalPortion(50, "Stopped Game Runnable")
        else
            progressCanvas.addNormalPortion(50, "Stopped Main Runnable")
        end
        @logUtil.putF(@commonStrings.END_, self, @gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE)
    end
    

    def getGameCanvasRunnableInterface()
        return @allbinaryGameCanvasRunnableInterface
    end
    

    def setGameCanvasRunnableInterface(gameCanvasRunnableInterface)
        @allbinaryGameCanvasRunnableInterface = gameCanvasRunnableInterface
    end
    

    def createGameLayerManager()
        gameInfo = GameInfo.new(GameTypeFactory.getInstance().SINGLE_PLAYER, GameMode::SERVER, PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 1, 1)
        return AllBinaryGameLayerManager.new(@basicColorFactory.BLACK, @basicColorFactory.WHITE, gameInfo)
    end
    

    def getGameOptionsForm()
        layerManager = self.createGameLayerManager()
        return GameOptionsFormFactory.getInstance().init(self, "Game Options", layerManager.getBackgroundBasicColor(), layerManager.getForegroundBasicColor())
    end
    

    # throws Exception
    def save()
        @logUtil.putF(@commonStrings.START, self, @commonStrings.SAVE)
        hashtable = self.getCurrentStateHashtable()
        GamePersistanceSingleton.getInstance().save(@abeClientInformation, hashtable)
    end
    

    # throws Exception
    def getCurrentStateHashtable()
        @logUtil.putF(@commonStrings.START, self, "getCurrentStateHashtable")
        hashtable = StdUtil.getInstance().createHashtable()
        if @allbinaryGameCanvasRunnableInterface != NullGameCanvasRunnable::NULL_GAME_CANVAS_RUNNABLE
            currentHashtable = @allbinaryGameCanvasRunnableInterface.getCurrentStateHashtable()
            enumeration = currentHashtable.keys()
            key = nil
            while @enumerationUtil.hasMoreElements(enumeration)
                key = @enumerationUtil.nextElement(enumeration)
                hashtable.put(key, currentHashtable.get(key))
            end
        end
        return hashtable
    end
    

    def setLoadGameForm(loadGameForm)
        @loadGameForm = loadGameForm
    end
    

    def getLoadGameForm()
        return @loadGameForm
    end
    

    def setResized(resized)
        @resized = resized
    end
    

    def isResized()
        return @resized
    end
    

    def isDemoLoading()
        if @startedBefore
            return false
        end
        displayable = self.getDisplay().getCurrent()
        if displayable.is_a?(DemoCanvas)
            demoCanvas = displayable
            if demoCanvas.isDemoLoading()
                return true
            end
        end
        return false
    end
end

autoload :Enumeration, "java/util/Enumeration"
autoload :Canvas, "javax/microedition/lcdui/Canvas"
autoload :Command, "javax/microedition/lcdui/Command"
autoload :Displayable, "javax/microedition/lcdui/Displayable"
autoload :NullCanvas, "javax/microedition/lcdui/NullCanvas"
autoload :MIDletStateChangeException, "javax/microedition/midlet/MIDletStateChangeException"
autoload :J2MEUtil, "org/allbinary/J2MEUtil"
autoload :TsUtil, "org/allbinary/TsUtil"
autoload :GameAdStateFactory, "org/allbinary/business/advertisement/GameAdStateFactory"
autoload :FullScreenUtil, "org/allbinary/canvas/FullScreenUtil"
autoload :GameStatisticsFactory, "org/allbinary/canvas/GameStatisticsFactory"
autoload :DebugFactory, "org/allbinary/debug/DebugFactory"
autoload :DebugInterface, "org/allbinary/debug/DebugInterface"
autoload :GameAdState, "org/allbinary/game/GameAdState"
autoload :GameInfo, "org/allbinary/game/GameInfo"
autoload :GameMode, "org/allbinary/game/GameMode"
autoload :GameStrings, "org/allbinary/game/GameStrings"
autoload :GameTypeFactory, "org/allbinary/game/GameTypeFactory"
autoload :PlayerTypesFactory, "org/allbinary/game/PlayerTypesFactory"
autoload :GameCommandsFactory, "org/allbinary/game/commands/GameCommandsFactory"
autoload :GameOptionsForm, "org/allbinary/game/configuration/GameOptionsForm"
autoload :GameOptionsFormFactory, "org/allbinary/game/configuration/GameOptionsFormFactory"
autoload :InGameFeatures, "org/allbinary/game/configuration/InGameFeatures"
autoload :InGameOptionsForm, "org/allbinary/game/configuration/InGameOptionsForm"
autoload :InGameOptionsFormFactory, "org/allbinary/game/configuration/InGameOptionsFormFactory"
autoload :LoadGameForm, "org/allbinary/game/configuration/LoadGameForm"
autoload :ChangedGameFeatureListener, "org/allbinary/game/configuration/event/ChangedGameFeatureListener"
autoload :GameFeatureEventHandler, "org/allbinary/game/configuration/event/GameFeatureEventHandler"
autoload :Features, "org/allbinary/game/configuration/feature/Features"
autoload :GameFeatureFormUtil, "org/allbinary/game/configuration/feature/GameFeatureFormUtil"
autoload :MainFeatureFactory, "org/allbinary/game/configuration/feature/MainFeatureFactory"
autoload :GamePersistanceSingleton, "org/allbinary/game/configuration/persistance/GamePersistanceSingleton"
autoload :KeyValuePersistance, "org/allbinary/game/configuration/persistance/KeyValuePersistance"
autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"
autoload :BasicPaintablesCanvas, "org/allbinary/game/displayable/canvas/BasicPaintablesCanvas"
autoload :DemoCanvas, "org/allbinary/game/displayable/canvas/DemoCanvas"
autoload :GameCanvasRunnableInterface, "org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface"
autoload :GameEventHandlerUtil, "org/allbinary/game/displayable/canvas/GameEventHandlerUtil"
autoload :GameInputMappingCanvas, "org/allbinary/game/displayable/canvas/GameInputMappingCanvas"
autoload :GameInputMappingInstructionsCanvas, "org/allbinary/game/displayable/canvas/GameInputMappingInstructionsCanvas"
autoload :MenuListener, "org/allbinary/game/displayable/canvas/MenuListener"
autoload :NullGameCanvasRunnable, "org/allbinary/game/displayable/canvas/NullGameCanvasRunnable"
autoload :TextNotificationUtil, "org/allbinary/game/input/TextNotificationUtil"
autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager"
autoload :GameNotificationEventHandler, "org/allbinary/game/layer/hud/event/GameNotificationEventHandler"
autoload :HelpPaintable, "org/allbinary/game/paint/help/HelpPaintable"
autoload :HighScoreCommands, "org/allbinary/game/score/HighScoreCommands"
autoload :HighScoreCommandsFactory, "org/allbinary/game/score/HighScoreCommandsFactory"
autoload :HighScoreTextBox, "org/allbinary/game/score/displayable/HighScoreTextBox"
autoload :HighScoreUtil, "org/allbinary/game/score/displayable/HighScoreUtil"
autoload :HighScoresCanvas, "org/allbinary/game/score/displayable/HighScoresCanvas"
autoload :GameStateFactory, "org/allbinary/game/state/GameStateFactory"
autoload :ResizableListenerHandler, "org/allbinary/graphics/ResizableListenerHandler"
autoload :ProgressCanvas, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas"
autoload :ProgressCanvasFactory, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory"
autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory"
autoload :ColorChangeEventHandler, "org/allbinary/graphics/color/ColorChangeEventHandler"
autoload :CanvasStrings, "org/allbinary/graphics/displayable/CanvasStrings"
autoload :MyCanvas, "org/allbinary/graphics/displayable/MyCanvas"
autoload :MyCommandsFactory, "org/allbinary/graphics/displayable/command/MyCommandsFactory"
autoload :AboutCommandProcessor, "org/allbinary/graphics/displayable/screen/AboutCommandProcessor"
autoload :AboutPaintableFactory, "org/allbinary/graphics/displayable/screen/AboutPaintableFactory"
autoload :CommandForm, "org/allbinary/graphics/displayable/screen/CommandForm"
autoload :WebCommandProcessor, "org/allbinary/graphics/displayable/screen/WebCommandProcessor"
autoload :AllBinarySensorManager, "org/allbinary/input/AllBinarySensorManager"
autoload :VirtualKeyboardEventHandler, "org/allbinary/input/event/VirtualKeyboardEventHandler"
autoload :BasicMotionGesturesHandler, "org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler"
autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil"
autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil"
autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :ClientInformationFactory, "org/allbinary/logic/system/security/licensing/ClientInformationFactory"
autoload :InApplicationPurchaseFactory, "org/allbinary/logic/system/security/licensing/InApplicationPurchaseFactory"
autoload :LockableFeature, "org/allbinary/logic/system/security/licensing/LockableFeature"
autoload :LockableFeatureFactory, "org/allbinary/logic/system/security/licensing/LockableFeatureFactory"
autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject"
autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings"
autoload :AllBinaryMediaManager, "org/allbinary/media/audio/AllBinaryMediaManager"
autoload :MidletStrings, "org/allbinary/midlet/MidletStrings"
autoload :NullThread, "org/allbinary/thread/NullThread"
autoload :ThreadFactoryUtil, "org/allbinary/thread/ThreadFactoryUtil"
autoload :ThreadUtil, "org/allbinary/thread/ThreadUtil"
autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :EnumerationUtil, "org/allbinary/util/EnumerationUtil"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"
autoload :DemoGameMidletEvent, "org/allbinary/game/midlet/DemoGameMidletEvent"
autoload :DemoGameMidletStateFactory, "org/allbinary/game/midlet/DemoGameMidletStateFactory"
autoload :GameMidletEventHandler, "org/allbinary/game/midlet/GameMidletEventHandler"
autoload :GameMidletStateFactory, "org/allbinary/game/midlet/GameMidletStateFactory"
require "java/lang/Thread"

