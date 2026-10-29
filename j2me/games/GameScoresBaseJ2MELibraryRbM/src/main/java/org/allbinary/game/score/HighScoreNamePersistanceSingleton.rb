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
# package org.allbinary.game.score

# require "java/io/ByteArrayInputStream"
# require "java/io/ByteArrayOutputStream"
# require "java/io/DataInputStream"
# require "java/io/DataOutputStream"
# require "javax/microedition/rms/RecordEnumeration"
# require "javax/microedition/rms/RecordStore"
# require "javax/microedition/rms/RecordStoreException"

class HighScoreNamePersistanceSingleton
    attr_accessor :logUtil, :tsUtil, :commonStrings, :platformRecordIdUtil, :RECORD_ID, :name, :nameBasicArrayList

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @tsUtil = TsUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @platformRecordIdUtil = PlatformRecordIdUtil.getInstance()
        @RECORD_ID = "_SN"
        @name = StringUtil.getInstance().EMPTY_STRING
        @nameBasicArrayList = BasicArrayListD.new()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return HighScoreNamePersistanceSingleton::SINGLETON
    end
    

    def clear()
        @name = StringUtil.getInstance().EMPTY_STRING
    end
    

    # throws Exception
    def deleteAll(abeClientInformation, gameInfo)
        size = @nameBasicArrayList.size()
        (0...size).each do |index|
            integer = @nameBasicArrayList.objectArray[index]
            self.delete(abeClientInformation, gameInfo, integer.to_i)
        end
        self.clear()
    end
    

    def getRecordId(abeClientInformation)
        return @platformRecordIdUtil.getRecordId(abeClientInformation, @RECORD_ID)
    end
    

    # throws Exception
    def delete(abeClientInformation, gameInfo, deleteId)
        recordStore = NullRecordStore::NULL_RECORD_STORE
        begin
            @logUtil.putF(StringMaker.new().append("Deleting: ").appendint(deleteId).to_s, self, @commonStrings.delete)
            recordStore = RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
            recordStore.deleteRecord(deleteId)
        rescue StandardError => e
            raise e
        ensure
            if recordStore != nil
                PreLogUtil.put("Closing RecordStore", self, @commonStrings.delete)
                recordStore.closeRecordStore()
            end
        end
    end
    

    def getIds()
        return @nameBasicArrayList
    end
    

    def load(abeClientInformation, gameInfo)
        recordStore = NullRecordStore::NULL_RECORD_STORE
        begin
            if @name == StringUtil.getInstance().EMPTY_STRING
                _LOADING_ID = "Loading id: "
                recordStore = RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
                recordEnum = recordStore.enumerateRecords(NullRecordFilter::NULL_RECORD_FILTER, NullRecordComparator::NULL_RECORD_COMPARATOR, true)
                smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
                recordAsBytes = nil
                byteArrayInputStream = nil
                inputStream = nil
                while recordEnum.hasNextElement()
                    id = recordEnum.nextRecordId()
                    @logUtil.putF(StringMaker.new().append(_LOADING_ID).appendint(id).to_s, self, @commonStrings.LOAD)
                    recordAsBytes = @tsUtil.getRecord(recordStore, id)
                    byteArrayInputStream = ByteArrayInputStream.new(recordAsBytes)
                    inputStream = DataInputStream.new(byteArrayInputStream)
                    while inputStream.available() > 0
                        @name = inputStream.readUTF()
                    end
                    @nameBasicArrayList.add(smallIntegerSingletonFactory.getAt(id))
                end
            end
        rescue StandardError => e
            self.save(abeClientInformation, gameInfo, @name)
            @logUtil.putF(StringMaker.new().append(@commonStrings.EXCEPTION_LABEL).append(ExceptionUtil.getInstance().getStackTrace(e)).to_s, self, @commonStrings.LOAD)
        ensure
            begin
                if recordStore != nil
                    PreLogUtil.put("Closing RecordStore", self, @commonStrings.LOAD)
                    recordStore.closeRecordStore()
                end
            rescue RecordStoreException => e
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.LOAD, e)
            end
        end
        return @name
    end
    

    def save(abeClientInformation, gameInfo, name)
        recordStore = NullRecordStore::NULL_RECORD_STORE
        begin
            @logUtil.putF(StringMaker.new().append("Saving: ").append(name).to_s, self, @commonStrings.SAVE)
            recordStore = RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
            byteArrayOutputStream = ByteArrayOutputStream.new()
            outputStream = DataOutputStream.new(byteArrayOutputStream)
            outputStream.writeUTF(name)
            savedGameBytes = byteArrayOutputStream.toByteArray()
            recordStore.addRecord(savedGameBytes, 0, savedGameBytes.length)
            @name = name
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.SAVE, e)
        ensure
            begin
                if recordStore != nil
                    PreLogUtil.put("Closing RecordStore", self, @commonStrings.SAVE)
                    recordStore.closeRecordStore()
                end
            rescue RecordStoreException => e
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.SAVE, e)
            end
        end
    end
end

require "org/allbinary/TsUtil"
require "org/allbinary/game/GameInfo"
require "org/allbinary/game/configuration/persistance/NullRecordComparator"
require "org/allbinary/game/configuration/persistance/NullRecordFilter"
require "org/allbinary/game/configuration/persistance/NullRecordStore"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/java/exception/ExceptionUtil"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/persistance/PlatformRecordIdUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

class HighScoreNamePersistanceSingleton
    SINGLETON = HighScoreNamePersistanceSingleton.new()
end

