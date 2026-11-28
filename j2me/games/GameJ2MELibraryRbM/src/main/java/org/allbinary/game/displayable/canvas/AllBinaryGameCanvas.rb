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
require "java/lang/JavaClass"
require "org/allbinary/canvas/RunnableCanvas"
require "org/allbinary/game/IntermissionCompositeInterface"
require "org/allbinary/game/IntermissionEnableListenerInterface"
require "org/allbinary/graphics/displayable/event/DisplayChangeEventListener"
require "org/allbinary/graphics/font/UpdateMyFontInterface"
require "org/allbinary/game/displayable/canvas/AllBinaryGameCanvasInterface"
require "org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface"
require "org/allbinary/game/displayable/canvas/MenuListener"
require "org/allbinary/game/displayable/canvas/PopupMenuInterface"

module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class AllBinaryGameCanvas < ::Org::Allbinary::Canvas::RunnableCanvas
    include AllBinaryGameCanvasInterface
    include GameCanvasRunnableInterface
    include MenuListener
    include ::Org::Allbinary::Game::IntermissionCompositeInterface
    include ::Org::Allbinary::Game::IntermissionEnableListenerInterface
    include PopupMenuInterface
    include ::Org::Allbinary::Graphics::Displayable::Event::DisplayChangeEventListener
    include ::Org::Allbinary::Graphics::Font::UpdateMyFontInterface
    attr_accessor :basicColorFactory, :basicSetColorUtil, :touchFeatureFactory, :openGLFeatureFactory, :touchButtonFactory, :gameAdStateFactory, :gameStrings, :gameInputStrings, :gameStateFactory, :gameTickTimeDelayHelper, :gameTickDisplayInfoSingleton, :gameRunnable, :gamePauseRunnable, :formUtil, :myFormUtil, :updateMyFontProcessor, :myFontProcessor, :gameSpecificPaintable, :sensorGameUpdateProcessor, :endGameInfo, :startIntermissionInterface, :endLevelIntermissionInterface, :gameLayerManager, :gameState, :gameOver, :initialized, :gameStateTimeHelper, :highScoresHelper, :highScoreSubmitted, :realHighScoresPaintable, :highScoresPaintable, :localPlayerGameInputList, :isCheating, :hashtable, :isSingleKeyRepeatableProcessing, :gameInitializationInterfaceFactoryInterface, :touchButtonsPaintable, :touchPaintable, :cheatProcessor, :gameInputProcessor, :endGameProcessor, :realEndGameProcessor, :startIntermissionProcessor, :realStartIntermissionProcessor, :endGamePaintable, :endGameStatePaintable, :nonBotPaintable, :intermissionPaintable, :startIntermissionPaintable, :mainStateProcessor, :processGameProcessor, :highScoresFactoryInterface, :startLevel, :mainMenuInputProcessor, :popupMenuInputProcessor, :menuInputProcessor, :menuForm, :formPaintable, :openMenuPaintable, :menuPaintable, :currentTouchInputFactory, :colorFillPaintable, :baseGameStatistics, :primaryPlayerQueue, :secondaryPlayerQueue, :BUILD_GAME, :gameTypeFactory, :screenCapture, :basicMotionGesturesHandler, :gameKeyEventHandler, :gameBehavior, :menuBehavior, :progressPaintable, :fontHeightP, :gameCanvasStartListener, :rawGameInputProcessor, :rawInputProcessor, :inputProcessor, :YIELD_SLEEP

    def jfields_org_allbinary_game_displayable_canvas_AllBinaryGameCanvas
        @basicColorFactory = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance()
        @basicSetColorUtil = ::Org::Allbinary::Graphics::Color::BasicColorSetUtil.getInstance()
        @touchFeatureFactory = ::Org::Allbinary::Game::Configuration::Feature::TouchFeatureFactory.getInstance()
        @openGLFeatureFactory = ::Org::Allbinary::Graphics::Opengles::OpenGLFeatureFactory.getInstance()
        @touchButtonFactory = ::Org::Allbinary::Input::Motion::Button::TouchButtonFactory.getInstance()
        @gameAdStateFactory = ::Org::Allbinary::Business::Advertisement::GameAdStateFactory.getInstance()
        @gameStrings = ::Org::Allbinary::Game::GameStrings.getInstance()
        @gameInputStrings = ::Org::Allbinary::Game::Input::GameInputStrings.getInstance()
        @gameStateFactory = ::Org::Allbinary::Game::State::GameStateFactory.getInstance()
        @gameTickTimeDelayHelper = ::Org::Allbinary::TimePackage::GameTickTimeDelayHelperFactory.getInstance()
        @gameTickDisplayInfoSingleton = ::Org::Allbinary::Graphics::Displayable::GameTickDisplayInfoSingleton.getInstance()
        @gameRunnable = GameCanvasRunnable.new(self)
        @gamePauseRunnable = GameCanvasPauseRunnable.new(self)
        @formUtil = FormUtil.getInstance()
        @myFormUtil = MyFormUtil.getInstance()
        @updateMyFontProcessor = ::Org::Allbinary::Graphics::Font::UpdateMyFontProcessor.new(self)
        @myFontProcessor = @updateMyFontProcessor
        @gameSpecificPaintable = ::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance()
        @sensorGameUpdateProcessor = ::Org::Allbinary::Input::Gyro::SingleSensorGameUpdateProcessor.new()
        @endGameInfo = EndGameInfo.new()
        @startIntermissionInterface = ::Org::Allbinary::Game::Intermission.new()
        @endLevelIntermissionInterface = ::Org::Allbinary::Game::Intermission.new()
        @gameLayerManager = ::Org::Allbinary::Game::Layer::AllBinaryGameLayerManager.getNullInstance()
        @gameState = @gameStateFactory.NO_GAME_STATE
        @gameOver = false unless instance_variable_defined?(:@gameOver)
        @initialized = false unless instance_variable_defined?(:@initialized)
        @gameStateTimeHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(0)
        @highScoresHelper = nil unless instance_variable_defined?(:@highScoresHelper)
        @highScoreSubmitted = false unless instance_variable_defined?(:@highScoreSubmitted)
        @realHighScoresPaintable = ::Org::Allbinary::Game::Score::HighScoresPaintable.new()
        @highScoresPaintable = ::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance()
        @localPlayerGameInputList = ::Org::Allbinary::Util::BasicArrayListD.new()
        @isCheating = false unless instance_variable_defined?(:@isCheating)
        @hashtable = @stdUtil.NULL_TABLE
        @isSingleKeyRepeatableProcessing = false unless instance_variable_defined?(:@isSingleKeyRepeatableProcessing)
        @gameInitializationInterfaceFactoryInterface = ::Org::Allbinary::Game::Init::BasicBuildGameInitializerFactory::NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY
        @touchButtonsPaintable = ::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance()
        @touchPaintable = ::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance()
        @cheatProcessor = ::Org::Allbinary::Game::Input::NoPlayerGameInput.getInstance()
        @gameInputProcessor = ::Org::Allbinary::Canvas::Processor.getInstance()
        @endGameProcessor = ::Org::Allbinary::Canvas::Processor.getInstance()
        @realEndGameProcessor = ::Org::Allbinary::Canvas::Processor.getInstance()
        @startIntermissionProcessor = ::Org::Allbinary::Canvas::Processor.getInstance()
        @realStartIntermissionProcessor = ::Org::Allbinary::Canvas::Processor.getInstance()
        @endGamePaintable = ::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance()
        @endGameStatePaintable = ::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance()
        @nonBotPaintable = ::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance()
        @intermissionPaintable = ::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance()
        @startIntermissionPaintable = ::Org::Allbinary::Graphics::Paint::NullInitUpdatePaintable.getInstance()
        @mainStateProcessor = ::Org::Allbinary::Canvas::Processor.getInstance()
        @processGameProcessor = ::Org::Allbinary::Canvas::Processor.getInstance()
        @highScoresFactoryInterface = nil unless instance_variable_defined?(:@highScoresFactoryInterface)
        @startLevel = 0 unless instance_variable_defined?(:@startLevel)
        @mainMenuInputProcessor = NoMenuInputProcessor.getInstance()
        @popupMenuInputProcessor = NoMenuInputProcessor.getInstance()
        @menuInputProcessor = NoMenuInputProcessor.getInstance()
        @menuForm = ::Org::Allbinary::Graphics::Form::ScrollSelectionForm.getNullScrollSelectionForm()
        @formPaintable = ::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance()
        @openMenuPaintable = ::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance()
        @menuPaintable = ::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance()
        @currentTouchInputFactory = ::Org::Allbinary::Input::Motion::Button::NoButtonsTouchInputFactory.getInstance()
        @colorFillPaintable = ::Org::Allbinary::Game::Paint::ColorFillPaintableFactory.getInstance().getInstance(@basicColorFactory.BLACK, true)
        @baseGameStatistics = ::Org::Allbinary::Canvas::GameStatisticsFactory.getInstance()
        @primaryPlayerQueue = ::Org::Allbinary::Media::Audio::PrimaryPlayerQueueFactory.getInstance()
        @secondaryPlayerQueue = ::Org::Allbinary::Media::Audio::SecondaryPlayerQueueFactory.getInstance()
        @BUILD_GAME = "buildGame"
        @gameTypeFactory = ::Org::Allbinary::Game::GameTypeFactory.getInstance()
        @screenCapture = ::Org::Allbinary::Graphics::ScreenCaptureFactory.getInstance()
        @basicMotionGesturesHandler = ::Org::Allbinary::Input::Motion::Gesture::Observer::BasicMotionGesturesHandler.getInstance()
        @gameKeyEventHandler = ::Org::Allbinary::Game::Input::Event::GameKeyEventHandler.getInstance()
        @gameBehavior = nil unless instance_variable_defined?(:@gameBehavior)
        @menuBehavior = nil unless instance_variable_defined?(:@menuBehavior)
        @progressPaintable = ::Org::Allbinary::Graphics::Canvas::Transition::Progress::ProgressCanvasFactory.getLazyInstance()
        @fontHeightP = 0 unless instance_variable_defined?(:@fontHeightP)
        @gameCanvasStartListener = NullDemoPaintable::NULL_DEMO_PAINTABLE
        @rawGameInputProcessor = GameCanvasInputProcessor.new(self)
        @rawInputProcessor = FormInputProcessor.new(self)
        @inputProcessor = self.getRawGameInputProcessor()
        @YIELD_SLEEP = 100
    end
    

    def initialize(commandListener, gameLayerManager, highScoresFactoryInterface, gameInitializationInterfaceFactoryInterface, buffered)
        super(commandListener, ::Org::Allbinary::Graphics::Displayable::CanvasStrings.getInstance().EMPTY_CHILD_NAME_LIST, true)
        jfields_org_allbinary_game_displayable_canvas_AllBinaryGameCanvas
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
        ::Org::Allbinary::Graphics::Displayable::Event::DisplayChangeEventHandler.getInstance().addListenerInterface(self)
    end
    

    def updateMeasurement(graphics)
        begin
            font = graphics.getFont()
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@commonStrings.START).append(@canvasStrings.FD_WIDTH).appendint(((::Org::Allbinary::Graphics::Font::MyFontProcessor.defaultCharWidth(font)).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).append(@canvasStrings.FD_HEIGHT).appendint(((font.getHeight()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).to_s, self, @canvasStrings.UPDATE_MEASUREMENT)
            @fontHeightP = font.getHeight()
            @myFormUtil.updateMeasurement(graphics)
            popupMenuRectangle = @myFormUtil.getPopupMenuRectangle()
            basicPopupMenuPaintable = (self.getOpenMenuPaintable())
            basicPopupMenuPaintable.init(popupMenuRectangle)
            if self.getPopupMenuInputProcessor() != NoMenuInputProcessor.getInstance()
                popupMenuInputProcessor = (self.getPopupMenuInputProcessor())
                popupMenuInputProcessor.init(popupMenuRectangle)
            end
            @myFontProcessor = ::Org::Allbinary::Graphics::Font::MyFontProcessor.getInstance()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @canvasStrings.ON_DISPLAY_CHANGE_EVENT, e)
        end
    end
    java_overload :updateMeasurement, 1
    

    def getInGameMenuBehavior()
        return InGameMenuBehavior.getInstance()
    end
    java_overload :getInGameMenuBehavior, 0
    

    def setCurrentThread()
        if ::Org::Allbinary::J2MEUtil.isHTML()
            AllBinaryGameCanvas.superclass.java_super_method(:setCurrentThreadFake, 0).bind(self).call()
        else
            AllBinaryGameCanvas.superclass.java_super_method(:setCurrentThread, 0).bind(self).call()
        end
    end
    java_overload :setCurrentThread, 0
    

    def onEvent(eventObject)
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    java_overload :onEvent, 1
    

    def onDisplayChangeEvent(displayChangeEvent)
        begin
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@commonStrings.START).append(::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance().to_s).to_s, self, @canvasStrings.UPDATE_MEASUREMENT)
            @myFontProcessor = @updateMyFontProcessor
            @menuBehavior.onDisplayChangeEvent(self, displayChangeEvent)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @canvasStrings.ON_DISPLAY_CHANGE_EVENT, e)
        end
    end
    java_overload :onDisplayChangeEvent, 1
    

    # throws Exception
    def updateMenuFromEvent(displayChangeEvent)
        formType = ::Org::Allbinary::Graphics::Form::FormTypeFactory.getInstance().getFormType()
        rectangle = @formUtil.createFormRectangle()
        @menuForm.init(rectangle, formType)
        if @currentTouchInputFactory != ::Org::Allbinary::Input::Motion::Button::NoButtonsTouchInputFactory.getInstance()
            @touchButtonFactory.toggle(self.isPaused(), @currentTouchInputFactory.getList())
        end
        @myFontProcessor = @updateMyFontProcessor
    end
    java_overload :updateMenuFromEvent, 1
    

    # throws Exception
    def processSleep()
        AllBinaryGameCanvas.superclass.java_super_method(:processSleep, 0).bind(self).call()
        if ::Org::Allbinary::Media::Audio::AllBinaryMediaManager.update()
            if !@primaryPlayerQueue.process()
                @secondaryPlayerQueue.process()
            end
        end
        if @menuInputProcessor.processInputList() != -1
            @runnableCanvasRefreshHelper.process()
        end
    end
    java_overload :processSleep, 0
    

    # throws Exception
    def initPopupMenu()
        if @popupMenuInputProcessor == NoMenuInputProcessor.getInstance()
            features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
            popupMenuRectangle = @myFormUtil.getPopupMenuRectangle()
            if features.isFeature(@touchFeatureFactory.TOUCH_ENABLED)
                self.setOpenMenuPaintable(BasicPopupMenuPaintable.new(popupMenuRectangle, @gameLayerManager.getBackgroundBasicColor(), @gameLayerManager.getForegroundBasicColor()))
                self.setPopupMenuInputProcessor(PopupMenuInputProcessor.new(::Org::Allbinary::Util::BasicArrayListD.new(), -1, self, popupMenuRectangle))
            end
        else
        end
    end
    java_overload :initPopupMenu, 0
    

    def initMenu()
        begin
            @menuBehavior.initMenu(self)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "initMenu", e)
        end
    end
    java_overload :initMenu, 0
    

    # throws Exception
    def initMenu2()
        self.closeMenu()
        formType = ::Org::Allbinary::Graphics::Form::FormTypeFactory.getInstance().getFormType()
        gameLimitedCommandTextItemArrayFactory = GameLimitedCommandTextItemArrayFactory.getInstance()
        commandTextItemArrayFactory = gameLimitedCommandTextItemArrayFactory.getCommandTextItemArrayFactory()
        items = commandTextItemArrayFactory.getInstance(self.getCommandStack(), @gameLayerManager.getBackgroundBasicColor(), @gameLayerManager.getForegroundBasicColor())
        rectangle = @formUtil.createFormRectangle()
        self.setMenuForm(::Org::Allbinary::Graphics::Form::CommandCurrentSelectionFormFactory.getInstance(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, items, rectangle, formType, 25, false, @gameLayerManager.getBackgroundBasicColor(), @gameLayerManager.getForegroundBasicColor()))
        scrollSelectionForm = self.getMenuForm()
        features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
        if features.isFeature(@touchFeatureFactory.TOUCH_ENABLED)
            @mainMenuInputProcessor = PopupCommandFormInputProcessor.new(::Org::Allbinary::Util::BasicArrayListD.new(), -1, self, scrollSelectionForm, self.getPopupMenuInputProcessor())
        else
        end
        self.setMenuInputProcessor(self.getPopupMenuInputProcessor())
        if scrollSelectionForm != ::Org::Allbinary::Graphics::Form::ScrollSelectionFormNoneFactory.getInstance()
            self.setFormPaintable(::Org::Allbinary::Graphics::Form::FormPaintable.new(scrollSelectionForm))
        else
        end
        self.closeMenu()
    end
    java_overload :initMenu2, 0
    

    def updateMenu()
        begin
            @menuBehavior.updateMenu(self)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "initMenu", e)
        end
    end
    java_overload :updateMenu, 0
    

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
        formType = ::Org::Allbinary::Graphics::Form::FormTypeFactory.getInstance().getFormType()
        rectangle = @formUtil.createFormRectangle()
        scrollSelectionForm.init(rectangle, formType)
    end
    java_overload :updateMenu2, 0
    

    def pause()
        java_monitor.synchronize do
        @gameBehavior.pause(self)
        self.closeMenu()
        AllBinaryGameCanvas.superclass.java_super_method(:pause, 0).bind(self).call()
        @touchButtonFactory.toggle(self.isPaused(), ::Org::Allbinary::Util::BasicArrayListUtil.getInstance().getImmutableInstance())
        @tsUtil.gc()
        end
    end
    java_overload :pause, 0
    

    def unPause()
        java_monitor.synchronize do
        @logUtil.putF(@commonStrings.START, self, @gameStrings.UNPAUSE)
        self.closeMenu()
        @tsUtil.gc()
        AllBinaryGameCanvas.superclass.java_super_method(:unPause, 0).bind(self).call()
        @touchButtonFactory.toggle(self.isPaused(), ::Org::Allbinary::Util::BasicArrayListUtil.getInstance().getImmutableInstance())
        @gameBehavior.unPause(self)
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
    

    # throws Exception
    def popupMenu()
        @menuBehavior.popupMenu(self)
    end
    java_overload :popupMenu, 0
    

    # throws Exception
    def popupMenu2()
        @primaryPlayerQueue.add(::Org::Allbinary::Media::Audio::SelectSound.getInstance())
        self.setMenuPaintable(self.getFormPaintable())
        self.setMenuInputProcessor(@mainMenuInputProcessor)
        @basicMotionGesturesHandler.addListenerInterface(@mainMenuInputProcessor)
        @gameKeyEventHandler.addListener(@mainMenuInputProcessor)
    end
    java_overload :popupMenu2, 0
    

    # throws Exception
    def toggleMenu()
        @logUtil.putF(@commonStrings.START, self, @gameStrings.TOGGLE_MENU)
        if self.getMenuPaintable() == self.getOpenMenuPaintable()
            self.pause()
            self.updateMenu()
            self.popupMenu()
        elsif self.getMenuPaintable() == self.getFormPaintable()
            @primaryPlayerQueue.add(::Org::Allbinary::Media::Audio::SelectSound.getInstance())
            self.unPause()
        end
    end
    java_overload :toggleMenu, 0
    

    def closeMenu()
        @menuBehavior.closeMenu(self)
    end
    java_overload :closeMenu, 0
    

    def closeMenu2()
        self.setMenuPaintable(self.getOpenMenuPaintable())
        @basicMotionGesturesHandler.removeListener(@mainMenuInputProcessor)
        @gameKeyEventHandler.removeListener(@mainMenuInputProcessor)
        self.setMenuInputProcessor(self.getPopupMenuInputProcessor())
    end
    java_overload :closeMenu2, 0
    

    def open()
        @basicMotionGesturesHandler.addListenerInterface(@menuInputProcessor)
        @gameKeyEventHandler.addListener(@menuInputProcessor)
    end
    java_overload :open, 0
    

    def close()
        @basicMotionGesturesHandler.removeListener(@menuInputProcessor)
        @gameKeyEventHandler.removeListener(@menuInputProcessor)
        @primaryPlayerQueue.clear()
        @secondaryPlayerQueue.clear()
    end
    java_overload :close, 0
    

    # throws Exception
    def processorInit()
        self.setMainStateProcessor(::Org::Allbinary::Canvas::Processor.getInstance())
        self.setProcessGameProcessorInit()
    end
    java_overload :processorInit, 0
    

    def setProcessGameProcessorInit()
        self.setProcessGameProcessor(GameProcessor.new(self))
    end
    java_overload :setProcessGameProcessorInit, 0
    

    def initSpecialPaint()
        @menuBehavior.initSpecialPaint(self)
    end
    java_overload :initSpecialPaint, 0
    

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
        self.setGameInputProcessor(::Org::Allbinary::Canvas::Processor.getInstance())
        features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
        if features.isFeature(::Org::Allbinary::Game::Configuration::Feature::GameFeatureFactory.getInstance().CHEATING)
            @isCheating = true
            @cheatProcessor = CheatGameInputProcessor.new(self)
            @gameKeyEventHandler.addListener(@cheatProcessor)
        else
            @isCheating = false
            @cheatProcessor = ::Org::Allbinary::Game::Input::NoPlayerGameInput.getInstance()
        end
        @realEndGameProcessor = EndGameProcessor.new(self)
        self.setEndGameProcessor(::Org::Allbinary::Canvas::Processor.getInstance())
        @realStartIntermissionProcessor = StartIntermissionProcessor.new(self)
        @startIntermissionProcessor = ::Org::Allbinary::Canvas::Processor.getInstance()
        self.setEndGameStatePaintable(EndGamePaintable.new(self))
        self.setEndGamePaintable(::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance())
        self.setIntermissionPaintable(::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance())
        self.getStartIntermissionInterface().setListener(self)
    end
    java_overload :init, 2
    

    def notifyIntermission(enable)
        if enable
            @startIntermissionProcessor = @realStartIntermissionProcessor
        else
            @startIntermissionProcessor = ::Org::Allbinary::Canvas::Processor.getInstance()
        end
        if enable
            self.setIntermissionPaintable(self.getStartIntermissionPaintable())
        else
            self.setIntermissionPaintable(::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance())
        end
    end
    java_overload :notifyIntermission, 1
    

    # throws Exception
    def mediaInit()
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(@commonStrings.NOT_IMPLEMENTED, self)
    end
    java_overload :mediaInit, 0
    

    # throws Exception
    def initConfigurable(abeClientInformation)
        java_monitor.synchronize do
        progressCanvas = ::Org::Allbinary::Graphics::Canvas::Transition::Progress::ProgressCanvasFactory.getInstance()
        progressCanvas.addNormalPortion(50, "Setting Configurables")
        ::Org::Allbinary::Game::Init::GameInitializationUtil.getInstance().initGame(abeClientInformation, self, @gameInitializationInterfaceFactoryInterface)
        gameFeatureFactory = ::Org::Allbinary::Game::Configuration::Feature::GameFeatureFactory.getInstance()
        changedGameFeatureListener = ::Org::Allbinary::Game::Configuration::Event::ChangedGameFeatureListener.getInstance()
        if changedGameFeatureListener.isChangedFeature(gameFeatureFactory.SOUND)
            features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Sound Changing To: ").appendboolean(features.isFeature(gameFeatureFactory.SOUND)).to_s, self, "initConfigurable")
            self.mediaInit()
            changedGameFeatureListener.remove(gameFeatureFactory.SOUND)
        end
        sensorFeatureFactory = ::Org::Allbinary::Game::Configuration::Feature::SensorFeatureFactory.getInstance()
        if changedGameFeatureListener.isChangedFeature(sensorFeatureFactory.ORIENTATION_SENSORS) || changedGameFeatureListener.isChangedFeature(sensorFeatureFactory.NO_ORIENTATION) || changedGameFeatureListener.isChangedFeature(sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS)
            changedGameFeatureListener.remove(sensorFeatureFactory.NO_ORIENTATION)
            changedGameFeatureListener.remove(sensorFeatureFactory.ORIENTATION_SENSORS)
            changedGameFeatureListener.remove(sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS)
        end
        resourceLoadingLevelFactory = ::Org::Allbinary::Game::Resource::ResourceLoadingLevelFactory.getInstance()
        self.loadResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_GAME)
        end
    end
    java_overload :initConfigurable, 1
    

    # throws Exception
    def initApp(abeClientInformation)
        self.initConfigurable(abeClientInformation)
        self.processorInit()
        @sensorGameUpdateProcessor.process(@gameLayerManager)
        @sensorGameUpdateProcessor.sendNotifications(@gameLayerManager)
        self.initTouch()
    end
    java_overload :initApp, 1
    

    # throws Exception
    def initTouch()
        gameInitializedEvent = ::Org::Allbinary::Game::Init::GameInitializationUtil.getInstance().EVENT
        resourceLoadingLevelFactory = ::Org::Allbinary::Game::Resource::ResourceLoadingLevelFactory.getInstance()
        gameInitializedEvent.setResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_TOUCH)
        ::Org::Allbinary::Game::Configuration::Event::GameInitializedEventHandler.getInstance().fireEvent(gameInitializedEvent)
        @touchButtonFactory.defaultList()
        self.updateTouch()
        self.postInitTouch()
    end
    java_overload :initTouch, 0
    

    # throws Exception
    def updateCurrentTouchInputFactory(nextTouchInput)
        if nextTouchInput != @currentTouchInputFactory
            @currentTouchInputFactory = nextTouchInput
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(@currentTouchInputFactory.to_s, self, @gameInputStrings.UDPATE_CURRENT_TOUCH_INPUT_FACTORY)
            @touchButtonFactory.toggle(self.isPaused(), @currentTouchInputFactory.getList())
        end
    end
    java_overload :updateCurrentTouchInputFactory, 1
    

    # throws Exception
    def updateTouch()
        @gameBehavior.updateTouch(self)
    end
    java_overload :updateTouch, 0
    

    # throws Exception
    def updateTouch2()
        features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
        if features.isFeature(@touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS)
            if @gameLayerManager.getGameInfo().getCurrentLevel() - self.getStartLevel() == 1
                self.setTouchPaintableP(::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance())
            end
        end
    end
    java_overload :updateTouch2, 0
    

    # throws Exception
    def postInitTouch()
        self.setTouchButtonsPaintable(::Org::Allbinary::Input::Motion::Button::TouchButtonsPaintableFactory.getInstance(@gameLayerManager.getForegroundBasicColor()))
        self.updateScreenButtonPaintable()
    end
    java_overload :postInitTouch, 0
    

    def initCommands(cmdListener)
        self.removeAllCommands()
        self.addCommands()
        self.setCommandListener(cmdListener)
    end
    java_overload :initCommands, 1
    

    def addCommands()
        gameCommandsFactory = ::Org::Allbinary::Game::Commands::GameCommandsFactory.getInstance()
        myCommandsFactory = ::Org::Allbinary::Graphics::Displayable::Command::MyCommandsFactory.getInstance()
        if ::Org::Allbinary::Debug::DebugFactory.getInstance() != ::Org::Allbinary::Debug::NoDebug.getInstance()
            self.addCommand(gameCommandsFactory.START_TRACE)
        end
        self.addCommand(gameCommandsFactory.RESTART_COMMAND)
        self.addCommand(myCommandsFactory.PAUSE_COMMAND)
        self.addCommand(gameCommandsFactory.QUIT_COMMAND)
        isOverScan = ::Org::Allbinary::Logic::System::Os::OperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan()
        if ::Org::Allbinary::J2MEUtil.isHTML()
        elsif ::Org::Allbinary::Game::Layer::SWTUtil.isSWT
        elsif !isOverScan
            if ::Org::Allbinary::Input::Motion::Button::TouchScreenFactory.getInstance().isTouch() && ::Org::Allbinary::Game::Configuration::InGameFeatures.new().isAny()
                self.addCommand(::Org::Allbinary::Game::Configuration::InGameOptionsForm::DISPLAY)
            end
            self.addCommand(gameCommandsFactory.SAVE)
            self.addCommand(gameCommandsFactory.DISPLAY_LOAD_FORM)
        end
    end
    java_overload :addCommands, 0
    

    def itemStateChanged(item)
        begin
            itemLabel = item.getLabel()
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@commonLabels.ITEM_LABEL).append(itemLabel).to_s, self, "itemStateChanged")
            if item.is_a?(::Javax::Microedition::Lcdui::ChoiceGroup)
                gameFeatureUtil = ::Org::Allbinary::Game::Configuration::Feature::GameFeatureUtil.getInstance()
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
    java_overload :itemStateChanged, 1
    

    # throws Exception
    def updateScreenButtonPaintable()
        @gameBehavior.updateScreenButtonPaintable(self)
    end
    java_overload :updateScreenButtonPaintable, 0
    

    def updateScreenButtonPaintable2()
        features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
        if features.isFeature(@touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS)
            self.setTouchPaintableP(self.getTouchButtonsPaintable())
            self.setStartLevel(@gameLayerManager.getGameInfo().getCurrentLevel())
        elsif features.isFeature(@touchFeatureFactory.SHOW_SCREEN_BUTTONS)
            self.setTouchPaintableP(self.getTouchButtonsPaintable())
        elsif features.isFeature(@touchFeatureFactory.HIDE_SCREEN_BUTTONS)
            self.setTouchPaintableP(::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance())
        else
            self.setTouchPaintableP(::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance())
        end
    end
    java_overload :updateScreenButtonPaintable2, 0
    

    def getLayerManager()
        return @gameLayerManager
    end
    java_overload :getLayerManager, 0
    

    def setLayerManager(layerManager)
        @gameLayerManager = layerManager
    end
    java_overload :setLayerManager, 1
    

    def isGameOver()
        java_monitor.synchronize do
        return @gameOver
        end
    end
    java_overload :isGameOver, 0
    

    def setGameOver(gameOver)
        java_monitor.synchronize do
        @gameOver = gameOver
        end
    end
    java_overload :setGameOver, 1
    

    # throws Exception
    def processGameOver()
        ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(@commonStrings.START, self, @gameStrings.SET_GAME_OVER)
        self.setGameOver(true)
        self.removePauseCommand()
        self.setGameState(@gameStateFactory.SHOW_END_RESULT_GAME_STATE)
        self.setEndGamePaintable(self.getEndGameStatePaintable())
    end
    java_overload :processGameOver, 0
    

    def isHighScoreSubmitted()
        return @highScoreSubmitted
    end
    java_overload :isHighScoreSubmitted, 0
    

    # throws Exception
    def setHighScoreSubmitted(highScoreSubmitted)
        @highScoreSubmitted = highScoreSubmitted
        if highScoreSubmitted
            @highScoresHelper.setSelectedHighScores(::Org::Allbinary::Game::Score::NullHighScoresSingletonFactory.getInstance())
        end
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("isHighScoreSubmitted: ").appendboolean(highScoreSubmitted).to_s, self, "setHighScoreSubmitted")
    end
    java_overload :setHighScoreSubmitted, 1
    

    def getGameState()
        return @gameState
    end
    java_overload :getGameState, 0
    

    # throws Exception
    def setGameState(gameState)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@gameStrings.GAME_STATE).append(@stringUtil.toString(gameState)).to_s, self, @gameStrings.SET_GAME_STATE)
        @gameState = gameState
        @gameStateTimeHelper.setStartTimeTNT()
        self.updateEndGameProcessor()
        self.updateGameKeyEventProcessor()
        @gameBehavior.setGameState(self)
    end
    java_overload :setGameState, 1
    

    # throws Exception
    def updateGameState()
        gameAdState = @gameAdStateFactory.getCurrentInstance()
        gameAdState.processAdState(@gameState, @gameLayerManager.getGameInfo().getGameType())
        if @gameState != @gameStateFactory.PLAYING_GAME_STATE
            gameAdState.processPageAdState()
        end
    end
    java_overload :updateGameState, 0
    

    def updateGameKeyEventProcessor()
        if self.getGameState() != @gameStateFactory.PLAYING_GAME_STATE || @isCheating
        else
        end
    end
    java_overload :updateGameKeyEventProcessor, 0
    

    def removeAllGameKeyInputListenersOnBuild()
        self.removeAllGameKeyInputListeners()
    end
    java_overload :removeAllGameKeyInputListenersOnBuild, 0
    

    def removeAllGameKeyInputListeners()
        @gameBehavior.removeAllGameKeyInputListeners(self)
    end
    java_overload :removeAllGameKeyInputListeners, 0
    

    def removeAllGameKeyInputListeners2()
        @logUtil.putF("Remove PlayerInput Listeners", self, "removeAllGameKeyInputListeners")
        (@localPlayerGameInputList.size() - 1).step(0, -(1)) do |index|
            playerGameInput = @localPlayerGameInputList.get(index)
            self.removeKeyInputListener(playerGameInput)
            playerGameInput.removeNonAIInputGameKeyEvents()
        end
    end
    java_overload :removeAllGameKeyInputListeners2, 0
    

    def removeKeyInputListener(playerGameInput)
        @gameKeyEventHandler.removeListener(playerGameInput)
    end
    java_overload :removeKeyInputListener, 1
    

    # throws Exception
    def updateEndGameProcessor()
        @gameBehavior.updateEndGameProcessor(self)
    end
    java_overload :updateEndGameProcessor, 0
    

    # throws Exception
    def updateEndGameProcessor2()
        if self.getGameState() == @gameStateFactory.SHOW_END_RESULT_GAME_STATE || self.getGameState() == @gameStateFactory.SHOW_HIGH_SCORE_GAME_STATE
            self.setEndGameProcessor(@realEndGameProcessor)
        else
            self.setEndGameProcessor(::Org::Allbinary::Canvas::Processor.getInstance())
        end
    end
    java_overload :updateEndGameProcessor2, 0
    

    # throws Exception
    def buildGameInit(isPortion)
    end
    java_overload :buildGameInit, 1
    

    # throws Exception
    def cleanupGame()
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CLEANUP)
        progressCanvas = ::Org::Allbinary::Graphics::Canvas::Transition::Progress::ProgressCanvasFactory.getInstance()
        progressCanvas.addNormalPortion(10, "Cleaning Up")
        @primaryPlayerQueue.clear()
        @secondaryPlayerQueue.clear()
        ::Org::Allbinary::Game::Displayable::GameLevelDisplayChangeEventListenersFactory.getInstance().clear()
    end
    java_overload :cleanupGame, 0
    

    # throws Exception
    def loadResourceLoadingLevel(resourceLoadingLevel)
        gameInitializedEvent = ::Org::Allbinary::Game::Init::GameInitializationUtil.getInstance().EVENT
        gameInitializedEvent.setResourceLoadingLevel(resourceLoadingLevel)
        ::Org::Allbinary::Game::Configuration::Event::GameInitializedEventHandler.getInstance().fireEvent(gameInitializedEvent)
    end
    java_overload :loadResourceLoadingLevel, 1
    

    # throws Exception
    def loadResources(level)
        gameInitializedEvent = ::Org::Allbinary::Game::Init::GameInitializationUtil.getInstance().EVENT
        gameInitializedEvent.setLevel(level)
        ::Org::Allbinary::Game::Configuration::Event::GameInitializedEventHandler.getInstance().fireEvent(gameInitializedEvent)
    end
    java_overload :loadResources, 1
    

    # throws Exception
    def updateColor()
    end
    java_overload :updateColor, 0
    

    # throws Exception
    def buildGame(portion)
        @screenCapture.endRecording()
        @screenCapture.startRecording()
        progressCanvas = ::Org::Allbinary::Graphics::Canvas::Transition::Progress::ProgressCanvasFactory.getInstance()
        features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
        progressCanvas.addNormalPortion(portion, "Generic Build")
        self.removeAllGameKeyInputListenersOnBuild()
        self.updateTouch()
        progressCanvas.addNormalPortion(portion, "High Scores")
        @highScoresFactoryInterface.fetchHighScores(@gameLayerManager.getGameInfo(), @highScoresHelper)
        self.setHighScoresPaintable(::Org::Allbinary::Graphics::Paint::NullPaintable.getInstance())
        progressCanvas.addNormalPortion(portion, "Finishing.")
        self.getEndGameInfoP().update(self.getLayerManager().getGameInfo(), self)
        @isSingleKeyRepeatableProcessing = features.isFeature(::Org::Allbinary::Game::Configuration::Feature::InputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS)
        self.setGameOver(false)
        progressCanvas.addNormalPortion(portion, "Finishing..")
        self.updateColor()
        self.getStartIntermissionPaintable().update()
        if !self.isRunningInAnotherThread()
            return
        end
        progressCanvas.addNormalPortion(portion, "Finishing...")
        if self.isMainCanvas() || !self.isInitialized()
            if features.isFeature(::Org::Allbinary::Game::Configuration::Feature::MainFeatureFactory.getInstance().LOAD_ONDEMAND)
                if self.getCustomCommandListener() != nil
                    progressCanvas.end_()
                end
            else
                progressCanvas.end_()
            end
            self.setInitialized(true)
        end
        if self.getCustomCommandListener() == ::Javax::Microedition::Lcdui::NullCommandListener::NULL_COMMAND_LISTENER
            @logUtil.putF("Show Game Paintable in DemoCanvas Thread", self, @BUILD_GAME)
            @gameCanvasStartListener.showGamePaintable()
        else
            @logUtil.putF("No GameCanvasStartListener", self, @BUILD_GAME)
        end
        @colorFillPaintable.setBasicColorP(@gameLayerManager.getBackgroundBasicColor())
        @gameBehavior.buildGame(self)
    end
    java_overload :buildGame, 1
    

    def buildGame2()
        ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@gameInputStrings.ENABLE_PLAYER_GAME_INPUTS).appendint(@localPlayerGameInputList.size()).to_s, self, @BUILD_GAME)
        playerGameInput = nil
        (@localPlayerGameInputList.size() - 1).step(0, -(1)) do |index|
            playerGameInput = @localPlayerGameInputList.get(index)
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@gameInputStrings.ENABLE_PLAYER_GAME_INPUT).append(playerGameInput.to_s).to_s, self, @BUILD_GAME)
            playerGameInput.removeNonAIInputGameKeyEvents()
            self.addKeyInputListener(playerGameInput)
        end
    end
    java_overload :buildGame2, 0
    

    def addKeyInputListener(playerGameInput)
        ::Org::Allbinary::Game::Input::Event::GameKeyEventHandler.getInstance().addListenerForPlayer(playerGameInput, playerGameInput.getPlayerInputId())
    end
    java_overload :addKeyInputListener, 1
    

    def setGameCanvasStartListener(gameCanvasStartListener)
        @gameCanvasStartListener = gameCanvasStartListener
    end
    java_overload :setGameCanvasStartListener, 1
    

    # throws Exception
    def loadState()
        @logUtil.putF(@commonStrings.START, self, @commonStrings.LOAD)
        hashtable = self.getLoadStateHashtable()
        if hashtable != nil && hashtable.size() > 0
            levelAsString = hashtable.get(::Org::Allbinary::Game::GameInfo::LEVEL_NAME)
            level = (levelAsString).to_s.to_i
            gameInfo = @gameLayerManager.getGameInfo()
            gameInfo.setCurrentLevel(level)
        end
    end
    java_overload :loadState, 0
    

    # throws Exception
    def getLoadStateHashtable()
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@commonLabels.START_LABEL).append(@stringUtil.toString(@hashtable)).to_s, self, "getLoadStateHashtable")
        return @hashtable
    end
    java_overload :getLoadStateHashtable, 0
    

    def setLoadStateHashtable(hashtable)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@commonLabels.START_LABEL).append(@stringUtil.toString(hashtable)).to_s, self, "setLoadStateHashtable")
        @hashtable = hashtable
    end
    java_overload :setLoadStateHashtable, 1
    

    def getCurrentStateHashtable()
        hashtable = @stdUtil.createHashtable()
        level = @gameLayerManager.getGameInfo().getCurrentLevel()
        hashtable.put(::Org::Allbinary::Game::GameInfo::LEVEL_NAME.to_s, (level).to_s)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("End: ").append(@stringUtil.toString(hashtable)).to_s, self, "getCurrentStateHashtable")
        return hashtable
    end
    java_overload :getCurrentStateHashtable, 0
    

    def paintGameOver(graphics)
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(@commonStrings.NOT_IMPLEMENTED, self)
    end
    java_overload :paintGameOver, 1
    

    def draw(graphics)
        @colorFillPaintable.paint(graphics)
        @basicSetColorUtil.setBasicColorP(graphics, @gameLayerManager.getForegroundBasicColor())
        @gameSpecificPaintable.paint(graphics)
    end
    java_overload :draw, 1
    

    def clear(graphics)
        @colorFillPaintable.paint(graphics)
    end
    java_overload :clear, 1
    

    def paint(graphics)
        @myFontProcessor.process(graphics)
        @baseGameStatistics.nextRefresh()
        self.draw(graphics)
        @menuPaintable.paint(graphics)
        @progressPaintable.paint(graphics)
    end
    java_overload :paint, 1
    

    def paintThreed(graphics)
    end
    java_overload :paintThreed, 1
    

    # throws Exception
    def processEndLevelIntermissionGameState()
    end
    java_overload :processEndLevelIntermissionGameState, 0
    

    def nonBotPaint(graphics)
        @endGamePaintable.paint(graphics)
        @intermissionPaintable.paint(graphics)
        self.paintIntermission(graphics)
        @touchPaintable.paint(graphics)
    end
    java_overload :nonBotPaint, 1
    

    def paintIntermission(graphics)
    end
    java_overload :paintIntermission, 1
    

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
        @inputProcessor.keyPressedByDevice(keyCode, deviceId)
    end
    java_overload :keyPressedByDevice, 2
    

    def keyRepeatedByDevice(keyCode, deviceId)
        if @isSingleKeyRepeatableProcessing
            @inputProcessor.keyPressedByDevice(keyCode, deviceId)
        end
    end
    java_overload :keyRepeatedByDevice, 2
    

    def keyReleasedByDevice(keyCode, deviceId)
        @inputProcessor.keyReleasedByDevice(self, keyCode, deviceId)
    end
    java_overload :keyReleasedByDevice, 2
    

    # throws Exception
    def handleRawKey(keyCode, deviceId, repeated)
    end
    java_overload :handleRawKey, 3
    

    def endProgress(isProgress)
        portion = 30
        if isProgress && self.isMainCanvas()
            myCommandsFactory = ::Org::Allbinary::Graphics::Displayable::Command::MyCommandsFactory.getInstance()
            progressCanvas = ::Org::Allbinary::Graphics::Canvas::Transition::Progress::ProgressCanvasFactory.getInstance()
            progressCanvas.start()
            self.getCustomCommandListener().commandAction(myCommandsFactory.SET_DISPLAYABLE, progressCanvas)
            portion = 4
        end
        return portion
    end
    java_overload :endProgress, 1
    

    # throws Exception
    def processPlayingGame()
        @cheatProcessor.update()
        @sensorGameUpdateProcessor.getInputSensor().update()
        @gameInputProcessor.process()
        @gameLayerManager.process()
        @startIntermissionProcessor.process()
    end
    java_overload :processPlayingGame, 0
    

    # throws Exception
    def threadInit()
    end
    java_overload :threadInit, 0
    

    # throws Exception
    def processGame()
        AllBinaryGameCanvas.superclass.java_super_method(:process, 0).bind(self).call()
        if ::Org::Allbinary::Media::Audio::AllBinaryMediaManager.update()
            if !@primaryPlayerQueue.process()
                @secondaryPlayerQueue.process()
            end
        end
        @mainStateProcessor.process()
        @menuInputProcessor.processInputList()
        @endGameProcessor.process()
        @baseGameStatistics.nextFrame()
    end
    java_overload :processGame, 0
    

    def notifyDonePainting()
        (self).java_monitor.synchronize do
            @threadObjectUtil.notifyObject(self)
        end
    end
    java_overload :notifyDonePainting, 0
    

    # throws Exception
    def shouldWait()
        features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
        if ::Org::Allbinary::AndroidUtil.isAndroid()
        elsif features.isFeature(@openGLFeatureFactory.OPENGL_2D)
        else
            if features.isDefault(@openGLFeatureFactory.OPENGL)
                openGLImageSpecificFactory = ::Org::Allbinary::Image::Opengles::OpenGLImageSpecificFactory.getInstance()
                while openGLImageSpecificFactory.updating
                    sleep((@YIELD_SLEEP) / 1000.0)
                end
            end
        end
    end
    java_overload :shouldWait, 0
    

    def run()
        begin
            @logUtil.putF(@commonStrings.START_RUNNABLE, self, @commonStrings.RUN)
            progressCanvas = ::Org::Allbinary::Graphics::Canvas::Transition::Progress::ProgressCanvasFactory.getInstance()
            progressCanvas.addNormalPortion(50, "Game Thread")
            self.setCurrentThread()
            self.setRunning(true)
            if self.getCustomCommandListener() == ::Javax::Microedition::Lcdui::NullCommandListener::NULL_COMMAND_LISTENER
                sleep((@YIELD_SLEEP) / 1000.0)
            end
            self.shouldWait()
            self.threadInit()
            if self.getCustomCommandListener() == ::Javax::Microedition::Lcdui::NullCommandListener::NULL_COMMAND_LISTENER
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
    java_overload :run, 0
    

    # throws Exception
    def run2()
        features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
        if features.isDefault(@openGLFeatureFactory.OPENGL_AS_GAME_THREAD) || ::Org::Allbinary::J2MEUtil.isHTML()
            if features.isDefault(@openGLFeatureFactory.OPENGL_AS_GAME_THREAD)
                @logUtil.putF(@openGLFeatureFactory.OPENGL_AS_GAME_THREAD.getName(), self, @commonStrings.RUN)
            end
            if ::Org::Allbinary::J2MEUtil.isHTML()
                @logUtil.putF(::Org::Allbinary::Graphics::GraphicsStrings.getInstance().HTML, self, @commonStrings.RUN)
            end
            currentDisplayableFactory = ::Org::Allbinary::Graphics::Opengles::CurrentDisplayableFactory.getInstance()
            currentDisplayableFactory.setRunnable(@gameRunnable)
            currentDisplayableFactory.setDisplayable(self)
            ::Org::Allbinary::Graphics::Opengles::OpenGLThreadUtil.getInstance().onResume()
        elsif features.isDefault(@openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS)
            @logUtil.putF(@openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS.getName(), self, @commonStrings.RUN)
            ::Org::Allbinary::Graphics::Opengles::OpenGLThreadUtil.getInstance().onResume()
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
    java_overload :run2, 0
    

    # throws Exception
    def run3()
        @loopTimeHelper.setStartTime(@gameTickTimeDelayHelper.setStartTime())
        @gameTickDisplayInfoSingleton.update()
        self.processGame()
        self.processLoopSleep()
    end
    java_overload :run3, 0
    

    def setRunning(running)
        AllBinaryGameCanvas.superclass.java_super_method(:setRunning, 1).bind(self).call(running)
        begin
            features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
            if running
            else
                if features.isDefault(@openGLFeatureFactory.OPENGL) || ::Org::Allbinary::Game::Layer::SWTUtil.isSWT
                    if @gameLayerManager.getGameInfo().getGameType() != @gameTypeFactory.BOT
                        currentDisplayableFactory = ::Org::Allbinary::Graphics::Opengles::CurrentDisplayableFactory.getInstance()
                        currentDisplayableFactory.clearRunnable()
                    end
                    self.end_()
                end
            end
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @SET_RUNNING, e)
        end
    end
    java_overload :setRunning, 1
    

    # throws Exception
    def end_()
        @screenCapture.endRecording()
        @baseGameStatistics.add(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@baseGameStatistics.to_s).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().NEW_LINE).to_s)
        @baseGameStatistics.init()
        @gameKeyEventHandler.removeListener(@cheatProcessor)
        self.close()
        self.removeAllGameKeyInputListeners()
        self.endGameThread()
    end
    java_overload :end_, 0
    

    # throws Exception
    def endGameThread()
        ::Org::Allbinary::Graphics::Displayable::Event::DisplayChangeEventHandler.getInstance().removeListener(self)
        ::Org::Allbinary::Game::Displayable::GameLevelDisplayChangeEventListenersFactory.getInstance().clear()
        gameAdState = @gameAdStateFactory.getCurrentInstance()
        gameAdState.notPlayingAdState()
    end
    java_overload :endGameThread, 0
    

    def createHighScore(score)
        gameInfo = @gameLayerManager.getGameInfo()
        return ::Org::Allbinary::Game::Score::HighScore.new(0, "NONE", ::Org::Allbinary::Game::GameInfo.new(gameInfo.getGameType(), gameInfo.getGameMode(), ::Org::Allbinary::Game::PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 0, 0), score)
    end
    java_overload :createHighScore, 1
    

    # throws Exception
    def setHighScore(abeClientInformation, name, score, autoSubmit, isLast)
        @gameBehavior.setHighScore(abeClientInformation, self, name, score, autoSubmit, isLast)
    end
    java_overload :setHighScore, 5
    

    # throws Exception
    def setHighScore2(abeClientInformation, name, score, autoSubmit, isLast)
        highScore = self.createHighScore(score)
        textBox = ::Org::Allbinary::Game::Score::Displayable::HighScoreTextBox.new(@highScoresFactoryInterface, @highScoresHelper, abeClientInformation, @gameLayerManager.getGameInfo(), self.getCustomCommandListener(), name, highScore, @gameLayerManager.getBackgroundBasicColor(), @gameLayerManager.getForegroundBasicColor())
        if isLast
            self.getCustomCommandListener().commandAction(::Org::Allbinary::Game::Commands::GameCommandsFactory.getInstance().SET_MENU_DISPLAYABLE, textBox)
        end
        if autoSubmit
            ::Org::Allbinary::ThreadPackage::SecondaryThreadPool.getInstance().runTask(SaveHighScoreRunnable.new(isLast, textBox))
        end
    end
    java_overload :setHighScore2, 5
    

    def getGameStateTimeHelper()
        return @gameStateTimeHelper
    end
    java_overload :getGameStateTimeHelper, 0
    

    def setInitialized(initialized)
        @initialized = initialized
    end
    java_overload :setInitialized, 1
    

    def isInitialized()
        return @initialized
    end
    java_overload :isInitialized, 0
    

    def getSourceId()
        return @@id
    end
    java_overload :getSourceId, 0
    

    def setProgressPaintable(paintable)
        @progressPaintable = paintable
    end
    java_overload :setProgressPaintable, 1
    

    def getStartIntermissionInterface()
        return @startIntermissionInterface
    end
    java_overload :getStartIntermissionInterface, 0
    

    def getEndLevelIntermissionInterface()
        return @endLevelIntermissionInterface
    end
    java_overload :getEndLevelIntermissionInterface, 0
    

    def setTouchPaintableP(paintable)
        @touchPaintable = paintable
    end
    java_overload :setTouchPaintableP, 1
    

    def getTouchPaintableP()
        return @touchPaintable
    end
    java_overload :getTouchPaintableP, 0
    

    def setEndGamePaintable(endGamePaintable)
        @endGamePaintable = endGamePaintable
    end
    java_overload :setEndGamePaintable, 1
    

    def getEndGamePaintable()
        return @endGamePaintable
    end
    java_overload :getEndGamePaintable, 0
    

    def setIntermissionPaintable(intermissionPaintable)
        @intermissionPaintable = intermissionPaintable
    end
    java_overload :setIntermissionPaintable, 1
    

    def getIntermissionPaintable()
        return @intermissionPaintable
    end
    java_overload :getIntermissionPaintable, 0
    

    def getEndGameInfoP()
        return @endGameInfo
    end
    java_overload :getEndGameInfoP, 0
    

    def setHighScoresPaintable(highScoresPaintable)
        @highScoresPaintable = highScoresPaintable
    end
    java_overload :setHighScoresPaintable, 1
    

    def getHighScoresPaintable()
        return @highScoresPaintable
    end
    java_overload :getHighScoresPaintable, 0
    

    def getRealHighScoresPaintable()
        return @realHighScoresPaintable
    end
    java_overload :getRealHighScoresPaintable, 0
    

    def clearPlayerGameInputList()
        playerGameInput = nil
        (@localPlayerGameInputList.size() - 1).step(0, -(1)) do |index|
            playerGameInput = @localPlayerGameInputList.get(index)
            @gameKeyEventHandler.removeListener(playerGameInput)
        end
        @localPlayerGameInputList.clear()
    end
    java_overload :clearPlayerGameInputList, 0
    

    def addPlayerGameInput(playerGameInput)
        @localPlayerGameInputList.add(playerGameInput)
    end
    java_overload :addPlayerGameInput, 1
    

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
    

    def getStartLevel()
        return @startLevel
    end
    java_overload :getStartLevel, 0
    

    def setStartLevel(startLevel)
        @startLevel = startLevel
    end
    java_overload :setStartLevel, 1
    

    def setTouchButtonsPaintable(touchButtonsPaintable)
        @touchButtonsPaintable = touchButtonsPaintable
    end
    java_overload :setTouchButtonsPaintable, 1
    

    def getTouchButtonsPaintable()
        return @touchButtonsPaintable
    end
    java_overload :getTouchButtonsPaintable, 0
    

    def setGameInputProcessor(gameInputProcessor)
        @gameInputProcessor = gameInputProcessor
    end
    java_overload :setGameInputProcessor, 1
    

    def getGameInputProcessor()
        return @gameInputProcessor
    end
    java_overload :getGameInputProcessor, 0
    

    def setEndGameProcessor(endGameProcessor)
        @endGameProcessor = endGameProcessor
    end
    java_overload :setEndGameProcessor, 1
    

    def getEndGameProcessor()
        return @endGameProcessor
    end
    java_overload :getEndGameProcessor, 0
    

    def setEndGameStatePaintable(endGameStatePaintable)
        @endGameStatePaintable = endGameStatePaintable
    end
    java_overload :setEndGameStatePaintable, 1
    

    def getEndGameStatePaintable()
        return @endGameStatePaintable
    end
    java_overload :getEndGameStatePaintable, 0
    

    def setNonBotPaintableP(nonBotPaintable)
        @nonBotPaintable = nonBotPaintable
    end
    java_overload :setNonBotPaintableP, 1
    

    def getNonBotPaintableP()
        return @nonBotPaintable
    end
    java_overload :getNonBotPaintableP, 0
    

    def setStartIntermissionPaintable(startIntermissionPaintable)
        @startIntermissionPaintable = startIntermissionPaintable
    end
    java_overload :setStartIntermissionPaintable, 1
    

    def getStartIntermissionPaintable()
        return @startIntermissionPaintable
    end
    java_overload :getStartIntermissionPaintable, 0
    

    def setMainStateProcessor(mainStateProcessor)
        @mainStateProcessor = mainStateProcessor
    end
    java_overload :setMainStateProcessor, 1
    

    def getMainStateProcessor()
        return @mainStateProcessor
    end
    java_overload :getMainStateProcessor, 0
    

    def setProcessGameProcessor(processGameProcessor)
        @processGameProcessor = processGameProcessor
    end
    java_overload :setProcessGameProcessor, 1
    

    def getProcessGameProcessor()
        return @processGameProcessor
    end
    java_overload :getProcessGameProcessor, 0
    

    def setOpenMenuPaintable(openMenuPaintable)
        @openMenuPaintable = openMenuPaintable
    end
    java_overload :setOpenMenuPaintable, 1
    

    def getOpenMenuPaintable()
        return @openMenuPaintable
    end
    java_overload :getOpenMenuPaintable, 0
    

    def setPopupMenuInputProcessor(popupMenuInputProcessor)
        @popupMenuInputProcessor = popupMenuInputProcessor
    end
    java_overload :setPopupMenuInputProcessor, 1
    

    def getPopupMenuInputProcessor()
        return @popupMenuInputProcessor
    end
    java_overload :getPopupMenuInputProcessor, 0
    

    def getSensorGameUpdateProcessor()
        return @sensorGameUpdateProcessor
    end
    java_overload :getSensorGameUpdateProcessor, 0
    

    def getRawGameInputProcessor()
        return @rawGameInputProcessor
    end
    java_overload :getRawGameInputProcessor, 0
    

    def getRawInputProcessor()
        return @rawInputProcessor
    end
    java_overload :getRawInputProcessor, 0
    

    def setInputProcessor(inputProcessor)
        @inputProcessor = inputProcessor
    end
    java_overload :setInputProcessor, 1
    

    def getInputProcessor()
        return @inputProcessor
    end
    java_overload :getInputProcessor, 0
    

    def setMenuPaintable(menuPaintable)
        @menuPaintable = menuPaintable
    end
    java_overload :setMenuPaintable, 1
    

    def getMenuPaintable()
        return @menuPaintable
    end
    java_overload :getMenuPaintable, 0
    

    def setFormPaintable(formPaintable)
        @formPaintable = formPaintable
    end
    java_overload :setFormPaintable, 1
    

    def getFormPaintable()
        return @formPaintable
    end
    java_overload :getFormPaintable, 0
    

    def setGameSpecificPaintableP(gameSpecificPaintable)
        @gameSpecificPaintable = gameSpecificPaintable
    end
    java_overload :setGameSpecificPaintableP, 1
    

    def getGameSpecificPaintableP()
        return @gameSpecificPaintable
    end
    java_overload :getGameSpecificPaintableP, 0
    

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
    

    def getType()
        return AllBinaryGameCanvas::TYPE
    end
    java_overload :getType, 0
    

    def getTitle()
        return AllBinaryGameCanvas.superclass.java_super_method(:getTitle, 0).bind(self).call()
    end
    java_overload :getTitle, 0
    

    def isPaused()
        return AllBinaryGameCanvas.superclass.java_super_method(:isPaused, 0).bind(self).call()
    end
    java_overload :isPaused, 0

    def self.id()
        AllBinaryGameCanvas.java_static_fields unless @java_static_fields_started
        return defined?(@@id) ? @@id : nil
    end

    def self.id=(value)
        AllBinaryGameCanvas.java_static_fields unless @java_static_fields_started
        @@id = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        @@id = 0
        const_set(:TYPE, 2)
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AllBinaryGameCanvas"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:TYPE].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :ChoiceGroup, "javax/microedition/lcdui/ChoiceGroup" unless const_defined?(:ChoiceGroup, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :CommandListener, "javax/microedition/lcdui/CommandListener" unless const_defined?(:CommandListener, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Font, "javax/microedition/lcdui/Font" unless const_defined?(:Font, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Item, "javax/microedition/lcdui/Item" unless const_defined?(:Item, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :NullCommandListener, "javax/microedition/lcdui/NullCommandListener" unless const_defined?(:NullCommandListener, false); end; end; end
module ::Org; module Allbinary; autoload :AndroidUtil, "org/allbinary/AndroidUtil" unless const_defined?(:AndroidUtil, false); end; end
module ::Org; module Allbinary; autoload :J2MEUtil, "org/allbinary/J2MEUtil" unless const_defined?(:J2MEUtil, false); end; end
module ::Org; module Allbinary; module Business; module Advertisement; autoload :GameAdStateFactory, "org/allbinary/business/advertisement/GameAdStateFactory" unless const_defined?(:GameAdStateFactory, false); end; end; end; end
module ::Org; module Allbinary; module Canvas; autoload :BaseGameStatistics, "org/allbinary/canvas/BaseGameStatistics" unless const_defined?(:BaseGameStatistics, false); end; end; end
module ::Org; module Allbinary; module Canvas; autoload :GameStatisticsFactory, "org/allbinary/canvas/GameStatisticsFactory" unless const_defined?(:GameStatisticsFactory, false); end; end; end
module ::Org; module Allbinary; module Canvas; autoload :Processor, "org/allbinary/canvas/Processor" unless const_defined?(:Processor, false); end; end; end
module ::Org; module Allbinary; module Debug; autoload :DebugFactory, "org/allbinary/debug/DebugFactory" unless const_defined?(:DebugFactory, false); end; end; end
module ::Org; module Allbinary; module Debug; autoload :NoDebug, "org/allbinary/debug/NoDebug" unless const_defined?(:NoDebug, false); end; end; end
module ::Org; module Allbinary; module Game; autoload :GameAdState, "org/allbinary/game/GameAdState" unless const_defined?(:GameAdState, false); end; end; end
module ::Org; module Allbinary; module Game; autoload :GameInfo, "org/allbinary/game/GameInfo" unless const_defined?(:GameInfo, false); end; end; end
module ::Org; module Allbinary; module Game; autoload :GameStrings, "org/allbinary/game/GameStrings" unless const_defined?(:GameStrings, false); end; end; end
module ::Org; module Allbinary; module Game; autoload :GameTypeFactory, "org/allbinary/game/GameTypeFactory" unless const_defined?(:GameTypeFactory, false); end; end; end
module ::Org; module Allbinary; module Game; autoload :Intermission, "org/allbinary/game/Intermission" unless const_defined?(:Intermission, false); end; end; end
module ::Org; module Allbinary; module Game; autoload :IntermissionInterface, "org/allbinary/game/IntermissionInterface" unless const_defined?(:IntermissionInterface, false); end; end; end
module ::Org; module Allbinary; module Game; autoload :PlayerTypesFactory, "org/allbinary/game/PlayerTypesFactory" unless const_defined?(:PlayerTypesFactory, false); end; end; end
module ::Org; module Allbinary; module Game; module Commands; autoload :GameCommandsFactory, "org/allbinary/game/commands/GameCommandsFactory" unless const_defined?(:GameCommandsFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; autoload :InGameFeatures, "org/allbinary/game/configuration/InGameFeatures" unless const_defined?(:InGameFeatures, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; autoload :InGameOptionsForm, "org/allbinary/game/configuration/InGameOptionsForm" unless const_defined?(:InGameOptionsForm, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Event; autoload :ChangedGameFeatureListener, "org/allbinary/game/configuration/event/ChangedGameFeatureListener" unless const_defined?(:ChangedGameFeatureListener, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Event; autoload :GameInitializedEvent, "org/allbinary/game/configuration/event/GameInitializedEvent" unless const_defined?(:GameInitializedEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Event; autoload :GameInitializedEventHandler, "org/allbinary/game/configuration/event/GameInitializedEventHandler" unless const_defined?(:GameInitializedEventHandler, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :GameFeatureFactory, "org/allbinary/game/configuration/feature/GameFeatureFactory" unless const_defined?(:GameFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :GameFeatureUtil, "org/allbinary/game/configuration/feature/GameFeatureUtil" unless const_defined?(:GameFeatureUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :InputFeatureFactory, "org/allbinary/game/configuration/feature/InputFeatureFactory" unless const_defined?(:InputFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :MainFeatureFactory, "org/allbinary/game/configuration/feature/MainFeatureFactory" unless const_defined?(:MainFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :SensorFeatureFactory, "org/allbinary/game/configuration/feature/SensorFeatureFactory" unless const_defined?(:SensorFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :TouchFeatureFactory, "org/allbinary/game/configuration/feature/TouchFeatureFactory" unless const_defined?(:TouchFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Displayable; autoload :GameLevelDisplayChangeEventListenersFactory, "org/allbinary/game/displayable/GameLevelDisplayChangeEventListenersFactory" unless const_defined?(:GameLevelDisplayChangeEventListenersFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Init; autoload :BasicBuildGameInitializerFactory, "org/allbinary/game/init/BasicBuildGameInitializerFactory" unless const_defined?(:BasicBuildGameInitializerFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Init; autoload :GameInitializationUtil, "org/allbinary/game/init/GameInitializationUtil" unless const_defined?(:GameInitializationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :GameInputStrings, "org/allbinary/game/input/GameInputStrings" unless const_defined?(:GameInputStrings, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :InputProcessor, "org/allbinary/game/input/InputProcessor" unless const_defined?(:InputProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :NoPlayerGameInput, "org/allbinary/game/input/NoPlayerGameInput" unless const_defined?(:NoPlayerGameInput, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :PlayerGameInput, "org/allbinary/game/input/PlayerGameInput" unless const_defined?(:PlayerGameInput, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEventHandler, "org/allbinary/game/input/event/GameKeyEventHandler" unless const_defined?(:GameKeyEventHandler, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :SWTUtil, "org/allbinary/game/layer/SWTUtil" unless const_defined?(:SWTUtil, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Paint; autoload :ColorFillBasePaintable, "org/allbinary/game/paint/ColorFillBasePaintable" unless const_defined?(:ColorFillBasePaintable, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Paint; autoload :ColorFillPaintableFactory, "org/allbinary/game/paint/ColorFillPaintableFactory" unless const_defined?(:ColorFillPaintableFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Resource; autoload :ResourceLoadingLevel, "org/allbinary/game/resource/ResourceLoadingLevel" unless const_defined?(:ResourceLoadingLevel, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Resource; autoload :ResourceLoadingLevelFactory, "org/allbinary/game/resource/ResourceLoadingLevelFactory" unless const_defined?(:ResourceLoadingLevelFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :HighScore, "org/allbinary/game/score/HighScore" unless const_defined?(:HighScore, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :HighScoresHelperBaseInterface, "org/allbinary/game/score/HighScoresHelperBaseInterface" unless const_defined?(:HighScoresHelperBaseInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :HighScoresFactoryInterface, "org/allbinary/game/score/HighScoresFactoryInterface" unless const_defined?(:HighScoresFactoryInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :HighScoresPaintable, "org/allbinary/game/score/HighScoresPaintable" unless const_defined?(:HighScoresPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :NullHighScoresSingletonFactory, "org/allbinary/game/score/NullHighScoresSingletonFactory" unless const_defined?(:NullHighScoresSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; module Displayable; autoload :HighScoreTextBox, "org/allbinary/game/score/displayable/HighScoreTextBox" unless const_defined?(:HighScoreTextBox, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module State; autoload :GameState, "org/allbinary/game/state/GameState" unless const_defined?(:GameState, false); end; end; end; end
module ::Org; module Allbinary; module Game; module State; autoload :GameStateFactory, "org/allbinary/game/state/GameStateFactory" unless const_defined?(:GameStateFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :GraphicsStrings, "org/allbinary/graphics/GraphicsStrings" unless const_defined?(:GraphicsStrings, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :Rectangle, "org/allbinary/graphics/Rectangle" unless const_defined?(:Rectangle, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :ScreenCapture, "org/allbinary/graphics/ScreenCapture" unless const_defined?(:ScreenCapture, false); end; end; end
module ::Org; module Allbinary; module Graphics; autoload :ScreenCaptureFactory, "org/allbinary/graphics/ScreenCaptureFactory" unless const_defined?(:ScreenCaptureFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress; autoload :ProgressCanvas, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas" unless const_defined?(:ProgressCanvas, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress; autoload :ProgressCanvasFactory, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" unless const_defined?(:ProgressCanvasFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorSetUtil, "org/allbinary/graphics/color/BasicColorSetUtil" unless const_defined?(:BasicColorSetUtil, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :CanvasStrings, "org/allbinary/graphics/displayable/CanvasStrings" unless const_defined?(:CanvasStrings, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :GameTickDisplayInfoSingleton, "org/allbinary/graphics/displayable/GameTickDisplayInfoSingleton" unless const_defined?(:GameTickDisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; module Command; autoload :MyCommandsFactory, "org/allbinary/graphics/displayable/command/MyCommandsFactory" unless const_defined?(:MyCommandsFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; module Event; autoload :DisplayChangeEvent, "org/allbinary/graphics/displayable/event/DisplayChangeEvent" unless const_defined?(:DisplayChangeEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; module Event; autoload :DisplayChangeEventHandler, "org/allbinary/graphics/displayable/event/DisplayChangeEventHandler" unless const_defined?(:DisplayChangeEventHandler, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :MyFontProcessor, "org/allbinary/graphics/font/MyFontProcessor" unless const_defined?(:MyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Font; autoload :UpdateMyFontProcessor, "org/allbinary/graphics/font/UpdateMyFontProcessor" unless const_defined?(:UpdateMyFontProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :CommandCurrentSelectionFormFactory, "org/allbinary/graphics/form/CommandCurrentSelectionFormFactory" unless const_defined?(:CommandCurrentSelectionFormFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :FormPaintable, "org/allbinary/graphics/form/FormPaintable" unless const_defined?(:FormPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :FormType, "org/allbinary/graphics/form/FormType" unless const_defined?(:FormType, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :FormTypeFactory, "org/allbinary/graphics/form/FormTypeFactory" unless const_defined?(:FormTypeFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :ScrollSelectionForm, "org/allbinary/graphics/form/ScrollSelectionForm" unless const_defined?(:ScrollSelectionForm, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :ScrollSelectionFormNoneFactory, "org/allbinary/graphics/form/ScrollSelectionFormNoneFactory" unless const_defined?(:ScrollSelectionFormNoneFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; module Item; autoload :CommandTextItemArrayFactory, "org/allbinary/graphics/form/item/CommandTextItemArrayFactory" unless const_defined?(:CommandTextItemArrayFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; module Item; autoload :ABCustomItem, "org/allbinary/graphics/form/item/ABCustomItem" unless const_defined?(:ABCustomItem, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :CurrentDisplayableFactory, "org/allbinary/graphics/opengles/CurrentDisplayableFactory" unless const_defined?(:CurrentDisplayableFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLFeatureFactory, "org/allbinary/graphics/opengles/OpenGLFeatureFactory" unless const_defined?(:OpenGLFeatureFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLFeatureUtil, "org/allbinary/graphics/opengles/OpenGLFeatureUtil" unless const_defined?(:OpenGLFeatureUtil, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLThreadUtil, "org/allbinary/graphics/opengles/OpenGLThreadUtil" unless const_defined?(:OpenGLThreadUtil, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :InitUpdatePaintable, "org/allbinary/graphics/paint/InitUpdatePaintable" unless const_defined?(:InitUpdatePaintable, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :NullInitUpdatePaintable, "org/allbinary/graphics/paint/NullInitUpdatePaintable" unless const_defined?(:NullInitUpdatePaintable, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :NullPaintable, "org/allbinary/graphics/paint/NullPaintable" unless const_defined?(:NullPaintable, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :Paintable, "org/allbinary/graphics/paint/Paintable" unless const_defined?(:Paintable, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Paint; autoload :PaintableInterface, "org/allbinary/graphics/paint/PaintableInterface" unless const_defined?(:PaintableInterface, false); end; end; end; end
module ::Org; module Allbinary; module Image; module Opengles; autoload :OpenGLImageSpecificFactory, "org/allbinary/image/opengles/OpenGLImageSpecificFactory" unless const_defined?(:OpenGLImageSpecificFactory, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Gyro; autoload :SensorGameUpdateProcessor, "org/allbinary/input/gyro/SensorGameUpdateProcessor" unless const_defined?(:SensorGameUpdateProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Gyro; autoload :SingleSensorGameUpdateProcessor, "org/allbinary/input/gyro/SingleSensorGameUpdateProcessor" unless const_defined?(:SingleSensorGameUpdateProcessor, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Button; autoload :BaseTouchInput, "org/allbinary/input/motion/button/BaseTouchInput" unless const_defined?(:BaseTouchInput, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Button; autoload :NoButtonsTouchInputFactory, "org/allbinary/input/motion/button/NoButtonsTouchInputFactory" unless const_defined?(:NoButtonsTouchInputFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Button; autoload :TouchButtonFactory, "org/allbinary/input/motion/button/TouchButtonFactory" unless const_defined?(:TouchButtonFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Button; autoload :TouchButtonsPaintableFactory, "org/allbinary/input/motion/button/TouchButtonsPaintableFactory" unless const_defined?(:TouchButtonsPaintableFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Button; autoload :TouchScreenFactory, "org/allbinary/input/motion/button/TouchScreenFactory" unless const_defined?(:TouchScreenFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Observer; autoload :BasicMotionGesturesHandler, "org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler" unless const_defined?(:BasicMotionGesturesHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :ABSystemWrapper, "org/allbinary/logic/ABSystemWrapper" unless const_defined?(:ABSystemWrapper, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Os; autoload :OperatingSystemFactory, "org/allbinary/logic/system/os/OperatingSystemFactory" unless const_defined?(:OperatingSystemFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings" unless const_defined?(:EventStrings, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :AllBinaryMediaManager, "org/allbinary/media/audio/AllBinaryMediaManager" unless const_defined?(:AllBinaryMediaManager, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :PlayerQueue, "org/allbinary/media/audio/PlayerQueue" unless const_defined?(:PlayerQueue, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :PrimaryPlayerQueueFactory, "org/allbinary/media/audio/PrimaryPlayerQueueFactory" unless const_defined?(:PrimaryPlayerQueueFactory, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :SecondaryPlayerQueueFactory, "org/allbinary/media/audio/SecondaryPlayerQueueFactory" unless const_defined?(:SecondaryPlayerQueueFactory, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :SelectSound, "org/allbinary/media/audio/SelectSound" unless const_defined?(:SelectSound, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module ThreadPackage; autoload :SecondaryThreadPool, "org/allbinary/thread/SecondaryThreadPool" unless const_defined?(:SecondaryThreadPool, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :GameTickTimeDelayHelper, "org/allbinary/time/GameTickTimeDelayHelper" unless const_defined?(:GameTickTimeDelayHelper, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :GameTickTimeDelayHelperFactory, "org/allbinary/time/GameTickTimeDelayHelperFactory" unless const_defined?(:GameTickTimeDelayHelperFactory, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil" unless const_defined?(:BasicArrayListUtil, false); end; end; end
autoload :BaseGameBehavior, "org/allbinary/game/displayable/canvas/BaseGameBehavior" unless const_defined?(:BaseGameBehavior, false)
autoload :BaseMenuBehavior, "org/allbinary/game/displayable/canvas/BaseMenuBehavior" unless const_defined?(:BaseMenuBehavior, false)
autoload :BasicMenuInputProcessor, "org/allbinary/game/displayable/canvas/BasicMenuInputProcessor" unless const_defined?(:BasicMenuInputProcessor, false)
autoload :BasicPopupMenuPaintable, "org/allbinary/game/displayable/canvas/BasicPopupMenuPaintable" unless const_defined?(:BasicPopupMenuPaintable, false)
autoload :CheatGameInputProcessor, "org/allbinary/game/displayable/canvas/CheatGameInputProcessor" unless const_defined?(:CheatGameInputProcessor, false)
autoload :DemoGameBehavior, "org/allbinary/game/displayable/canvas/DemoGameBehavior" unless const_defined?(:DemoGameBehavior, false)
autoload :DemoPaintableInterface, "org/allbinary/game/displayable/canvas/DemoPaintableInterface" unless const_defined?(:DemoPaintableInterface, false)
autoload :EndGameInfo, "org/allbinary/game/displayable/canvas/EndGameInfo" unless const_defined?(:EndGameInfo, false)
autoload :EndGamePaintable, "org/allbinary/game/displayable/canvas/EndGamePaintable" unless const_defined?(:EndGamePaintable, false)
autoload :EndGameProcessor, "org/allbinary/game/displayable/canvas/EndGameProcessor" unless const_defined?(:EndGameProcessor, false)
autoload :FormInputProcessor, "org/allbinary/game/displayable/canvas/FormInputProcessor" unless const_defined?(:FormInputProcessor, false)
autoload :FormUtil, "org/allbinary/game/displayable/canvas/FormUtil" unless const_defined?(:FormUtil, false)
autoload :GameCanvasInputProcessor, "org/allbinary/game/displayable/canvas/GameCanvasInputProcessor" unless const_defined?(:GameCanvasInputProcessor, false)
autoload :GameCanvasPauseRunnable, "org/allbinary/game/displayable/canvas/GameCanvasPauseRunnable" unless const_defined?(:GameCanvasPauseRunnable, false)
autoload :GameCanvasRunnable, "org/allbinary/game/displayable/canvas/GameCanvasRunnable" unless const_defined?(:GameCanvasRunnable, false)
autoload :GameLimitedCommandTextItemArrayFactory, "org/allbinary/game/displayable/canvas/GameLimitedCommandTextItemArrayFactory" unless const_defined?(:GameLimitedCommandTextItemArrayFactory, false)
autoload :GameProcessor, "org/allbinary/game/displayable/canvas/GameProcessor" unless const_defined?(:GameProcessor, false)
autoload :InGameMenuBehavior, "org/allbinary/game/displayable/canvas/InGameMenuBehavior" unless const_defined?(:InGameMenuBehavior, false)
autoload :MyFormUtil, "org/allbinary/game/displayable/canvas/MyFormUtil" unless const_defined?(:MyFormUtil, false)
autoload :NoMenuInputProcessor, "org/allbinary/game/displayable/canvas/NoMenuInputProcessor" unless const_defined?(:NoMenuInputProcessor, false)
autoload :NullDemoPaintable, "org/allbinary/game/displayable/canvas/NullDemoPaintable" unless const_defined?(:NullDemoPaintable, false)
autoload :NullWaitGameRunnable, "org/allbinary/game/displayable/canvas/NullWaitGameRunnable" unless const_defined?(:NullWaitGameRunnable, false)
autoload :PopupCommandFormInputProcessor, "org/allbinary/game/displayable/canvas/PopupCommandFormInputProcessor" unless const_defined?(:PopupCommandFormInputProcessor, false)
autoload :PopupMenuInputProcessor, "org/allbinary/game/displayable/canvas/PopupMenuInputProcessor" unless const_defined?(:PopupMenuInputProcessor, false)
autoload :SaveHighScoreRunnable, "org/allbinary/game/displayable/canvas/SaveHighScoreRunnable" unless const_defined?(:SaveHighScoreRunnable, false)
autoload :StartIntermissionProcessor, "org/allbinary/game/displayable/canvas/StartIntermissionProcessor" unless const_defined?(:StartIntermissionProcessor, false)
require "java/lang/Thread"

begin
    AllBinaryGameCanvas.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

