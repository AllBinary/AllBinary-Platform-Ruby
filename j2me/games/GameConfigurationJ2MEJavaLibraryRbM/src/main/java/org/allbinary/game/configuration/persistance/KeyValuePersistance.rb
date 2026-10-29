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
# package org.allbinary.game.configuration.persistance

# require "java/io/ByteArrayInputStream"
# require "java/io/ByteArrayOutputStream"
# require "java/io/DataInputStream"
# require "java/io/DataOutputStream"
# require "javax/microedition/rms/RecordEnumeration"
# require "javax/microedition/rms/RecordStore"
require "org/allbinary/game/configuration/persistance/BasicPersitance"

class KeyValuePersistance < BasicPersitance
    attr_accessor :tsUtil

    def initialize_fields
        @tsUtil = TsUtil.getInstance()
    end
    

    def initialize(recordId)
        super(recordId)
        initialize_fields
    end
    

    # throws Exception
    def loadAll(abeClientInformation)
        self.loadAllSize(abeClientInformation, 1)
    end
    

    # throws Exception
    def loadAllSize(abeClientInformation, size)
        recordStore = NullRecordStore::NULL_RECORD_STORE
        begin
            recordStore = RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
            recordEnum = recordStore.enumerateRecords(NullRecordFilter::NULL_RECORD_FILTER, NullRecordComparator::NULL_RECORD_COMPARATOR, true)
            hashtable = nil
            name = nil
            value = nil
            smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
            stringBuffer = StringMaker.new()
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
                    hashtable = ABHashtable.new()
                    (0...size).each do |index|
                        name = inputStream.readUTF()
                        inputStream.readUTF()
                        value = inputStream.readUTF()
                        hashtable.put(name, value)
                    end
                    @valueList.add(hashtable)
                    @idList.add(smallIntegerSingletonFactory.getAt(id))
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
            @logUtil.putF(StringMaker.new().append(@persistanceStrings.SAVING).append(StringUtil.getInstance().toString(hashtable)).to_s, self, @commonStrings.SAVE)
            recordStore = RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
            byteArrayOutputStream = ByteArrayOutputStream.new()
            outputStream = DataOutputStream.new(byteArrayOutputStream)
            value = nil
            commonSeps = CommonSeps.getInstance()
            objectArray = HashtableUtil.getInstance().getKeysAsArray(hashtable)
            anyType = nil
            size = objectArray.length
            (0...size).each do |index|
                outputStream.writeUTF(objectArray[index])
                outputStream.writeUTF(commonSeps.EQUALS)
                anyType = objectArray[index]
                value = hashtable.get(anyType)
                outputStream.writeUTF(value)
            end
            tsUtil = TsUtil.getInstance()
            savedGameBytes = tsUtil.getByteArray(byteArrayOutputStream.to_s)
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
    

    def get(index)
        hashtable = @valueList.objectArray[index]
        return hashtable
    end
end

require "org/allbinary/TsUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/HashtableUtil"
require "org/allbinary/game/configuration/persistance/NullRecordComparator"
require "org/allbinary/game/configuration/persistance/NullRecordFilter"
require "org/allbinary/game/configuration/persistance/NullRecordStore"

