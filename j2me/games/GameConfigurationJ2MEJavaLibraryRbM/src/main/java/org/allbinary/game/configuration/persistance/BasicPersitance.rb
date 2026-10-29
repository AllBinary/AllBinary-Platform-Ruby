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

# require "javax/microedition/rms/RecordStore"

class BasicPersitance
    attr_accessor :logUtil, :commonStrings, :persistanceStrings, :platformRecordIdUtil, :recordId, :valueList, :idList

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @persistanceStrings = PersistanceStrings.getInstance()
        @platformRecordIdUtil = PlatformRecordIdUtil.getInstance()
        @recordId = nil
        @valueList = BasicArrayListD.new()
        @idList = BasicArrayListD.new()
    end
    

    def initialize(recordId)
        initialize_fields
        @recordId = recordId
    end
    

    # throws Exception
    def deleteRecoreStore(abeClientInformation)
        RecordStore.deleteRecordStore(self.getRecordId(abeClientInformation))
    end
    

    # throws Exception
    def deleteAll(abeClientInformation)
        size = @idList.size()
        (0...size).each do |index|
            integer = @idList.objectArray[index]
            self.delete(abeClientInformation, integer.to_i)
        end
        self.clear()
    end
    

    # throws Exception
    def delete(abeClientInformation, deleteId)
        recordStore = NullRecordStore::NULL_RECORD_STORE
        begin
            @logUtil.putF(StringMaker.new().append(@persistanceStrings.DELETING_WITH_ID).appendint(deleteId).to_s, self, @commonStrings.delete)
            recordStore = RecordStore.openRecordStore(self.getRecordId(abeClientInformation), true)
            recordStore.deleteRecord(deleteId)
        rescue StandardError => e
            raise e
        ensure
            if recordStore != nil
                PreLogUtil.put(@persistanceStrings.CLOSING_RECORDSTORE, self, @commonStrings.delete)
                recordStore.closeRecordStore()
            end
        end
    end
    

    def getRecordId(abeClientInformation)
        return @platformRecordIdUtil.getRecordId(abeClientInformation, @recordId)
    end
    

    def getList()
        return @valueList
    end
    

    def getIds()
        return @idList
    end
    

    def clear()
        @valueList.clear()
        @idList.clear()
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/persistance/PlatformRecordIdUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/game/configuration/persistance/NullRecordStore"
require "org/allbinary/game/configuration/persistance/PersistanceStrings"

