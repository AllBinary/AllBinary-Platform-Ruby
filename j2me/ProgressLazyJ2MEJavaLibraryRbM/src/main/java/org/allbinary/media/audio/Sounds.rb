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
# package org.allbinary.media.audio

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Media; module Audio

class Sounds
    attr_accessor :logUtil, :commonStrings, :soundStrings, :soundsFactoryInterface

    def jfields_org_allbinary_media_audio_Sounds
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @soundStrings = SoundStrings.getInstance()
        @soundsFactoryInterface = nil unless instance_variable_defined?(:@soundsFactoryInterface)
    end
    

    def initialize(soundsFactoryInterface)
        jfields_org_allbinary_media_audio_Sounds
        @soundsFactoryInterface = soundsFactoryInterface
    end
    

    # throws Exception
    def init()
        @logUtil.putF(@commonStrings.START, self, @commonStrings.INIT)
        commonLabels = ::Org::Allbinary::StringPackage::CommonLabels.getInstance()
        progressCanvas = ::Org::Allbinary::Graphics::Canvas::Transition::Progress::ProgressCanvasFactory.getInstance()
        @soundsFactoryInterface.init()
        soundInterfaceArray = @soundsFactoryInterface.getSoundInterfaceArray()
        smallIntegerSingletonFactory = ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance()
        indexInteger = nil
        indexString = nil
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        (0...soundInterfaceArray.length).each do |i|
            soundInterface = soundInterfaceArray[i]
            if soundInterface != nil
                indexInteger = smallIntegerSingletonFactory.getAt(i)
                indexString = indexInteger.to_s
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append(commonLabels.INDEX_LABEL)
                stringBuffer.append(indexString)
                stringBuffer.append(@soundStrings.SOUND)
                stringBuffer.append(soundInterface.class.java_name)
                @logUtil.putF(stringBuffer.to_s, self, @commonStrings.INIT)
                soundInterface.init()
                progressCanvas.addNormalPortion(100, ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@soundStrings.INIT_SOUND).append(indexString).to_s)
            end
        end
        @soundsFactoryInterface.setInitialized(true)
        @logUtil.putF(@commonStrings.END_, self, @commonStrings.INIT)
    end
    

    # throws Exception
    def stopAll()
        @logUtil.putF(@commonStrings.START, self, @soundStrings.STOP_ALL)
        soundInterfaceArray = @soundsFactoryInterface.getSoundInterfaceArray()
        progressCanvas = ::Org::Allbinary::Graphics::Canvas::Transition::Progress::ProgressCanvasFactory.getInstance()
        player = nil
        (0...soundInterfaceArray.length).each do |index|
            if soundInterfaceArray[index] != nil
                player = soundInterfaceArray[index].getPlayerP()
                if player != nil
                    player.stop()
                    progressCanvas.addPortion(100, @soundStrings.STOPPING_SOUND, index)
                end
            end
        end
    end
    

    # throws Exception
    def closeAll()
        @logUtil.putF(@commonStrings.START, self, @soundStrings.CLOSE_ALL)
        soundInterfaceArray = @soundsFactoryInterface.getSoundInterfaceArray()
        progressCanvas = ::Org::Allbinary::Graphics::Canvas::Transition::Progress::ProgressCanvasFactory.getInstance()
        player = nil
        (0...soundInterfaceArray.length).each do |index|
            if soundInterfaceArray[index] != nil
                player = soundInterfaceArray[index].getPlayerP()
                if player != nil
                    player.close()
                    progressCanvas.addPortion(100, @soundStrings.CLOSING_SOUND, index)
                end
            end
        end
    end
end

module ::Javax; module Microedition; module Media; autoload :Player, "javax/microedition/media/Player" unless const_defined?(:Player, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress; autoload :ProgressCanvas, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas" unless const_defined?(:ProgressCanvas, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress; autoload :ProgressCanvasFactory, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" unless const_defined?(:ProgressCanvasFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
autoload :Sound, "org/allbinary/media/audio/Sound" unless const_defined?(:Sound, false)
autoload :SoundStrings, "org/allbinary/media/audio/SoundStrings" unless const_defined?(:SoundStrings, false)
autoload :SoundsFactoryInterface, "org/allbinary/media/audio/SoundsFactoryInterface" unless const_defined?(:SoundsFactoryInterface, false)

end; end; end; end

