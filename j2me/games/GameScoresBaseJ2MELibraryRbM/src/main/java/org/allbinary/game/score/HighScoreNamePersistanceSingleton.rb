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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, HighScoreNamePersistanceSingleton.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "HighScoreNamePersistanceSingleton"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

autoload :ByteArrayInputStream, "java/io/ByteArrayInputStream"
autoload :ByteArrayOutputStream, "java/io/ByteArrayOutputStream"
autoload :DataInputStream, "java/io/DataInputStream"
autoload :DataOutputStream, "java/io/DataOutputStream"
autoload :RecordEnumeration, "javax/microedition/rms/RecordEnumeration"
autoload :RecordStore, "javax/microedition/rms/RecordStore"
autoload :RecordStoreException, "javax/microedition/rms/RecordStoreException"
autoload :TsUtil, "org/allbinary/TsUtil"
autoload :GameInfo, "org/allbinary/game/GameInfo"
autoload :NullRecordComparator, "org/allbinary/game/configuration/persistance/NullRecordComparator"
autoload :NullRecordFilter, "org/allbinary/game/configuration/persistance/NullRecordFilter"
autoload :NullRecordStore, "org/allbinary/game/configuration/persistance/NullRecordStore"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil"
autoload :ExceptionUtil, "org/allbinary/logic/java/exception/ExceptionUtil"
autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :PlatformRecordIdUtil, "org/allbinary/persistance/PlatformRecordIdUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"

begin
    HighScoreNamePersistanceSingleton.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

