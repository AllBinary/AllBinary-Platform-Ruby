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
require "java/lang/JavaOverload"
require "org/allbinary/canvas/RunnableCanvas"
require "org/allbinary/graphics/displayable/event/DisplayChangeEventListener"
require "org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface"
require "org/allbinary/game/displayable/canvas/MenuListener"

module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class StartCanvas < ::Org::Allbinary::Canvas::RunnableCanvas
    include GameCanvasRunnableInterface
    include MenuListener
    include ::Org::Allbinary::Graphics::Displayable::Event::DisplayChangeEventListener
    attr_accessor :basicColorFactory, :features, :openGLFeatureFactory, :myCommandsFactory, :gameAdStateFactory, :gameStateFactory, :gameInputStrings, :formUtil, :basicGameDemoPaintable, :specialAnimationInterface, :paintedSpecialAnimationInterface, :fullScreenUtil, :highScoresHelper, :realHighScoresPaintable, :highScoresPaintable, :state, :timeDelayHelper, :highScoresFactoryInterface, :menuInputProcessor, :menuForm, :gameInitializationInterfaceFactoryInterface, :initialized, :defaultPaintableInterface, :paintableInterface, :overlayPaintable, :tempWait, :inputToGameKeyMapping, :gameRunnable, :progressPaintable, :isSingleKeyRepeatableProcessing, :NONE, :gameKeyEventFactory, :SET_STATE, :baseGameStatistics

    def jfields_org_allbinary_game_displayable_canvas_StartCanvas
        @basicColorFactory = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance()
        @features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
        @openGLFeatureFactory = ::Org::Allbinary::Graphics::Opengles::OpenGLFeatureFactory.getInstance()
        @myCommandsFactory = ::Org::Allbinary::Graphics::Displayable::Command::MyCommandsFactory.getInstance()
        @gameAdStateFactory = ::Org::Allbinary::Business::Advertisement::GameAdStateFactory.getInstance()
        @gameStateFactory = ::Org::Allbinary::Game::State::GameStateFactory.getInstance()
        @gameInputStrings = ::Org::Allbinary::Game::Input::GameInputStrings.getInstance()
        @formUtil = FormUtil.getInstance()
        @basicGameDemoPaintable = ::Org::Allbinary::Graphics::Paint::StatePaintableFactory.getInstance()
        @specialAnimationInterface = ::Org::Allbinary::Animation::Special::SpecialAnimation.getInstance()
        @paintedSpecialAnimationInterface = ::Org::Allbinary::Animation::Special::SpecialAnimation.getInstance()
        @fullScreenUtil = ::Org::Allbinary::Canvas::FullScreenUtil.getInstance()
        @highScoresHelper = ::Org::Allbinary::Game::Score::HighScoresHelper.new()
        @realHighScoresPaintable = ::Org::Allbinary::Game::Score::HighScoresPaintable.new()
        @highScoresPaintable = ::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance()
        @state = 0
        @timeDelayHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(6000)
        @highScoresFactoryInterface = nil unless instance_variable_defined?(:@highScoresFactoryInterface)
        @menuInputProcessor = NoMenuInputProcessor.getInstance()
        @menuForm = ::Org::Allbinary::Graphics::Form::ScrollSelectionForm.getNullScrollSelectionForm()
        @gameInitializationInterfaceFactoryInterface = nil unless instance_variable_defined?(:@gameInitializationInterfaceFactoryInterface)
        @initialized = false unless instance_variable_defined?(:@initialized)
        @defaultPaintableInterface = ::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance()
        @paintableInterface = ::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance()
        @overlayPaintable = nil unless instance_variable_defined?(:@overlayPaintable)
        @tempWait = NullWaitGameRunnable.getInstance().WAIT
        @inputToGameKeyMapping = ::Org::Allbinary::Game::Input::PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping()
        @gameRunnable = NullWaitGameRunnable.getInstance()
        @progressPaintable = ::Org::Allbinary::Graphics::Canvas::Transition::Progress::ProgressCanvasFactory.getLazyInstance()
        @isSingleKeyRepeatableProcessing = @features.isFeature(::Org::Allbinary::Game::Configuration::Feature::InputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS)
        @NONE = ::Org::Allbinary::Game::Input::GameKeyFactory.getInstance().NONE
        @gameKeyEventFactory = ::Org::Allbinary::Game::Input::Event::GameKeyEventFactory.getInstance()
        @SET_STATE = "setState"
        @baseGameStatistics = ::Org::Allbinary::Canvas::GameStatisticsFactory.getInstance()
    end
    

    def initialize(abeClientInformation, commandListener, highScoresFactoryInterface, paintable, overlayPaintable, gameInitializationInterfaceFactoryInterface, isContinue)
        super(commandListener, ::Org::Allbinary::Graphics::Opengles::CurrentDisplayableFactory.getInstance().DEFAULT_CHILD_NAME_LIST, true)
        jfields_org_allbinary_game_displayable_canvas_StartCanvas
        self.setWait(NullWaitGameRunnable.getInstance().WAIT)
        @gameInitializationInterfaceFactoryInterface = gameInitializationInterfaceFactoryInterface
        ::Org::Allbinary::Game::Init::GameInitializationUtil.getInstance().initDemo(abeClientInformation, self, gameInitializationInterfaceFactoryInterface)
        ::Org::Allbinary::Graphics::ResizableListenerHandler.getInstance().fireEvent(false)
        @overlayPaintable = overlayPaintable
        @highScoresFactoryInterface = highScoresFactoryInterface
        self.setDefaultPaintableInterface(paintable)
        self.setPaintableInterface(self.getDefaultPaintableInterface())
        if isContinue
            self.addCommand(::Org::Allbinary::Game::Commands::GameCommandsFactory.getInstance().CONTINUE_COMMAND)
        end
        if ::Org::Allbinary::Game::Configuration::Event::ChangedGameFeatureListener.getInstance().isChangedFeature(::Org::Allbinary::Game::Configuration::Feature::GameFeatureFactory.getInstance().SOUND)
            self.mediaInit()
        end
        ::Org::Allbinary::Graphics::Displayable::Event::DisplayChangeEventHandler.getInstance().addListenerInterface(self)
    end
    

    def onEvent(eventObject)
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    java_overload :onEvent, 1
    

    def onDisplayChangeEvent(displayChangeEvent)
        begin
            scrollSelectionForm = self.getMenuForm()
            if scrollSelectionForm != nil
                formType = ::Org::Allbinary::Graphics::Form::FormTypeFactory.getInstance().getFormType()
                rectangle = @formUtil.createFormRectangle()
                scrollSelectionForm.init(rectangle, formType)
            end
            @overlayPaintable.init()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @canvasStrings.ON_DISPLAY_CHANGE_EVENT, e)
        end
    end
    java_overload :onDisplayChangeEvent, 1
    

    def getCustomCommands()
        gameCommandsFactory = ::Org::Allbinary::Game::Commands::GameCommandsFactory.getInstance()
        if ::Org::Allbinary::J2MEUtil.isHTML()
            commandArray = [gameCommandsFactory.START_COMMAND, ::Org::Allbinary::Game::Score::HighScoreCommands.getInstance().DISPLAY, GameInputMappingCanvas::DISPLAY, gameCommandsFactory.DISPLAY_ABOUT]
            return commandArray
        else
            commandList = ::Org::Allbinary::Util::BasicArrayListD.new()
            commandList.add(gameCommandsFactory.START_COMMAND)
            inApplicationPurchaseFactory = ::Org::Allbinary::Logic::System::Security::Licensing::InApplicationPurchaseFactory.getInstance()
            if inApplicationPurchaseFactory.isEnabled()
                list = ::Org::Allbinary::Logic::System::Security::Licensing::LockableFeatureFactory.getInstance().getList()
                if list.size() > 0 && !inApplicationPurchaseFactory.isPurchased(list.get(0))
                    commandList.add(gameCommandsFactory.BUY_COMMAND)
                end
            end
            commandList.add(::Org::Allbinary::Game::Score::HighScoreCommands.getInstance().DISPLAY)
            begin
                isOverScan = ::Org::Allbinary::Logic::System::Os::OperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan()
                if ::Org::Allbinary::Game::Layer::SWTUtil.isSWT
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
    java_overload :getCustomCommands, 0
    

    def initCommands(cmdListener)
        self.removeAllCommands()
        commandArray = self.getCustomCommands()
        size = commandArray.length
        (0...size).each do |index|
            self.addCommand(commandArray[index])
        end
        ::Org::Allbinary::Canvas::CustomGameMenuUtil.add(self)
        self.setCommandListener(cmdListener)
    end
    java_overload :initCommands, 1
    

    # throws Exception
    def initPostPaint()
    end
    java_overload :initPostPaint, 0
    

    # throws Exception
    def mediaInit()
        ::Org::Allbinary::Media::Audio::AllBinaryMediaManager.init(::Org::Allbinary::Media::Audio::EarlySoundsFactory.getInstance())
    end
    java_overload :mediaInit, 0
    

    def itemStateChanged(item)
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(@commonStrings.NOT_IMPLEMENTED, self)
    end
    java_overload :itemStateChanged, 1
    

    # throws Exception
    def initMenu()
        self.close()
        self.open()
    end
    java_overload :initMenu, 0
    

    def open()
        ::Org::Allbinary::Input::Motion::Gesture::Observer::BasicMotionGesturesHandler.getInstance().addListenerInterface(self.getMenuInputProcessor())
        ::Org::Allbinary::Game::Input::Event::GameKeyEventHandler.getInstance().addListener(self.getMenuInputProcessor())
    end
    java_overload :open, 0
    

    def close()
        ::Org::Allbinary::Input::Motion::Gesture::Observer::BasicMotionGesturesHandler.getInstance().removeListener(self.getMenuInputProcessor())
        ::Org::Allbinary::Game::Input::Event::GameKeyEventHandler.getInstance().removeListener(self.getMenuInputProcessor())
    end
    java_overload :close, 0
    

    def getSourceId()
        return @@id
    end
    java_overload :getSourceId, 0
    

    def keyPressed(keyCode)
        self.keyPressedByDevice(keyCode, 0)
    end
    java_overload :keyPressed, 1
    

    def keyReleased(keyCode)
        self.keyReleasedByDevice(keyCode, 0)
    end
    java_overload :keyReleased, 1
    

    def keyRepeated(keyCode)
        self.keyRepeatedByDevice(keyCode, 0)
    end
    java_overload :keyRepeated, 1
    

    def keyPressedByDevice(keyCode, deviceId)
        self.addGameKeyEvent(keyCode, false)
    end
    java_overload :keyPressedByDevice, 2
    

    def keyReleasedByDevice(keyCode, deviceId)
        self.removeGameKeyEvent(keyCode, false)
    end
    java_overload :keyReleasedByDevice, 2
    

    def keyRepeatedByDevice(keyCode, deviceId)
        if @isSingleKeyRepeatableProcessing
            self.addGameKeyEvent(keyCode, true)
        end
    end
    java_overload :keyRepeatedByDevice, 2
    

    def addGameKeyEvent(keyCode, repeated)
        begin
            gameKey = @inputToGameKeyMapping.getInstanceForCanvas(self, keyCode)
            if gameKey != @NONE
                gameKeyEvent = @gameKeyEventFactory.getInstanceForInput(self, gameKey)
                ::Org::Allbinary::Game::Input::Event::DownGameKeyEventHandler.getInstance().fireEvent(gameKeyEvent)
            else
                @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@gameInputStrings.NO_KEY).appendint(keyCode).to_s, self, @gameInputStrings.ADD_KEY_EVENT)
            end
        rescue StandardError => e
            @logUtil.put("Key Event Error", self, @gameInputStrings.ADD_KEY_EVENT, e)
        end
    end
    java_overload :addGameKeyEvent, 2
    

    def removeGameKeyEvent(keyCode, repeated)
        begin
            gameKey = @inputToGameKeyMapping.getInstanceForCanvas(self, keyCode)
            if gameKey != @NONE
                gameKeyEvent = @gameKeyEventFactory.getInstanceForInput(self, gameKey)
                ::Org::Allbinary::Game::Input::Event::UpGameKeyEventHandler.getInstance().fireEvent(gameKeyEvent)
            else
                @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@gameInputStrings.NO_KEY).appendint(keyCode).to_s, self, @gameInputStrings.REMOVE_KEY_EVENT)
            end
        rescue StandardError => e
            @logUtil.put("Key Event Error", self, @gameInputStrings.REMOVE_KEY_EVENT, e)
        end
    end
    java_overload :removeGameKeyEvent, 2
    

    def pause()
        java_monitor.synchronize do
        self.close()
        self.setPaused(true)
        end
    end
    java_overload :pause, 0
    

    def unPause()
        java_monitor.synchronize do
        self.open()
        self.setPaused(false)
        end
    end
    java_overload :unPause, 0
    

    def isPausable()
        if ::Org::Allbinary::Graphics::Opengles::CurrentDisplayableFactory.getInstance().getUsedRunnable() == NullWaitGameRunnable.getInstance()
            return true
        else
            return false
        end
    end
    java_overload :isPausable, 0
    

    def isGameOver()
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@commonStrings.NOT_IMPLEMENTED).append(" since not a game").to_s, self, "isGameOver")
        return false
    end
    java_overload :isGameOver, 0
    

    # throws Exception
    def setLoadStateHashtable(hashtable)
        @logUtil.putF("Trying to continue a demo lol - only continue a game canvas not the demo", self, "setLoadStateHashtable")
    end
    java_overload :setLoadStateHashtable, 1
    

    # throws Exception
    def getLoadStateHashtable()
        @logUtil.putF("Trying to continue a demo lol - only continue a game canvas not the demo", self, "getLoadStateHashtable")
        return @stdUtil.NULL_TABLE
    end
    java_overload :getLoadStateHashtable, 0
    

    # throws Exception
    def getCurrentStateHashtable()
        @logUtil.putF("Trying to save the AI lol", self, "getCurrentStateHashtable")
        return @stdUtil.NULL_TABLE
    end
    java_overload :getCurrentStateHashtable, 0
    

    def setHighScoreSubmitted(isNotUsed)
    end
    java_overload :setHighScoreSubmitted, 1
    

    def paint(graphics)
        @paintableInterface.paint(graphics)
        @paintedSpecialAnimationInterface.paintXY(graphics, 0, 0)
        @highScoresPaintable.paint(graphics)
        self.getBasicGameDemoPaintable().paint(graphics)
        @overlayPaintable.paint(graphics)
        @progressPaintable.paint(graphics)
    end
    java_overload :paint, 1
    

    def paintThreed(graphics)
        @paintableInterface.paintThreed(graphics)
        @paintedSpecialAnimationInterface.paintThreedXYZ(graphics, 0, 0, 0)
    end
    java_overload :paintThreed, 1
    

    def processGameOver()
        java_monitor.synchronize do
        @logUtil.putF("Not Implemented since not a game", self, "setGameOver")
        end
    end
    java_overload :processGameOver, 0
    

    def demoStateChange()
        newState = @state + 1
        if newState > 2
            newState = 0
        elsif newState == 2
            if !@highScoresHelper.isAnyHighScores()
                newState = 0
            else
                highScores = @highScoresHelper.getNextHighScores()
                if highScores == ::Org::Allbinary::Game::Score::NullHighScoresSingletonFactory.getInstance()
                    newState = 0
                else
                    self.getRealHighScoresPaintable().setHighScores(highScores)
                end
            end
        end
        self.setState(newState)
        self.updateDemoState()
    end
    java_overload :demoStateChange, 0
    

    def updateDemoState()
        ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().createInstance(@state).to_s, self, @SET_STATE)
        self.getBasicGameDemoPaintable().setState(@state)
        if @state == 0
            @highScoresPaintable = ::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance()
            @paintedSpecialAnimationInterface = self.getSpecialAnimationInterface()
            self.getSpecialAnimationInterface().reset()
        elsif @state == 1
            @paintedSpecialAnimationInterface = ::Org::Allbinary::Animation::Special::SpecialAnimation.getInstance()
        elsif @state == 2
            @highScoresPaintable = self.getRealHighScoresPaintable()
        end
        gameAdState = @gameAdStateFactory.getCurrentInstance()
        gameAdState.processPageAdState()
    end
    java_overload :updateDemoState, 0
    

    # throws Exception
    def getNextRandom()
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    java_overload :getNextRandom, 0
    

    # throws Exception
    def createGameLayerManager(randomValue)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    java_overload :createGameLayerManager, 1
    

    # throws Exception
    def createRunnable(randomLevel)
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    java_overload :createRunnable, 1
    

    # throws Exception
    def createCanvas()
        @highScoresPaintable = ::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance()
        randomLevel = self.getNextRandom()
    end
    java_overload :createCanvas, 0
    

    # throws Exception
    def start()
    end
    java_overload :start, 0
    

    def preDemoProcess()
        @overlayPaintable.update()
    end
    java_overload :preDemoProcess, 0
    

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
    java_overload :process, 0
    

    # throws Exception
    def startDemoGame()
    end
    java_overload :startDemoGame, 0
    

    # throws Exception
    def processGame()
        @gameRunnable.run()
        @specialAnimationInterface.nextFrame()
        self.process()
    end
    java_overload :processGame, 0
    

    def run()
        @logUtil.putF(@commonStrings.START_RUNNABLE, self, @commonStrings.RUN)
        begin
            progressCanvas = ::Org::Allbinary::Graphics::Canvas::Transition::Progress::ProgressCanvasFactory.getInstance()
            progressCanvas.addNormalPortion(50, "Demo Thread")
            self.setCurrentThread()
            self.setRunning(true)
            if @features.isFeature(::Org::Allbinary::Game::Configuration::Feature::MainFeatureFactory.getInstance().LOAD_ONDEMAND)
                progressCanvas.end_()
            else
                progressCanvas.addNormalPortion(50, "Demo Thread Running")
            end
            @fullScreenUtil.initOnRun(self, self.getCustomCommandListener())
            self.initMenu()
            self.initPostPaint()
            self.updateDemoState()
            if @features.isDefault(@openGLFeatureFactory.OPENGL_AS_GAME_THREAD)
                ::Org::Allbinary::Graphics::Opengles::OpenGLThreadUtil.getInstance().onResume()
            end
            if @features.isDefault(@openGLFeatureFactory.OPENGL_AS_GAME_THREAD) || ::Org::Allbinary::J2MEUtil.isHTML()
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
    java_overload :run, 0
    

    def setRunning(running)
        StartCanvas.superclass.java_super_method(:setRunning, 1).bind(self).call(running)
        begin
            if (@features.isDefault(@openGLFeatureFactory.OPENGL) || ::Org::Allbinary::J2MEUtil.isHTML()) && !running
                currentDisplayableFactory = ::Org::Allbinary::Graphics::Opengles::CurrentDisplayableFactory.getInstance()
                currentDisplayableFactory.clearRunnable()
                self.end_()
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @SET_RUNNING, e)
        end
    end
    java_overload :setRunning, 1
    

    # throws Exception
    def end_()
        progressCanvas = ::Org::Allbinary::Graphics::Canvas::Transition::Progress::ProgressCanvasFactory.getInstance()
        @baseGameStatistics.add(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(BOT_GAME_STATS).append(@baseGameStatistics.to_s).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().NEW_LINE).to_s)
        @baseGameStatistics.init()
        if @features.isFeature(::Org::Allbinary::Game::Configuration::Feature::MainFeatureFactory.getInstance().LOAD_ONDEMAND)
            progressCanvas.start()
        end
        @logUtil.putF("Demo End", self, @commonStrings.RUN)
        self.close()
        ::Org::Allbinary::Graphics::Displayable::Event::DisplayChangeEventHandler.getInstance().removeListener(self)
    end
    java_overload :end_, 0
    

    def setGameState(gameState)
    end
    java_overload :setGameState, 1
    

    def getGameState()
        return @gameStateFactory.PLAYING_GAME_STATE
    end
    java_overload :getGameState, 0
    

    def getState()
        return @state
    end
    java_overload :getState, 0
    

    def setState(state)
        @state = state
    end
    java_overload :setState, 1
    

    def isHighScoreSubmitted()
        @logUtil.putF("Wow the AI got a high score!", self, "isHighScoreSubmitted")
        return false
    end
    java_overload :isHighScoreSubmitted, 0
    

    def getRealHighScoresPaintable()
        return @realHighScoresPaintable
    end
    java_overload :getRealHighScoresPaintable, 0
    

    def setSpecialAnimationInterface(specialAnimationInterface)
        specialAnimationInterface.setFrame(0)
        @specialAnimationInterface = specialAnimationInterface
    end
    java_overload :setSpecialAnimationInterface, 1
    

    def getSpecialAnimationInterface()
        return @specialAnimationInterface
    end
    java_overload :getSpecialAnimationInterface, 0
    

    def setPaintableInterface(paintableInterface)
        @paintableInterface = paintableInterface
    end
    java_overload :setPaintableInterface, 1
    

    def getPaintableInterface()
        return @paintableInterface
    end
    java_overload :getPaintableInterface, 0
    

    def setDefaultPaintableInterface(defaultPaintableInterface)
        @defaultPaintableInterface = defaultPaintableInterface
    end
    java_overload :setDefaultPaintableInterface, 1
    

    def getDefaultPaintableInterface()
        return @defaultPaintableInterface
    end
    java_overload :getDefaultPaintableInterface, 0
    

    def getHighScoresFactoryInterface()
        return @highScoresFactoryInterface
    end
    java_overload :getHighScoresFactoryInterface, 0
    

    def setMenuInputProcessor(menuInputProcessor)
        @menuInputProcessor = menuInputProcessor
    end
    java_overload :setMenuInputProcessor, 1
    

    def getMenuInputProcessor()
        return @menuInputProcessor
    end
    java_overload :getMenuInputProcessor, 0
    

    def getMenuForm()
        return @menuForm
    end
    java_overload :getMenuForm, 0
    

    def setMenuForm(menuForm)
        @menuForm = menuForm
    end
    java_overload :setMenuForm, 1
    

    def isInitialized()
        return @initialized
    end
    java_overload :isInitialized, 0
    

    def getOverlayPaintable()
        return @overlayPaintable
    end
    java_overload :getOverlayPaintable, 0
    

    def setBasicGameDemoPaintable(basicGameDemoPaintable)
        @basicGameDemoPaintable = basicGameDemoPaintable
    end
    java_overload :setBasicGameDemoPaintable, 1
    

    def getBasicGameDemoPaintable()
        return @basicGameDemoPaintable
    end
    java_overload :getBasicGameDemoPaintable, 0
    

    def setTempWait(tempWait)
        @tempWait = tempWait
    end
    java_overload :setTempWait, 1
    

    def getTempWait()
        return @tempWait
    end
    java_overload :getTempWait, 0
    

    def isSingleThread()
        return ::Org::Allbinary::Graphics::Opengles::OpenGLFeatureUtil.getInstance().isAnyThreed() || ::Org::Allbinary::Game::Layer::SWTUtil.isSWT
    end
    java_overload :isSingleThread, 0
    

    def isRunningInAnotherThread()
        features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
        openGLFeatureFactory = ::Org::Allbinary::Graphics::Opengles::OpenGLFeatureFactory.getInstance()
        if features.isDefault(openGLFeatureFactory.OPENGL_AS_GAME_THREAD)
            return true
        else
            return self.isRunning()
        end
    end
    java_overload :isRunningInAnotherThread, 0
    

    def getGameInitializationInterfaceFactoryInterface()
        return @gameInitializationInterfaceFactoryInterface
    end
    java_overload :getGameInitializationInterfaceFactoryInterface, 0
    

    def getTitle()
        return StartCanvas.superclass.java_super_method(:getTitle, 0).bind(self).call()
    end
    java_overload :getTitle, 0
    

    def isPaused()
        return StartCanvas.superclass.java_super_method(:isPaused, 0).bind(self).call()
    end
    java_overload :isPaused, 0
    

    def getType()
        return StartCanvas.superclass.java_super_method(:getType, 0).bind(self).call()
    end
    java_overload :getType, 0

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

module ::Javax; module Microedition; module Lcdui; autoload :Command, "javax/microedition/lcdui/Command" unless const_defined?(:Command, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :CommandListener, "javax/microedition/lcdui/CommandListener" unless const_defined?(:CommandListener, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Item, "javax/microedition/lcdui/Item" unless const_defined?(:Item, false); end; end; end
module ::Org; module Allbinary; autoload :J2MEUtil, "org/allbinary/J2MEUtil" unless const_defined?(:J2MEUtil, false); end; end
module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :IndexedAnimationBehavior, "org/allbinary/animation/IndexedAnimationBehavior" unless const_defined?(:IndexedAnimationBehavior, false); end; end; end
module ::Org; module Allbinary; module Animation; module Special; autoload :SpecialAnimation, "org/allbinary/animation/special/SpecialAnimation" unless const_defined?(:SpecialAnimation, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Advertisement; autoload :GameAdStateFactory, "org/allbinary/business/advertisement/GameAdStateFactory" unless const_defined?(:GameAdStateFactory, false); end; end; end; end
module ::Org; module Allbinary; module Canvas; autoload :BaseGameStatistics, "org/allbinary/canvas/BaseGameStatistics" unless const_defined?(:BaseGameStatistics, false); end; end; end
module ::Org; module Allbinary; module Canvas; autoload :CustomGameMenuUtil, "org/allbinary/canvas/CustomGameMenuUtil" unless const_defined?(:CustomGameMenuUtil, false); end; end; end
module ::Org; module Allbinary; module Canvas; autoload :FullScreenUtil, "org/allbinary/canvas/FullScreenUtil" unless const_defined?(:FullScreenUtil, false); end; end; end
module ::Org; module Allbinary; module Canvas; autoload :GameStatisticsFactory, "org/allbinary/canvas/GameStatisticsFactory" unless const_defined?(:GameStatisticsFactory, false); end; end; end
module ::Org; module Allbinary; module Game; autoload :GameAdState, "org/allbinary/game/GameAdState" unless const_defined?(:GameAdState, false); end; end; end
module ::Org; module Allbinary; module Game; module Commands; autoload :GameCommandsFactory, "org/allbinary/game/commands/GameCommandsFactory" unless const_defined?(:GameCommandsFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Event; autoload :ChangedGameFeatureListener, "org/allbinary/game/configuration/event/ChangedGameFeatureListener" unless const_defined?(:ChangedGameFeatureListener, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :GameFeatureFactory, "org/allbinary/game/configuration/feature/GameFeatureFactory" unless const_defined?(:GameFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :InputFeatureFactory, "org/allbinary/game/configuration/feature/InputFeatureFactory" unless const_defined?(:InputFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :MainFeatureFactory, "org/allbinary/game/configuration/feature/MainFeatureFactory" unless const_defined?(:MainFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Init; autoload :BasicBuildGameInitializerFactory, "org/allbinary/game/init/BasicBuildGameInitializerFactory" unless const_defined?(:BasicBuildGameInitializerFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Init; autoload :GameInitializationUtil, "org/allbinary/game/init/GameInitializationUtil" unless const_defined?(:GameInitializationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameInputStrings, "org/allbinary/game/input/GameInputStrings" unless const_defined?(:GameInputStrings, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameKey, "org/allbinary/game/input/GameKey" unless const_defined?(:GameKey, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameKeyFactory, "org/allbinary/game/input/GameKeyFactory" unless const_defined?(:GameKeyFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :PlatformInputMappingFactory, "org/allbinary/game/input/PlatformInputMappingFactory" unless const_defined?(:PlatformInputMappingFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :DownGameKeyEventHandler, "org/allbinary/game/input/event/DownGameKeyEventHandler" unless const_defined?(:DownGameKeyEventHandler, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEvent, "org/allbinary/game/input/event/GameKeyEvent" unless const_defined?(:GameKeyEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEventFactory, "org/allbinary/game/input/event/GameKeyEventFactory" unless const_defined?(:GameKeyEventFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEventHandler, "org/allbinary/game/input/event/GameKeyEventHandler" unless const_defined?(:GameKeyEventHandler, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :UpGameKeyEventHandler, "org/allbinary/game/input/event/UpGameKeyEventHandler" unless const_defined?(:UpGameKeyEventHandler, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Mapping; autoload :InputToGameKeyMapping, "org/allbinary/game/input/mapping/InputToGameKeyMapping" unless const_defined?(:InputToGameKeyMapping, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :SWTUtil, "org/allbinary/game/layer/SWTUtil" unless const_defined?(:SWTUtil, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Midlet; autoload :DemoGameMidlet, "org/allbinary/game/midlet/DemoGameMidlet" unless const_defined?(:DemoGameMidlet, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :HighScoreCommands, "org/allbinary/game/score/HighScoreCommands" unless const_defined?(:HighScoreCommands, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :HighScores, "org/allbinary/game/score/HighScores" unless const_defined?(:HighScores, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :HighScoresFactoryInterface, "org/allbinary/game/score/HighScoresFactoryInterface" unless const_defined?(:HighScoresFactoryInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :HighScoresHelper, "org/allbinary/game/score/HighScoresHelper" unless const_defined?(:HighScoresHelper, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :HighScoresPaintable, "org/allbinary/game/score/HighScoresPaintable" unless const_defined?(:HighScoresPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :NullHighScoresSingletonFactory, "org/allbinary/game/score/NullHighScoresSingletonFactory" unless const_defined?(:NullHighScoresSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module State; autoload :GameState, "org/allbinary/game/state/GameState" unless const_defined?(:GameState, false); end; end; end; end
module ::Org; module Allbinary; module Game; module State; autoload :GameStateFactory, "org/allbinary/game/state/GameStateFactory" unless const_defined?(:GameStateFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :ResizableListenerHandler, "org/allbinary/graphics/ResizableListenerHandler" unless const_defined?(:ResizableListenerHandler, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress; autoload :ProgressCanvas, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas" unless const_defined?(:ProgressCanvas, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress; autoload :ProgressCanvasFactory, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" unless const_defined?(:ProgressCanvasFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; module Command; autoload :MyCommandsFactory, "org/allbinary/graphics/displayable/command/MyCommandsFactory" unless const_defined?(:MyCommandsFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; module Event; autoload :DisplayChangeEvent, "org/allbinary/graphics/displayable/event/DisplayChangeEvent" unless const_defined?(:DisplayChangeEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; module Event; autoload :DisplayChangeEventHandler, "org/allbinary/graphics/displayable/event/DisplayChangeEventHandler" unless const_defined?(:DisplayChangeEventHandler, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :FormType, "org/allbinary/graphics/form/FormType" unless const_defined?(:FormType, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :FormTypeFactory, "org/allbinary/graphics/form/FormTypeFactory" unless const_defined?(:FormTypeFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :ScrollSelectionForm, "org/allbinary/graphics/form/ScrollSelectionForm" unless const_defined?(:ScrollSelectionForm, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :CurrentDisplayableFactory, "org/allbinary/graphics/opengles/CurrentDisplayableFactory" unless const_defined?(:CurrentDisplayableFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLFeatureFactory, "org/allbinary/graphics/opengles/OpenGLFeatureFactory" unless const_defined?(:OpenGLFeatureFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLFeatureUtil, "org/allbinary/graphics/opengles/OpenGLFeatureUtil" unless const_defined?(:OpenGLFeatureUtil, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLThreadUtil, "org/allbinary/graphics/opengles/OpenGLThreadUtil" unless const_defined?(:OpenGLThreadUtil, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :InitUpdatePaintable, "org/allbinary/graphics/paint/InitUpdatePaintable" unless const_defined?(:InitUpdatePaintable, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :NullPaintable, "org/allbinary/graphics/paint/NullPaintable" unless const_defined?(:NullPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :Paintable, "org/allbinary/graphics/paint/Paintable" unless const_defined?(:Paintable, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :PaintableInterface, "org/allbinary/graphics/paint/PaintableInterface" unless const_defined?(:PaintableInterface, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :StatePaintable, "org/allbinary/graphics/paint/StatePaintable" unless const_defined?(:StatePaintable, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :StatePaintableFactory, "org/allbinary/graphics/paint/StatePaintableFactory" unless const_defined?(:StatePaintableFactory, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Observer; autoload :BasicMotionGesturesHandler, "org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler" unless const_defined?(:BasicMotionGesturesHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Os; autoload :OperatingSystemFactory, "org/allbinary/logic/system/os/OperatingSystemFactory" unless const_defined?(:OperatingSystemFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :InApplicationPurchaseFactory, "org/allbinary/logic/system/security/licensing/InApplicationPurchaseFactory" unless const_defined?(:InApplicationPurchaseFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LockableFeature, "org/allbinary/logic/system/security/licensing/LockableFeature" unless const_defined?(:LockableFeature, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LockableFeatureFactory, "org/allbinary/logic/system/security/licensing/LockableFeatureFactory" unless const_defined?(:LockableFeatureFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings" unless const_defined?(:EventStrings, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :AllBinaryMediaManager, "org/allbinary/media/audio/AllBinaryMediaManager" unless const_defined?(:AllBinaryMediaManager, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :EarlySoundsFactory, "org/allbinary/media/audio/EarlySoundsFactory" unless const_defined?(:EarlySoundsFactory, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :BasicMenuInputProcessor, "org/allbinary/game/displayable/canvas/BasicMenuInputProcessor" unless const_defined?(:BasicMenuInputProcessor, false)
autoload :FormUtil, "org/allbinary/game/displayable/canvas/FormUtil" unless const_defined?(:FormUtil, false)
autoload :GameInputMappingCanvas, "org/allbinary/game/displayable/canvas/GameInputMappingCanvas" unless const_defined?(:GameInputMappingCanvas, false)
autoload :GameRunnable, "org/allbinary/game/displayable/canvas/GameRunnable" unless const_defined?(:GameRunnable, false)
autoload :NoMenuInputProcessor, "org/allbinary/game/displayable/canvas/NoMenuInputProcessor" unless const_defined?(:NoMenuInputProcessor, false)
autoload :NullWaitGameRunnable, "org/allbinary/game/displayable/canvas/NullWaitGameRunnable" unless const_defined?(:NullWaitGameRunnable, false)

begin
    StartCanvas.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

