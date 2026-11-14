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


class Sounds
    attr_accessor :logUtil, :commonStrings, :soundStrings, :soundsFactoryInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @soundStrings = SoundStrings.getInstance()
        @soundsFactoryInterface = nil
    end
    

    def initialize(soundsFactoryInterface)
        initialize_fields
        @soundsFactoryInterface = soundsFactoryInterface
    end
    

    # throws Exception
    def init()
        @logUtil.putF(@commonStrings.START, self, @commonStrings.INIT)
        commonLabels = CommonLabels.getInstance()
        progressCanvas = ProgressCanvasFactory.getInstance()
        @soundsFactoryInterface.init()
        soundInterfaceArray = @soundsFactoryInterface.getSoundInterfaceArray()
        smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
        indexInteger = nil
        indexString = nil
        stringBuffer = StringMaker.new()
        (0...soundInterfaceArray.length).each do |i|
            soundInterface = soundInterfaceArray[i]
            if soundInterface != nil
                indexInteger = smallIntegerSingletonFactory.getAt(i)
                indexString = indexInteger.to_s
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append(commonLabels.INDEX_LABEL)
                stringBuffer.append(indexString)
                stringBuffer.append(@soundStrings.SOUND)
                stringBuffer.append(soundInterface.class.name)
                @logUtil.putF(stringBuffer.to_s, self, @commonStrings.INIT)
                soundInterface.init()
                progressCanvas.addNormalPortion(100, StringMaker.new().append(@soundStrings.INIT_SOUND).append(indexString).to_s)
            end
        end
        @soundsFactoryInterface.setInitialized(true)
        @logUtil.putF(@commonStrings.END_, self, @commonStrings.INIT)
    end
    

    # throws Exception
    def stopAll()
        @logUtil.putF(@commonStrings.START, self, @soundStrings.STOP_ALL)
        soundInterfaceArray = @soundsFactoryInterface.getSoundInterfaceArray()
        progressCanvas = ProgressCanvasFactory.getInstance()
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
        progressCanvas = ProgressCanvasFactory.getInstance()
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

autoload :Player, "javax/microedition/media/Player"
autoload :ProgressCanvas, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas"
autoload :ProgressCanvasFactory, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :CommonLabels, "org/allbinary/string/CommonLabels"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :Sound, "org/allbinary/media/audio/Sound"
autoload :SoundStrings, "org/allbinary/media/audio/SoundStrings"
autoload :SoundsFactoryInterface, "org/allbinary/media/audio/SoundsFactoryInterface"

