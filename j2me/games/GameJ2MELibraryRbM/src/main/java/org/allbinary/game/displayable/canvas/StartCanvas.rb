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
require "org/allbinary/canvas/RunnableCanvas"
require "org/allbinary/graphics/displayable/event/DisplayChangeEventListener"
require "org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface"
require "org/allbinary/game/displayable/canvas/MenuListener"

class StartCanvas < RunnableCanvas
    include GameCanvasRunnableInterface
    include MenuListener
    include DisplayChangeEventListener
    attr_accessor :basicColorFactory, :features, :openGLFeatureFactory, :myCommandsFactory, :gameAdStateFactory, :gameStateFactory, :gameInputStrings, :formUtil, :basicGameDemoPaintable, :specialAnimationInterface, :paintedSpecialAnimationInterface, :fullScreenUtil, :highScoresHelper, :realHighScoresPaintable, :highScoresPaintable, :state, :timeDelayHelper, :highScoresFactoryInterface, :menuInputProcessor, :menuForm, :gameInitializationInterfaceFactoryInterface, :initialized, :defaultPaintableInterface, :paintableInterface, :overlayPaintable, :tempWait, :inputToGameKeyMapping, :gameRunnable, :progressPaintable, :isSingleKeyRepeatableProcessing, :NONE, :gameKeyEventFactory, :SET_STATE, :baseGameStatistics

    def initialize_fields
        @basicColorFactory = BasicColorFactory.getInstance()
        @features = Features.getInstance()
        @openGLFeatureFactory = OpenGLFeatureFactory.getInstance()
        @myCommandsFactory = MyCommandsFactory.getInstance()
        @gameAdStateFactory = GameAdStateFactory.getInstance()
        @gameStateFactory = GameStateFactory.getInstance()
        @gameInputStrings = GameInputStrings.getInstance()
        @formUtil = FormUtil.getInstance()
        @basicGameDemoPaintable = StatePaintableFactory.getInstance()
        @specialAnimationInterface = SpecialAnimation.getInstance()
        @paintedSpecialAnimationInterface = SpecialAnimation.getInstance()
        @fullScreenUtil = FullScreenUtil.getInstance()
        @highScoresHelper = HighScoresHelper.new()
        @realHighScoresPaintable = HighScoresPaintable.new()
        @highScoresPaintable = NullPaintable.getInstance()
        @state = 0
        @timeDelayHelper = TimeDelayHelper.new(6000)
        @highScoresFactoryInterface = nil
        @menuInputProcessor = NoMenuInputProcessor.getInstance()
        @menuForm = ScrollSelectionForm.getNullScrollSelectionForm()
        @gameInitializationInterfaceFactoryInterface = nil
        @initialized = false
        @defaultPaintableInterface = NullPaintable.getInstance()
        @paintableInterface = NullPaintable.getInstance()
        @overlayPaintable = nil
        @tempWait = NullWaitGameRunnable.getInstance().WAIT
        @inputToGameKeyMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping()
        @gameRunnable = NullWaitGameRunnable.getInstance()
        @progressPaintable = ProgressCanvasFactory.getLazyInstance()
        @isSingleKeyRepeatableProcessing = @features.isFeature(InputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS)
        @NONE = GameKeyFactory.getInstance().NONE
        @gameKeyEventFactory = GameKeyEventFactory.getInstance()
        @SET_STATE = "setState"
        @baseGameStatistics = GameStatisticsFactory.getInstance()
    end
    

    def initialize(abeClientInformation, commandListener, highScoresFactoryInterface, paintable, overlayPaintable, gameInitializationInterfaceFactoryInterface, isContinue)
        super(commandListener, CurrentDisplayableFactory.getInstance().DEFAULT_CHILD_NAME_LIST, true)
        initialize_fields
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
        DisplayChangeEventHandler.getInstance().addListenerInterface(self)
    end
    

    def onEvent(eventObject)
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    

    def onDisplayChangeEvent(displayChangeEvent)
        begin
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
        return StartCanvas.id
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
                @logUtil.putF(StringMaker.new().append(@gameInputStrings.NO_KEY).appendint(keyCode).to_s, self, @gameInputStrings.ADD_KEY_EVENT)
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
        end
    end
    

    def unPause()
        java_monitor.synchronize do
        self.open()
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
            self.getSpecialAnimationInterface().reset()
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
    def createCanvas()
        @highScoresPaintable = NullPaintable.getInstance()
        randomLevel = self.getNextRandom()
    end
    

    # throws Exception
    def start()
    end
    

    def preDemoProcess()
        @overlayPaintable.update()
    end
    

    # throws Exception
    def process()
        self.getMenuInputProcessor().processInputList()
        self.preDemoProcess()
        if @state == 0
            indexedAnimationBehavior = self.getSpecialAnimationInterface().getAnimationBehavior()
            if indexedAnimationBehavior.loopIndex < 1
                @timeDelayHelper.setStartTimeTNT()
            end
            demoGameMidlet = self.getCustomCommandListener()
        end
    end
    

    # throws Exception
    def startDemoGame()
    end
    

    # throws Exception
    def processGame()
        @gameRunnable.run()
        @specialAnimationInterface.nextFrame()
        self.process()
    end
    

    def run()
        @logUtil.putF(@commonStrings.START_RUNNABLE, self, @commonStrings.RUN)
        begin
            progressCanvas = ProgressCanvasFactory.getInstance()
            progressCanvas.addNormalPortion(50, "Demo Thread")
            self.setCurrentThread()
            self.setRunning(true)
            if @features.isFeature(MainFeatureFactory.getInstance().LOAD_ONDEMAND)
                progressCanvas.end_()
            else
                progressCanvas.addNormalPortion(50, "Demo Thread Running")
            end
            @fullScreenUtil.initOnRun(self, self.getCustomCommandListener())
            self.initMenu()
            self.initPostPaint()
            self.updateDemoState()
            if @features.isDefault(@openGLFeatureFactory.OPENGL_AS_GAME_THREAD)
                OpenGLThreadUtil.getInstance().onResume()
            end
            if @features.isDefault(@openGLFeatureFactory.OPENGL_AS_GAME_THREAD) || J2MEUtil.isHTML()
            else
                while self.isRunning()
                    @loopTimeHelper.setStartTimeTNT()
                    self.processGame()
                    self.processLoopSleep()
                end
                self.end_()
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.RUN, e)
        end
        @logUtil.putF(@commonStrings.END_RUNNABLE, self, @commonStrings.RUN)
    end
    

    def setRunning(running)
        super(running)
        begin
            if (@features.isDefault(@openGLFeatureFactory.OPENGL) || J2MEUtil.isHTML()) && !running
                currentDisplayableFactory = CurrentDisplayableFactory.getInstance()
                currentDisplayableFactory.clearRunnable()
                self.end_()
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @SET_RUNNING, e)
        end
    end
    

    # throws Exception
    def end_()
        progressCanvas = ProgressCanvasFactory.getInstance()
        @baseGameStatistics.add(StringMaker.new().append(StartCanvas::BOT_GAME_STATS).append(@baseGameStatistics.to_s).append(CommonSeps.getInstance().NEW_LINE).to_s)
        @baseGameStatistics.init()
        if @features.isFeature(MainFeatureFactory.getInstance().LOAD_ONDEMAND)
            progressCanvas.start()
        end
        @logUtil.putF("Demo End", self, @commonStrings.RUN)
        self.close()
        DisplayChangeEventHandler.getInstance().removeListener(self)
    end
    

    def setGameState(gameState)
    end
    

    def getGameState()
        return @gameStateFactory.PLAYING_GAME_STATE
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
    

    def getTitle()
        return super()
    end
    

    def isPaused()
        return super()
    end
    

    def getType()
        return super()
    end

    def self.id()
        StartCanvas.java_static_fields unless @java_static_fields_started
        return defined?(@@id) ? @@id : nil
    end

    def self.id=(value)
        StartCanvas.java_static_fields unless @java_static_fields_started
        @@id = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        @@id = 0
        const_set(:BOT_GAME_STATS, "Bot Game Statistics: ")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "StartCanvas"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:BOT_GAME_STATS].include?(name)
        end
        super
    end
end

autoload :Command, "javax/microedition/lcdui/Command"
autoload :CommandListener, "javax/microedition/lcdui/CommandListener"
autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :Item, "javax/microedition/lcdui/Item"
autoload :J2MEUtil, "org/allbinary/J2MEUtil"
autoload :Animation, "org/allbinary/animation/Animation"
autoload :IndexedAnimationBehavior, "org/allbinary/animation/IndexedAnimationBehavior"
autoload :SpecialAnimation, "org/allbinary/animation/special/SpecialAnimation"
autoload :GameAdStateFactory, "org/allbinary/business/advertisement/GameAdStateFactory"
autoload :BaseGameStatistics, "org/allbinary/canvas/BaseGameStatistics"
autoload :CustomGameMenuUtil, "org/allbinary/canvas/CustomGameMenuUtil"
autoload :FullScreenUtil, "org/allbinary/canvas/FullScreenUtil"
autoload :GameStatisticsFactory, "org/allbinary/canvas/GameStatisticsFactory"
autoload :GameAdState, "org/allbinary/game/GameAdState"
autoload :GameCommandsFactory, "org/allbinary/game/commands/GameCommandsFactory"
autoload :ChangedGameFeatureListener, "org/allbinary/game/configuration/event/ChangedGameFeatureListener"
autoload :Features, "org/allbinary/game/configuration/feature/Features"
autoload :GameFeatureFactory, "org/allbinary/game/configuration/feature/GameFeatureFactory"
autoload :InputFeatureFactory, "org/allbinary/game/configuration/feature/InputFeatureFactory"
autoload :MainFeatureFactory, "org/allbinary/game/configuration/feature/MainFeatureFactory"
autoload :BasicBuildGameInitializerFactory, "org/allbinary/game/init/BasicBuildGameInitializerFactory"
autoload :GameInitializationUtil, "org/allbinary/game/init/GameInitializationUtil"
autoload :GameInputStrings, "org/allbinary/game/input/GameInputStrings"
autoload :GameKey, "org/allbinary/game/input/GameKey"
autoload :GameKeyFactory, "org/allbinary/game/input/GameKeyFactory"
autoload :PlatformInputMappingFactory, "org/allbinary/game/input/PlatformInputMappingFactory"
autoload :DownGameKeyEventHandler, "org/allbinary/game/input/event/DownGameKeyEventHandler"
autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent"
autoload :GameKeyEventFactory, "org/allbinary/game/input/event/GameKeyEventFactory"
autoload :GameKeyEventHandler, "org/allbinary/game/input/event/GameKeyEventHandler"
autoload :UpGameKeyEventHandler, "org/allbinary/game/input/event/UpGameKeyEventHandler"
autoload :InputToGameKeyMapping, "org/allbinary/game/input/mapping/InputToGameKeyMapping"
autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager"
autoload :SWTUtil, "org/allbinary/game/layer/SWTUtil"
autoload :DemoGameMidlet, "org/allbinary/game/midlet/DemoGameMidlet"
autoload :HighScoreCommands, "org/allbinary/game/score/HighScoreCommands"
autoload :HighScores, "org/allbinary/game/score/HighScores"
autoload :HighScoresFactoryInterface, "org/allbinary/game/score/HighScoresFactoryInterface"
autoload :HighScoresHelper, "org/allbinary/game/score/HighScoresHelper"
autoload :HighScoresPaintable, "org/allbinary/game/score/HighScoresPaintable"
autoload :NullHighScoresSingletonFactory, "org/allbinary/game/score/NullHighScoresSingletonFactory"
autoload :GameState, "org/allbinary/game/state/GameState"
autoload :GameStateFactory, "org/allbinary/game/state/GameStateFactory"
autoload :Rectangle, "org/allbinary/graphics/Rectangle"
autoload :ResizableListenerHandler, "org/allbinary/graphics/ResizableListenerHandler"
autoload :ProgressCanvas, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas"
autoload :ProgressCanvasFactory, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory"
autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory"
autoload :MyCommandsFactory, "org/allbinary/graphics/displayable/command/MyCommandsFactory"
autoload :DisplayChangeEvent, "org/allbinary/graphics/displayable/event/DisplayChangeEvent"
autoload :DisplayChangeEventHandler, "org/allbinary/graphics/displayable/event/DisplayChangeEventHandler"
autoload :FormType, "org/allbinary/graphics/form/FormType"
autoload :FormTypeFactory, "org/allbinary/graphics/form/FormTypeFactory"
autoload :ScrollSelectionForm, "org/allbinary/graphics/form/ScrollSelectionForm"
autoload :CurrentDisplayableFactory, "org/allbinary/graphics/opengles/CurrentDisplayableFactory"
autoload :OpenGLFeatureFactory, "org/allbinary/graphics/opengles/OpenGLFeatureFactory"
autoload :OpenGLFeatureUtil, "org/allbinary/graphics/opengles/OpenGLFeatureUtil"
autoload :OpenGLThreadUtil, "org/allbinary/graphics/opengles/OpenGLThreadUtil"
autoload :InitUpdatePaintable, "org/allbinary/graphics/paint/InitUpdatePaintable"
autoload :NullPaintable, "org/allbinary/graphics/paint/NullPaintable"
autoload :Paintable, "org/allbinary/graphics/paint/Paintable"
autoload :PaintableInterface, "org/allbinary/graphics/paint/PaintableInterface"
autoload :StatePaintable, "org/allbinary/graphics/paint/StatePaintable"
autoload :StatePaintableFactory, "org/allbinary/graphics/paint/StatePaintableFactory"
autoload :BasicMotionGesturesHandler, "org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler"
autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil"
autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil"
autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :OperatingSystemFactory, "org/allbinary/logic/system/os/OperatingSystemFactory"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :InApplicationPurchaseFactory, "org/allbinary/logic/system/security/licensing/InApplicationPurchaseFactory"
autoload :LockableFeature, "org/allbinary/logic/system/security/licensing/LockableFeature"
autoload :LockableFeatureFactory, "org/allbinary/logic/system/security/licensing/LockableFeatureFactory"
autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject"
autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings"
autoload :AllBinaryMediaManager, "org/allbinary/media/audio/AllBinaryMediaManager"
autoload :EarlySoundsFactory, "org/allbinary/media/audio/EarlySoundsFactory"
autoload :CommonSeps, "org/allbinary/string/CommonSeps"
autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :BasicMenuInputProcessor, "org/allbinary/game/displayable/canvas/BasicMenuInputProcessor"
autoload :FormUtil, "org/allbinary/game/displayable/canvas/FormUtil"
autoload :GameInputMappingCanvas, "org/allbinary/game/displayable/canvas/GameInputMappingCanvas"
autoload :GameRunnable, "org/allbinary/game/displayable/canvas/GameRunnable"
autoload :NoMenuInputProcessor, "org/allbinary/game/displayable/canvas/NoMenuInputProcessor"
autoload :NullWaitGameRunnable, "org/allbinary/game/displayable/canvas/NullWaitGameRunnable"

begin
    StartCanvas.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

