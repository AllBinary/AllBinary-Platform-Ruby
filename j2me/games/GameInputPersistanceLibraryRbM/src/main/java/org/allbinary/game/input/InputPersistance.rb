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
# package org.allbinary.game.input

# require "java/io/ByteArrayInputStream"
# require "java/io/ByteArrayOutputStream"
# require "java/io/DataInputStream"
# require "java/io/DataOutputStream"
# require "javax/microedition/rms/RecordEnumeration"
# require "javax/microedition/rms/RecordStore"
require "org/allbinary/game/configuration/persistance/BasicPersitance"

#GameInputPersistanceLibrary
class InputPersistance < BasicPersitance
    attr_accessor :tsUtil, :hashtableUtil

    def initialize_fields
        @tsUtil = TsUtil.getInstance()
        @hashtableUtil = HashtableUtil.getInstance()
    end
    

    def initialize(name)
        super(name)
        initialize_fields
    end
    

    # throws Exception
    def loadAll(abeClientInformation)
        recordStore = NullRecordStore::NULL_RECORD_STORE
        begin
            recordStore = RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
            recordEnum = recordStore.enumerateRecords(NullRecordFilter::NULL_RECORD_FILTER, NullRecordComparator::NULL_RECORD_COMPARATOR, true)
            gameActionInputId = 0
            inputId = 0
            gameActionInput = nil
            input = nil
            hashtable = nil
            gameKeyFactory = GameKeyMappingFactory.getInstance()
            stringBuffer = StringMaker.new()
            inputFactory = InputFactory.getInstance()
            smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
            stdUtil = StdUtil.getInstance()
            recordAsBytes = nil
            byteArrayInputStream = nil
            inputStream = nil
            while recordEnum.hasNextElement()
                id = recordEnum.nextRecordId()
                stringBuffer.delete(0, stringBuffer.length())
                @logUtil.putF(stringBuffer.append(@persistanceStrings.LOADING_ID).appendint(id).to_s, self, @persistanceStrings.LOAD_ALL)
                recordAsBytes = @tsUtil.getRecord(recordStore, id)
                if recordAsBytes != nil
                    byteArrayInputStream = ByteArrayInputStream.new(recordAsBytes)
                    inputStream = DataInputStream.new(byteArrayInputStream)
                    hashtable = stdUtil.createHashtable()
                    value = 0
                    while inputStream.available() > 0
                        gameActionInputIdAsString = inputStream.readUTF()
                        value = Integer(gameActionInputIdAsString)
                        gameActionInputId = value
                        inputStream.readUTF()
                        value = Integer(inputStream.readUTF())
                        inputId = value
                        gameActionInput = gameKeyFactory.getGameKey(gameActionInputId)
                        input = inputFactory.getInstanceById(inputId)
                        if input == inputFactory.NO_INPUT || gameActionInput == nil
                            stringBuffer.delete(0, stringBuffer.length())
                            if input == inputFactory.NO_INPUT
                                stringBuffer.append(@persistanceStrings.ERROR_LOADING_ID)
                                stringBuffer.appendlong(inputId)
                                stringBuffer.append(@persistanceStrings.GAME_ACTION_INPUT)
                                stringBuffer.appendlong(gameActionInputId)
                                PreLogUtil.put(stringBuffer.to_s, self, @persistanceStrings.LOAD_ALL)
                            end
                            if gameActionInput == nil
                                stringBuffer.delete(0, stringBuffer.length())
                                stringBuffer.append(@persistanceStrings.ERROR_LOADING)
                                stringBuffer.appendlong(gameActionInputId)
                                stringBuffer.append(@persistanceStrings.ID)
                                stringBuffer.appendlong(inputId)
                                PreLogUtil.put(stringBuffer.to_s, self, @persistanceStrings.LOAD_ALL)
                            end
                        else
                        end
                        hashtable.put(input, gameActionInput)
                    end
                    @valueList.add(hashtable)
                    @idList.add(smallIntegerSingletonFactory.getAt(id))
                else
                end
            end
        rescue StandardError => e
            raise e
        ensure
            if recordStore != nil
                PreLogUtil.put(@persistanceStrings.CLOSING_RECORDSTORE, self, @persistanceStrings.LOAD_ALL)
                recordStore.closeRecordStore()
            end
        end
    end
    

    # throws Exception
    def save(abeClientInformation, hashtable)
        recordStore = NullRecordStore::NULL_RECORD_STORE
        begin
            stringBuffer = StringMaker.new()
            PreLogUtil.put(stringBuffer.append(@persistanceStrings.SAVING).append(StringUtil.getInstance().toString(hashtable)).to_s, self, @commonStrings.SAVE)
            recordStore = RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
            byteArrayOutputStream = ByteArrayOutputStream.new()
            outputStream = DataOutputStream.new(byteArrayOutputStream)
            gameActionInput = nil
            list = nil
            input = nil
            savedGameBytes = nil
            commonSeps = CommonSeps.getInstance()
            smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
            inputObjectArray = @hashtableUtil.getKeysAsArray(hashtable)
            size = inputObjectArray.length
            (0...size).each do |index|
                gameActionInput = inputObjectArray[index]
                list = hashtable.get(inputObjectArray[index])
                (0...list.size()).each do |index2|
                    gameActionInputIdAsString = smallIntegerSingletonFactory.getAt(gameActionInput.getId()).to_s
                    outputStream.writeUTF(gameActionInputIdAsString)
                    outputStream.writeUTF(commonSeps.EQUALS)
                    input = list.objectArray[index2]
                    inputIdAsString = smallIntegerSingletonFactory.getAt(input.getId()).to_s
                    outputStream.writeUTF(inputIdAsString)
                end
            end
            savedGameBytes = byteArrayOutputStream.toByteArray()
            recordStore.addRecord(savedGameBytes, 0, savedGameBytes.length)
        rescue StandardError => e
            raise e
        ensure
            if recordStore != nil
                PreLogUtil.put(@persistanceStrings.CLOSING_RECORDSTORE, self, @commonStrings.SAVE)
                recordStore.closeRecordStore()
            end
        end
    end
end

require "org/allbinary/TsUtil"
require "org/allbinary/game/configuration/persistance/NullRecordComparator"
require "org/allbinary/game/configuration/persistance/NullRecordFilter"
require "org/allbinary/game/configuration/persistance/NullRecordStore"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/HashtableUtil"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/game/input/GameKeyMappingFactory"
require "org/allbinary/game/input/Input"
require "org/allbinary/game/input/InputFactory"

