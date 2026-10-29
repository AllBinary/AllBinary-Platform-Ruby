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

# require "javax/microedition/rms/RecordEnumeration"
# require "javax/microedition/rms/RecordStore"
require "org/allbinary/game/configuration/persistance/BasicPersitance"

#GameInputNoPersistanceLibrary
class InputPersistance < BasicPersitance
    attr_accessor :hashtableUtil

    def initialize_fields
        @hashtableUtil = HashtableUtil.getInstance()
    end
    

    def initialize(name)
        super(name)
        initialize_fields
    end
    

    # throws Exception
    def loadAll(abeClientInformation)
        recordStore = RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
        recordEnum = recordStore.enumerateRecords(NullRecordFilter::NULL_RECORD_FILTER, NullRecordComparator::NULL_RECORD_COMPARATOR, true)
        hashtable = nil
        stringBuffer = StringMaker.new()
        smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
        id = 0
        while recordEnum.hasNextElement()
            id = recordEnum.nextRecordId()
            stringBuffer.delete(0, stringBuffer.length())
            @logUtil.putF(stringBuffer.append(@persistanceStrings.LOADING_ID).appendint(id).to_s, self, @persistanceStrings.LOAD_ALL)
            hashtable = StdUtil.getInstance().createHashtable()
            @valueList.add(hashtable)
            @idList.add(smallIntegerSingletonFactory.getAt(id))
        end
        recordStore.closeRecordStore()
    end
    

    # throws Exception
    def save(abeClientInformation, hashtable)
        PreLogUtil.put(StringMaker.new().append(@persistanceStrings.NOT_SAVING).append(StringUtil.getInstance().toString(hashtable)).to_s, self, @commonStrings.SAVE)
        recordStore = RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
        gameActionInput = nil
        list = nil
        input = nil
        inputObjectArray = @hashtableUtil.getKeysAsArray(hashtable)
        size = inputObjectArray.length
        (0...size).each do |index|
            gameActionInput = inputObjectArray[index]
            list = hashtable.get(inputObjectArray[index])
            (0...list.size()).each do |index2|
                input = list.get(index2)
            end
        end
        recordStore.closeRecordStore()
    end
end

require "org/allbinary/game/configuration/persistance/NullRecordComparator"
require "org/allbinary/game/configuration/persistance/NullRecordFilter"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/HashtableUtil"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/game/input/Input"

