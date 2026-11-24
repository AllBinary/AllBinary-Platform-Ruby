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
require "java/lang/JavaOverload"
require "javax/microedition/lcdui/CommandListener"
require "org/allbinary/midlet/ProgressMidlet"

module ::Org; module Allbinary; module Game; module Midlet

class GameMidlet < ::Org::Allbinary::Midlet::ProgressMidlet
    include ::Javax::Microedition::Lcdui::CommandListener
    attr_accessor :enumerationUtil, :basicColorFactory, :features, :midletStrings, :myCommandsFactory, :gameStrings, :gameAdStateFactory, :gameStateFactory, :tsUtil, :DISPLAYABLE, :COMMAND_NAME, :NO_COMMAND, :NO_DISPLAYABLE, :COMMAND_ACTION, :PAUSE_APP_BACKGROUND, :UN_PAUSE_APP_BACKGROUND, :aboutCommandProcessor, :webCommandProcessor, :gameMidletStateFactory, :gameStartTimeHelper, :fullScreenUtil, :debugInterface, :allbinaryGameCanvasRunnableInterface, :thread, :loadGameForm, :isFullScreen, :resized, :startedBefore

    def jfields_org_allbinary_game_midlet_GameMidlet
        @enumerationUtil = ::Org::Allbinary::Util::EnumerationUtil.getInstance()
        @basicColorFactory = ::Org::Allbinary::Graphics::Color::BasicColorFactory.getInstance()
        @features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
        @midletStrings = ::Org::Allbinary::Midlet::MidletStrings.getInstance()
        @myCommandsFactory = ::Org::Allbinary::Graphics::Displayable::Command::MyCommandsFactory.getInstance()
        @gameStrings = ::Org::Allbinary::Game::GameStrings.getInstance()
        @gameAdStateFactory = ::Org::Allbinary::Business::Advertisement::GameAdStateFactory.getInstance()
        @gameStateFactory = ::Org::Allbinary::Game::State::GameStateFactory.getInstance()
        @tsUtil = ::Org::Allbinary::TsUtil.getInstance()
        @DISPLAYABLE = " Displayable: "
        @COMMAND_NAME = "command Name/Label: "
        @NO_COMMAND = "No Command"
        @NO_DISPLAYABLE = "No Displayable"
        @COMMAND_ACTION = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("GameMidlet::").append(@midletStrings.COMMAND_ACTION).to_s
        @PAUSE_APP_BACKGROUND = "pauseAppBackground"
        @UN_PAUSE_APP_BACKGROUND = "unPauseAppBackground"
        @aboutCommandProcessor = ::Org::Allbinary::Graphics::Displayable::Screen::AboutCommandProcessor.getInstance()
        @webCommandProcessor = ::Org::Allbinary::Graphics::Displayable::Screen::WebCommandProcessor.getInstance()
        @gameMidletStateFactory = GameMidletStateFactory.getInstance()
        @gameStartTimeHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(240)
        @fullScreenUtil = ::Org::Allbinary::Canvas::FullScreenUtil.getInstance()
        @debugInterface = nil unless instance_variable_defined?(:@debugInterface)
        @allbinaryGameCanvasRunnableInterface = ::Org::Allbinary::Game::Displayable::Canvas::NullGameCanvasRunnable::NULL_GAME_CANVAS_RUNNABLE
        @thread = ::Org::Allbinary::ThreadPackage::NullThread::NULL_THREAD
        @loadGameForm = nil unless instance_variable_defined?(:@loadGameForm)
        @isFullScreen = false unless instance_variable_defined?(:@isFullScreen)
        @resized = false unless instance_variable_defined?(:@resized)
        @startedBefore = false
    end
    

    def initialize(clientInformationFactory)
        super(clientInformationFactory)
        jfields_org_allbinary_game_midlet_GameMidlet
        ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().initWithRange(0x291, 6)
        @loadGameForm = ::Org::Allbinary::Graphics::Displayable::Screen::CommandForm.getNullCommandForm()
        progressCanvas = ::Org::Allbinary::Graphics::Canvas::Transition::Progress::ProgressCanvasFactory.getInstance()
        progressCanvas.init(self)
        ::Org::Allbinary::Game::Configuration::Event::GameFeatureEventHandler.getInstance().addListenerInterface(::Org::Allbinary::Game::Configuration::Event::ChangedGameFeatureListener.getInstance())
        ::Org::Allbinary::Game::Configuration::Persistance::GamePersistanceSingleton.getInstance().clear()
        @debugInterface = ::Org::Allbinary::Debug::DebugFactory.getInstance()
        self.init()
    end
    

    def init()
    end
    java_overload :init, 0
    

    # throws Exception
    def setDemo()
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    java_overload :setDemo, 0
    

    # throws Exception
    def createGame()
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    java_overload :createGame, 0
    

    # throws Exception
    def mediaShutdown()
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    java_overload :mediaShutdown, 0
    

    def stopAll()
    end
    java_overload :stopAll, 0
    

    def pauseApp()
        self.pauseAppBackground(true)
        gameAdState = @gameAdStateFactory.getCurrentInstance()
        gameAdState.getAdvertisements().stopAll()
    end
    java_overload :pauseApp, 0
    

    def pauseAppBackground(background)
        @logUtil.putF(@commonStrings.START, self, @PAUSE_APP_BACKGROUND)
        if @allbinaryGameCanvasRunnableInterface != ::Org::Allbinary::Game::Displayable::Canvas::NullGameCanvasRunnable::NULL_GAME_CANVAS_RUNNABLE
            @allbinaryGameCanvasRunnableInterface.pause()
        else
            @logUtil.putF("<<<<<< Null", self, @PAUSE_APP_BACKGROUND)
        end
        ::Org::Allbinary::Input::AllBinarySensorManager.getInstance().shutdown()
    end
    java_overload :pauseAppBackground, 1
    

    def unPauseApp()
        self.unPauseAppBackground(true)
        gameAdState = @gameAdStateFactory.getCurrentInstance()
        gameAdState.getAdvertisements().startAll()
    end
    java_overload :unPauseApp, 0
    

    def unPauseAppBackground(background)
        @logUtil.putF(@commonStrings.START, self, @UN_PAUSE_APP_BACKGROUND)
        ::Org::Allbinary::Input::AllBinarySensorManager.getInstance().init()
        gameCanvasRunnableInterface = @allbinaryGameCanvasRunnableInterface
        if gameCanvasRunnableInterface != ::Org::Allbinary::Game::Displayable::Canvas::NullGameCanvasRunnable::NULL_GAME_CANVAS_RUNNABLE
            gameCanvasRunnableInterface.unPause()
        else
            @logUtil.putF("<<<<<< Null", self, @UN_PAUSE_APP_BACKGROUND)
        end
    end
    java_overload :unPauseAppBackground, 1
    

    def destroyAppInRunnable(unconditional, isProgress)
        progressCanvas = ::Org::Allbinary::Graphics::Canvas::Transition::Progress::ProgressCanvasFactory.getInstance()
        if isProgress
            progressCanvas.start()
            self.commandAction(@myCommandsFactory.SET_DISPLAYABLE, progressCanvas)
        end
        self.destroyApp(unconditional)
        if isProgress
            progressCanvas.end_()
        end
    end
    java_overload :destroyAppInRunnable, 2
    

    def destroyApp(unconditional)
        _METHOD_NAME = "GameMidlet::destroyApp"
        begin
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Canvas::GameStatisticsFactory.getInstance().to_s, self, _METHOD_NAME)
            gameAdState = @gameAdStateFactory.getCurrentInstance()
            gameAdState.getAdvertisements().stopAll()
            if !self.isDestroyed()
                self.stopGameCanvasRunnableInterface()
                self.setGameCanvasRunnableInterface(::Org::Allbinary::Game::Displayable::Canvas::NullGameCanvasRunnable::NULL_GAME_CANVAS_RUNNABLE)
                self.mediaShutdown()
            else
                @logUtil.putF("Midlet Managment Error: Midlet Should Only Be Destroyed Once", self, _METHOD_NAME)
            end
            GameMidlet.superclass.java_super_method(:destroyApp, 1).bind(self).call(true)
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(@commonStrings.END_, self, _METHOD_NAME)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, _METHOD_NAME, e)
        end
        @logUtil.putF(@commonStrings.END_, self, _METHOD_NAME)
    end
    java_overload :destroyApp, 1
    

    # throws MIDletStateChangeException
    def startApp()
        begin
            gameAdState = @gameAdStateFactory.getCurrentInstance()
            gameAdState.getAdvertisements().startAll()
            _START_APP = "startApp"
            @logUtil.putF(@commonStrings.START, self, _START_APP)
            gameCanvasRunnableInterface = @allbinaryGameCanvasRunnableInterface
            if gameCanvasRunnableInterface == ::Org::Allbinary::Game::Displayable::Canvas::NullGameCanvasRunnable::NULL_GAME_CANVAS_RUNNABLE
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
    java_overload :startApp, 0
    

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
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@COMMAND_NAME).append(label).append(@DISPLAYABLE).append(displayableAsString).to_s, self, @COMMAND_ACTION)
            gameCommandsFactory = ::Org::Allbinary::Game::Commands::GameCommandsFactory.getInstance()
            allbinaryGameCanvasRunnableInterface = @allbinaryGameCanvasRunnableInterface
            gameCanvasRunnableInterface = allbinaryGameCanvasRunnableInterface
            if command == gameCommandsFactory.SHOW_GAME_CANVAS
                if self.getDisplay().getCurrent() != gameCanvasRunnableInterface && allbinaryGameCanvasRunnableInterface.getType() != ::Org::Allbinary::Game::Displayable::Canvas::NullGameCanvasRunnable::NULL_GAME_CANVAS_RUNNABLE.getType()
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
                inApplicationPurchaseFactory = ::Org::Allbinary::Logic::System::Security::Licensing::InApplicationPurchaseFactory.getInstance()
                list = ::Org::Allbinary::Logic::System::Security::Licensing::LockableFeatureFactory.getInstance().getList()
                lockableFeature = list.get(0)
                if list.size() > 0 && !inApplicationPurchaseFactory.isPurchased(lockableFeature)
                    inApplicationPurchaseFactory.purchase(lockableFeature)
                else
                    ::Org::Allbinary::Game::Input::TextNotificationUtil.getInstance().fireSuccess("Already Purchased")
                end
            elsif command == gameCommandsFactory.QUIT_COMMAND
                if @gameStartTimeHelper.isTimeTNT()
                    if displayable.is_a?(::Org::Allbinary::Game::Score::Displayable::HighScoreTextBox)
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
                if tempDisplayable.is_a?(::Org::Allbinary::Game::Configuration::GameOptionsForm)
                    ::Org::Allbinary::Game::Configuration::Feature::GameFeatureFormUtil.getInstance().setDefault(tempDisplayable)
                end
            elsif command == ::Org::Allbinary::Game::Displayable::Canvas::GameInputMappingInstructionsCanvas::DISPLAY
                tempDisplayable = displayable
                if tempDisplayable.is_a?(::Org::Allbinary::Game::Displayable::Canvas::GameInputMappingCanvas)
                    gameInputMappingCanvas = tempDisplayable
                    gameInputMappingCanvas.update()
                end
                self.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, self.getInputMappingInstructionsCanvas())
            elsif ::Org::Allbinary::Game::Score::HighScoreCommandsFactory.getInstance().isHighScoreCommand(command)
                tempDisplayable = displayable
                if tempDisplayable.is_a?(::Org::Allbinary::Game::Score::Displayable::HighScoresCanvas)
                    highScoresCanvas = tempDisplayable
                    highScoresCanvas.updateCommand(command)
                end
            elsif command == ::Org::Allbinary::Game::Score::HighScoreCommands.getInstance().DISPLAY
                self.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, self.createHighScoresCanvas())
            elsif command == ::Org::Allbinary::Game::Displayable::Canvas::GameInputMappingInstructionsCanvas::CLOSE
                menuListener = displayable
                menuListener.close()
                self.commandAction(::Org::Allbinary::Game::Displayable::Canvas::GameInputMappingCanvas::DISPLAY, ::Javax::Microedition::Lcdui::NullCanvas::NULL_CANVAS)
            elsif command == ::Org::Allbinary::Game::Displayable::Canvas::GameInputMappingCanvas::DISPLAY
                if ::Org::Allbinary::J2MEUtil.isHTML()
                    self.pauseAppBackground(false)
                end
                self.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, self.getInputMappingCanvas())
            elsif command == ::Org::Allbinary::Game::Displayable::Canvas::GameInputMappingCanvas::DEFAULT
                tempDisplayable = displayable
                if tempDisplayable.is_a?(::Org::Allbinary::Game::Displayable::Canvas::GameInputMappingCanvas)
                    gameInputMappingCanvas = tempDisplayable
                    gameInputMappingCanvas.setDefault()
                end
            elsif command == ::Org::Allbinary::Game::Configuration::InGameOptionsForm::DISPLAY
                self.pauseAppBackground(false)
                progressCanvas = ::Org::Allbinary::Graphics::Canvas::Transition::Progress::ProgressCanvasFactory.getInstance()
                progressCanvas.addNormalPortion(50, "In Game Options")
                layerManager = self.createGameLayerManager()
                inGameOptionsFormFactory = ::Org::Allbinary::Game::Configuration::InGameOptionsFormFactory.getInstance()
                inGameOptionsFormFactory.init(self, ::Org::Allbinary::Game::Configuration::InGameFeatures.new(), "Options In Game", layerManager.getBackgroundBasicColor(), layerManager.getForegroundBasicColor())
                inGameOptionsForm = inGameOptionsFormFactory.get()
                inGameOptionsForm.setItemStateListener(allbinaryGameCanvasRunnableInterface)
                self.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, inGameOptionsForm)
            elsif command == ::Org::Allbinary::Game::Configuration::InGameOptionsForm::DEFAULT
                inGameOptionsForm = ::Org::Allbinary::Game::Configuration::InGameOptionsFormFactory.getInstance().get()
                ::Org::Allbinary::Game::Configuration::Feature::GameFeatureFormUtil.getInstance().setDefault(inGameOptionsForm)
            elsif command == gameCommandsFactory.DISPLAY_OPTIONS
                ::Org::Allbinary::Media::Audio::AllBinaryMediaManager.setMuted(true)
                self.stopAll()
                mainFeatureFactory = ::Org::Allbinary::Game::Configuration::Feature::MainFeatureFactory.getInstance()
                @isFullScreen = @features.isFeature(mainFeatureFactory.FULL_SCREEN)
                ::Org::Allbinary::Graphics::ResizableListenerHandler.getInstance().fireEvent(true)
                self.setResized(false)
                self.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, self.getGameOptionsForm())
            elsif command == gameCommandsFactory.CLOSE_OPTIONS
                ::Org::Allbinary::Graphics::ResizableListenerHandler.getInstance().fireEvent(false)
                self.commandAction(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS, displayable)
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                stringBuffer.append("Close isFullScreen/change: ")
                stringBuffer.appendboolean(@isFullScreen)
                stringBuffer.appendboolean(@fullScreenUtil.isScreenChange(@isFullScreen))
                stringBuffer.append(" isResized: ")
                stringBuffer.appendboolean(self.isResized())
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(stringBuffer.to_s, self, @COMMAND_ACTION)
                if self.isResized() || @fullScreenUtil.isScreenChange(@isFullScreen)
                    self.updateFullScreen()
                end
                ::Org::Allbinary::Media::Audio::AllBinaryMediaManager.setMuted(false)
            elsif command == gameCommandsFactory.DISPLAY_LOAD_FORM
                self.pauseAppBackground(false)
                keyValuePersistance = ::Org::Allbinary::Game::Configuration::Persistance::GamePersistanceSingleton.getInstance()
                keyValuePersistance.clear()
                keyValuePersistance.loadAll(@abeClientInformation)
                if self.getLoadGameForm() == ::Org::Allbinary::Graphics::Displayable::Screen::CommandForm.getNullCommandForm()
                    layerManager = self.createGameLayerManager()
                    self.setLoadGameForm(::Org::Allbinary::Game::Configuration::LoadGameForm.new(self, "Load Game", layerManager.getBackgroundBasicColor(), layerManager.getForegroundBasicColor()))
                else
                    self.getLoadGameForm().update()
                end
                self.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, self.getLoadGameForm())
            elsif command == gameCommandsFactory.LOAD_FILE
                loadGameForm = self.getLoadGameForm()
                index = loadGameForm.getSelectedId()
                if index != -1
                    keyValuePersistance = ::Org::Allbinary::Game::Configuration::Persistance::GamePersistanceSingleton.getInstance()
                    self.setStartStateHashtable(keyValuePersistance.get(index))
                    menuListener = self.getLoadGameForm()
                    menuListener.close()
                    ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Input::Motion::Gesture::Observer::BasicMotionGesturesHandler.getInstance().to_s, self, @COMMAND_ACTION)
                    self.commandAction(gameCommandsFactory.START_COMMAND, ::Javax::Microedition::Lcdui::NullCanvas::NULL_CANVAS)
                    ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Input::Motion::Gesture::Observer::BasicMotionGesturesHandler.getInstance().to_s, self, @COMMAND_ACTION)
                end
            elsif command == gameCommandsFactory.DELETE_FILE
                loadGameForm = self.getLoadGameForm()
                index = loadGameForm.getSelectedText()
                if index != -1
                    keyValuePersistance = ::Org::Allbinary::Game::Configuration::Persistance::GamePersistanceSingleton.getInstance()
                    keyValuePersistance.delete(@abeClientInformation, index)
                    keyValuePersistance.clear()
                    keyValuePersistance.loadAllSize(@abeClientInformation, 1)
                    self.getLoadGameForm().update()
                end
            elsif command == gameCommandsFactory.SAVE
                keyValuePersistance = ::Org::Allbinary::Game::Configuration::Persistance::GamePersistanceSingleton.getInstance()
                self.pauseAppBackground(false)
                keyValuePersistance.save(@abeClientInformation, self.getCurrentStateHashtable())
                self.unPauseAppBackground(false)
            elsif command == ::Org::Allbinary::Game::Score::Displayable::HighScoreUtil::SUBMIT_TEXTBOX_COMMAND
                @logUtil.putF("Submitted Score", self, @COMMAND_ACTION)
                if displayable.is_a?(::Org::Allbinary::Game::Score::Displayable::HighScoreTextBox)
                    highScoreTextBox = displayable
                    highScoreTextBox.submitted = true
                end
                allbinaryGameCanvasRunnableInterface.setHighScoreSubmitted(true)
                self.commandAction(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS, displayable)
            elsif command == gameCommandsFactory.DISPLAY_ABOUT
                @aboutCommandProcessor.process(self, gameCommandsFactory.SET_MENU_DISPLAYABLE, self.getAboutCanvas())
            elsif command == gameCommandsFactory.OPEN_WEB_URL
                @webCommandProcessor.process(self, gameCommandsFactory.OPEN_WEB_URL, ::Javax::Microedition::Lcdui::NullCanvas::NULL_CANVAS)
            elsif command == gameCommandsFactory.TOGGLE_KEYBOARD
                virtualKeyboardEventHandler = ::Org::Allbinary::Input::Event::VirtualKeyboardEventHandler.getInstance()
                virtualKeyboardEventHandler.fireEvent(virtualKeyboardEventHandler.SHOW_EVENT)
            elsif @tsUtil.compareTo(command.getLabel(), gameCommandsFactory.TOGGLE_FULLSCREEN.getLabel()) == 0
                mainFeatureFactory = ::Org::Allbinary::Game::Configuration::Feature::MainFeatureFactory.getInstance()
                isFullScreen = @features.isFeature(mainFeatureFactory.FULL_SCREEN)
                if isFullScreen
                    @features.removeDefault(mainFeatureFactory.FULL_SCREEN)
                else
                    @features.addDefault(mainFeatureFactory.FULL_SCREEN)
                end
                self.updateFullScreen()
            end
        rescue StandardError => e
            @logUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@commonStrings.EXCEPTION_LABEL).append(command.getLabel()).to_s, self, @midletStrings.COMMAND_ACTION, e)
            if command != ::Org::Allbinary::Game::Commands::GameCommandsFactory.getInstance().EXIT_COMMAND
                self.exitProgress(false)
            end
        end
        end
    end
    java_overload :commandAction, 2
    

    def updateFullScreen()
        mainFeatureFactory = ::Org::Allbinary::Game::Configuration::Feature::MainFeatureFactory.getInstance()
        isFullScreen = @features.isFeature(mainFeatureFactory.FULL_SCREEN)
        displayable = self.getDisplay().getCurrent()
        if displayable.is_a?(::Javax::Microedition::Lcdui::Canvas)
            canvas = displayable
            canvas.setFullScreenMode(isFullScreen)
        end
    end
    java_overload :updateFullScreen, 0
    

    def onEvent(eventObject)
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    java_overload :onEvent, 1
    

    # throws Exception
    def getInputMappingInstructionsCanvas()
        return ::Org::Allbinary::Game::Displayable::Canvas::GameInputMappingInstructionsCanvas.new(self, self.createGameLayerManager())
    end
    java_overload :getInputMappingInstructionsCanvas, 0
    

    # throws Exception
    def getInputMappingCanvas()
        return ::Org::Allbinary::Game::Displayable::Canvas::GameInputMappingCanvas.new(@abeClientInformation, self, self.createGameLayerManager(), self.getHelpPaintable())
    end
    java_overload :getInputMappingCanvas, 0
    

    # throws Exception
    def getAboutCanvas()
        return ::Org::Allbinary::Game::Displayable::Canvas::BasicPaintablesCanvas.new(self, ::Org::Allbinary::Graphics::Displayable::CanvasStrings.getInstance().ABOUT, self.createGameLayerManager(), ::Org::Allbinary::Graphics::Displayable::Screen::AboutPaintableFactory.getInstance().paintableArray)
    end
    java_overload :getAboutCanvas, 0
    

    # throws Exception
    def getHelpPaintable()
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    java_overload :getHelpPaintable, 0
    

    # throws Exception
    def createHighScoresCanvas()
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    java_overload :createHighScoresCanvas, 0
    

    # throws Exception
    def startGameCanvasRunnableInterface()
        threadFactoryUtil = ::Org::Allbinary::ThreadPackage::ThreadFactoryUtil.getInstance()
        @thread = threadFactoryUtil.getInstanceGameCanvasRunnable(@allbinaryGameCanvasRunnableInterface)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Thread Priority: ").appendint(((@thread.getPriority()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).to_s, self, "startGameCanvasRunnableInterface")
        @allbinaryGameCanvasRunnableInterface.setThread(@thread)
        threadFactoryUtil.start(@thread)
    end
    java_overload :startGameCanvasRunnableInterface, 0
    

    # throws Exception
    def stopGameCanvasRunnableInterface()
        @logUtil.putF(@commonStrings.START, self, @gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE)
        ::Org::Allbinary::Game::Layer::Hud::Event::GameNotificationEventHandler.getInstance().removeAllListeners()
        ::Org::Allbinary::Graphics::Color::ColorChangeEventHandler.getInstance().removeAllListeners()
        ::Org::Allbinary::Game::Displayable::Canvas::GameEventHandlerUtil.removeAllListeners()
        gameCanvasRunnableInterface = @allbinaryGameCanvasRunnableInterface
        if gameCanvasRunnableInterface != ::Org::Allbinary::Game::Displayable::Canvas::NullGameCanvasRunnable::NULL_GAME_CANVAS_RUNNABLE
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Set Running False: ").append(gameCanvasRunnableInterface.to_s).to_s, self, @gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE)
            gameCanvasRunnableInterface.setRunning(false)
        else
            @logUtil.putF("StopGame - Could Not Stop", self, @gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE)
        end
        ::Org::Allbinary::ThreadPackage::ThreadUtil.getInstance().join(@thread)
        progressCanvas = ::Org::Allbinary::Graphics::Canvas::Transition::Progress::ProgressCanvasFactory.getInstance()
        if @features.isFeature(::Org::Allbinary::Game::Configuration::Feature::MainFeatureFactory.getInstance().LOAD_ALL)
            progressCanvas.addNormalPortion(50, "Stopped Game Runnable")
        else
            progressCanvas.addNormalPortion(50, "Stopped Main Runnable")
        end
        @logUtil.putF(@commonStrings.END_, self, @gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE)
    end
    java_overload :stopGameCanvasRunnableInterface, 0
    

    def getGameCanvasRunnableInterface()
        return @allbinaryGameCanvasRunnableInterface
    end
    java_overload :getGameCanvasRunnableInterface, 0
    

    def setGameCanvasRunnableInterface(gameCanvasRunnableInterface)
        @allbinaryGameCanvasRunnableInterface = gameCanvasRunnableInterface
    end
    java_overload :setGameCanvasRunnableInterface, 1
    

    def createGameLayerManager()
        gameInfo = ::Org::Allbinary::Game::GameInfo.new(::Org::Allbinary::Game::GameTypeFactory.getInstance().SINGLE_PLAYER, ::Org::Allbinary::Game::GameMode::SERVER, ::Org::Allbinary::Game::PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 1, 1)
        return ::Org::Allbinary::Game::Layer::AllBinaryGameLayerManager.new(@basicColorFactory.BLACK, @basicColorFactory.WHITE, gameInfo)
    end
    java_overload :createGameLayerManager, 0
    

    def getGameOptionsForm()
        layerManager = self.createGameLayerManager()
        return ::Org::Allbinary::Game::Configuration::GameOptionsFormFactory.getInstance().init(self, "Game Options", layerManager.getBackgroundBasicColor(), layerManager.getForegroundBasicColor())
    end
    java_overload :getGameOptionsForm, 0
    

    # throws Exception
    def save()
        @logUtil.putF(@commonStrings.START, self, @commonStrings.SAVE)
        hashtable = self.getCurrentStateHashtable()
        ::Org::Allbinary::Game::Configuration::Persistance::GamePersistanceSingleton.getInstance().save(@abeClientInformation, hashtable)
    end
    java_overload :save, 0
    

    # throws Exception
    def getCurrentStateHashtable()
        @logUtil.putF(@commonStrings.START, self, "getCurrentStateHashtable")
        hashtable = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashtable()
        if @allbinaryGameCanvasRunnableInterface != ::Org::Allbinary::Game::Displayable::Canvas::NullGameCanvasRunnable::NULL_GAME_CANVAS_RUNNABLE
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
    java_overload :getCurrentStateHashtable, 0
    

    def setLoadGameForm(loadGameForm)
        @loadGameForm = loadGameForm
    end
    java_overload :setLoadGameForm, 1
    

    def getLoadGameForm()
        return @loadGameForm
    end
    java_overload :getLoadGameForm, 0
    

    def setResized(resized)
        @resized = resized
    end
    java_overload :setResized, 1
    

    def isResized()
        return @resized
    end
    java_overload :isResized, 0
    

    def isDemoLoading()
        if @startedBefore
            return false
        end
        displayable = self.getDisplay().getCurrent()
        if displayable.is_a?(::Org::Allbinary::Game::Displayable::Canvas::DemoCanvas)
            demoCanvas = displayable
            if demoCanvas.isDemoLoading()
                return true
            end
        end
        return false
    end
    java_overload :isDemoLoading, 0
end

module ::Java; module Util; autoload :Enumeration, "java/util/Enumeration" unless const_defined?(:Enumeration, false); end; end
module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Command, "javax/microedition/lcdui/Command" unless const_defined?(:Command, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Displayable, "javax/microedition/lcdui/Displayable" unless const_defined?(:Displayable, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :NullCanvas, "javax/microedition/lcdui/NullCanvas" unless const_defined?(:NullCanvas, false); end; end; end
module ::Javax; module Microedition; module Midlet; autoload :MIDletStateChangeException, "javax/microedition/midlet/MIDletStateChangeException" unless const_defined?(:MIDletStateChangeException, false); end; end; end
module ::Org; module Allbinary; autoload :J2MEUtil, "org/allbinary/J2MEUtil" unless const_defined?(:J2MEUtil, false); end; end
module ::Org; module Allbinary; autoload :TsUtil, "org/allbinary/TsUtil" unless const_defined?(:TsUtil, false); end; end
module ::Org; module Allbinary; module Business; module Advertisement; autoload :GameAdStateFactory, "org/allbinary/business/advertisement/GameAdStateFactory" unless const_defined?(:GameAdStateFactory, false); end; end; end; end
module ::Org; module Allbinary; module Canvas; autoload :FullScreenUtil, "org/allbinary/canvas/FullScreenUtil" unless const_defined?(:FullScreenUtil, false); end; end; end
module ::Org; module Allbinary; module Canvas; autoload :GameStatisticsFactory, "org/allbinary/canvas/GameStatisticsFactory" unless const_defined?(:GameStatisticsFactory, false); end; end; end
module ::Org; module Allbinary; module Debug; autoload :DebugFactory, "org/allbinary/debug/DebugFactory" unless const_defined?(:DebugFactory, false); end; end; end
module ::Org; module Allbinary; module Debug; autoload :DebugInterface, "org/allbinary/debug/DebugInterface" unless const_defined?(:DebugInterface, false); end; end; end
module ::Org; module Allbinary; module Game; autoload :GameAdState, "org/allbinary/game/GameAdState" unless const_defined?(:GameAdState, false); end; end; end
module ::Org; module Allbinary; module Game; autoload :GameInfo, "org/allbinary/game/GameInfo" unless const_defined?(:GameInfo, false); end; end; end
module ::Org; module Allbinary; module Game; autoload :GameMode, "org/allbinary/game/GameMode" unless const_defined?(:GameMode, false); end; end; end
module ::Org; module Allbinary; module Game; autoload :GameStrings, "org/allbinary/game/GameStrings" unless const_defined?(:GameStrings, false); end; end; end
module ::Org; module Allbinary; module Game; autoload :GameTypeFactory, "org/allbinary/game/GameTypeFactory" unless const_defined?(:GameTypeFactory, false); end; end; end
module ::Org; module Allbinary; module Game; autoload :PlayerTypesFactory, "org/allbinary/game/PlayerTypesFactory" unless const_defined?(:PlayerTypesFactory, false); end; end; end
module ::Org; module Allbinary; module Game; module Commands; autoload :GameCommandsFactory, "org/allbinary/game/commands/GameCommandsFactory" unless const_defined?(:GameCommandsFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; autoload :GameOptionsForm, "org/allbinary/game/configuration/GameOptionsForm" unless const_defined?(:GameOptionsForm, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; autoload :GameOptionsFormFactory, "org/allbinary/game/configuration/GameOptionsFormFactory" unless const_defined?(:GameOptionsFormFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; autoload :InGameFeatures, "org/allbinary/game/configuration/InGameFeatures" unless const_defined?(:InGameFeatures, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; autoload :InGameOptionsForm, "org/allbinary/game/configuration/InGameOptionsForm" unless const_defined?(:InGameOptionsForm, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; autoload :InGameOptionsFormFactory, "org/allbinary/game/configuration/InGameOptionsFormFactory" unless const_defined?(:InGameOptionsFormFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; autoload :LoadGameForm, "org/allbinary/game/configuration/LoadGameForm" unless const_defined?(:LoadGameForm, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Event; autoload :ChangedGameFeatureListener, "org/allbinary/game/configuration/event/ChangedGameFeatureListener" unless const_defined?(:ChangedGameFeatureListener, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Event; autoload :GameFeatureEventHandler, "org/allbinary/game/configuration/event/GameFeatureEventHandler" unless const_defined?(:GameFeatureEventHandler, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :GameFeatureFormUtil, "org/allbinary/game/configuration/feature/GameFeatureFormUtil" unless const_defined?(:GameFeatureFormUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :MainFeatureFactory, "org/allbinary/game/configuration/feature/MainFeatureFactory" unless const_defined?(:MainFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Persistance; autoload :GamePersistanceSingleton, "org/allbinary/game/configuration/persistance/GamePersistanceSingleton" unless const_defined?(:GamePersistanceSingleton, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Persistance; autoload :KeyValuePersistance, "org/allbinary/game/configuration/persistance/KeyValuePersistance" unless const_defined?(:KeyValuePersistance, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Displayable; module Canvas; autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas" unless const_defined?(:AllBinaryGameCanvas, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Displayable; module Canvas; autoload :BasicPaintablesCanvas, "org/allbinary/game/displayable/canvas/BasicPaintablesCanvas" unless const_defined?(:BasicPaintablesCanvas, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Displayable; module Canvas; autoload :DemoCanvas, "org/allbinary/game/displayable/canvas/DemoCanvas" unless const_defined?(:DemoCanvas, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Displayable; module Canvas; autoload :GameCanvasRunnableInterface, "org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface" unless const_defined?(:GameCanvasRunnableInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Displayable; module Canvas; autoload :GameEventHandlerUtil, "org/allbinary/game/displayable/canvas/GameEventHandlerUtil" unless const_defined?(:GameEventHandlerUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Displayable; module Canvas; autoload :GameInputMappingCanvas, "org/allbinary/game/displayable/canvas/GameInputMappingCanvas" unless const_defined?(:GameInputMappingCanvas, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Displayable; module Canvas; autoload :GameInputMappingInstructionsCanvas, "org/allbinary/game/displayable/canvas/GameInputMappingInstructionsCanvas" unless const_defined?(:GameInputMappingInstructionsCanvas, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Displayable; module Canvas; autoload :MenuListener, "org/allbinary/game/displayable/canvas/MenuListener" unless const_defined?(:MenuListener, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Displayable; module Canvas; autoload :NullGameCanvasRunnable, "org/allbinary/game/displayable/canvas/NullGameCanvasRunnable" unless const_defined?(:NullGameCanvasRunnable, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :TextNotificationUtil, "org/allbinary/game/input/TextNotificationUtil" unless const_defined?(:TextNotificationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Hud; module Event; autoload :GameNotificationEventHandler, "org/allbinary/game/layer/hud/event/GameNotificationEventHandler" unless const_defined?(:GameNotificationEventHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Paint; module Help; autoload :HelpPaintable, "org/allbinary/game/paint/help/HelpPaintable" unless const_defined?(:HelpPaintable, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :HighScoreCommands, "org/allbinary/game/score/HighScoreCommands" unless const_defined?(:HighScoreCommands, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :HighScoreCommandsFactory, "org/allbinary/game/score/HighScoreCommandsFactory" unless const_defined?(:HighScoreCommandsFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; module Displayable; autoload :HighScoreTextBox, "org/allbinary/game/score/displayable/HighScoreTextBox" unless const_defined?(:HighScoreTextBox, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Score; module Displayable; autoload :HighScoreUtil, "org/allbinary/game/score/displayable/HighScoreUtil" unless const_defined?(:HighScoreUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Score; module Displayable; autoload :HighScoresCanvas, "org/allbinary/game/score/displayable/HighScoresCanvas" unless const_defined?(:HighScoresCanvas, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module State; autoload :GameStateFactory, "org/allbinary/game/state/GameStateFactory" unless const_defined?(:GameStateFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :ResizableListenerHandler, "org/allbinary/graphics/ResizableListenerHandler" unless const_defined?(:ResizableListenerHandler, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress; autoload :ProgressCanvas, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas" unless const_defined?(:ProgressCanvas, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress; autoload :ProgressCanvasFactory, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" unless const_defined?(:ProgressCanvasFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :ColorChangeEventHandler, "org/allbinary/graphics/color/ColorChangeEventHandler" unless const_defined?(:ColorChangeEventHandler, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :CanvasStrings, "org/allbinary/graphics/displayable/CanvasStrings" unless const_defined?(:CanvasStrings, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :MyCanvas, "org/allbinary/graphics/displayable/MyCanvas" unless const_defined?(:MyCanvas, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; module Command; autoload :MyCommandsFactory, "org/allbinary/graphics/displayable/command/MyCommandsFactory" unless const_defined?(:MyCommandsFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; module Screen; autoload :AboutCommandProcessor, "org/allbinary/graphics/displayable/screen/AboutCommandProcessor" unless const_defined?(:AboutCommandProcessor, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; module Screen; autoload :AboutPaintableFactory, "org/allbinary/graphics/displayable/screen/AboutPaintableFactory" unless const_defined?(:AboutPaintableFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; module Screen; autoload :CommandForm, "org/allbinary/graphics/displayable/screen/CommandForm" unless const_defined?(:CommandForm, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; module Screen; autoload :WebCommandProcessor, "org/allbinary/graphics/displayable/screen/WebCommandProcessor" unless const_defined?(:WebCommandProcessor, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; autoload :AllBinarySensorManager, "org/allbinary/input/AllBinarySensorManager" unless const_defined?(:AllBinarySensorManager, false); end; end; end
module ::Org; module Allbinary; module Input; module Event; autoload :VirtualKeyboardEventHandler, "org/allbinary/input/event/VirtualKeyboardEventHandler" unless const_defined?(:VirtualKeyboardEventHandler, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Observer; autoload :BasicMotionGesturesHandler, "org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler" unless const_defined?(:BasicMotionGesturesHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :ClientInformationFactory, "org/allbinary/logic/system/security/licensing/ClientInformationFactory" unless const_defined?(:ClientInformationFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :InApplicationPurchaseFactory, "org/allbinary/logic/system/security/licensing/InApplicationPurchaseFactory" unless const_defined?(:InApplicationPurchaseFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LockableFeature, "org/allbinary/logic/system/security/licensing/LockableFeature" unless const_defined?(:LockableFeature, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LockableFeatureFactory, "org/allbinary/logic/system/security/licensing/LockableFeatureFactory" unless const_defined?(:LockableFeatureFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings" unless const_defined?(:EventStrings, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :AllBinaryMediaManager, "org/allbinary/media/audio/AllBinaryMediaManager" unless const_defined?(:AllBinaryMediaManager, false); end; end; end; end
module ::Org; module Allbinary; module Midlet; autoload :MidletStrings, "org/allbinary/midlet/MidletStrings" unless const_defined?(:MidletStrings, false); end; end; end
module ::Org; module Allbinary; module ThreadPackage; autoload :NullThread, "org/allbinary/thread/NullThread" unless const_defined?(:NullThread, false); end; end; end
module ::Org; module Allbinary; module ThreadPackage; autoload :ThreadFactoryUtil, "org/allbinary/thread/ThreadFactoryUtil" unless const_defined?(:ThreadFactoryUtil, false); end; end; end
module ::Org; module Allbinary; module ThreadPackage; autoload :ThreadUtil, "org/allbinary/thread/ThreadUtil" unless const_defined?(:ThreadUtil, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :EnumerationUtil, "org/allbinary/util/EnumerationUtil" unless const_defined?(:EnumerationUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
autoload :DemoGameMidletEvent, "org/allbinary/game/midlet/DemoGameMidletEvent" unless const_defined?(:DemoGameMidletEvent, false)
autoload :DemoGameMidletStateFactory, "org/allbinary/game/midlet/DemoGameMidletStateFactory" unless const_defined?(:DemoGameMidletStateFactory, false)
autoload :GameMidletEventHandler, "org/allbinary/game/midlet/GameMidletEventHandler" unless const_defined?(:GameMidletEventHandler, false)
autoload :GameMidletStateFactory, "org/allbinary/game/midlet/GameMidletStateFactory" unless const_defined?(:GameMidletStateFactory, false)
require "java/lang/Thread"

end; end; end; end

