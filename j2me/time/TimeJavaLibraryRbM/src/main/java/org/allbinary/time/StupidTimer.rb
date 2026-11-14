# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.time

require "java/lang/Object"

class StupidTimer
    attr_accessor :logUtil, :commonStrings, :nullUtil, :threadObjectUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @nullUtil = NullUtil.getInstance()
        @threadObjectUtil = ThreadObjectUtil.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def visitBool(visitorInterface)
        result = visitorInterface.visit(@nullUtil.NULL_OBJECT)
        result2 = result
        return result2
    end
    

    # throws Exception
    def visit(visitorInterface, timeDelayHelper)
        tookTooLong = false
        _WAITING_FOR = "Waiting for: "
        PreLogUtil.put(StringMaker.new().append(_WAITING_FOR).append(StringUtil.getInstance().toString(visitorInterface)).to_s, self, @commonStrings.VISIT)
        index = 0
        while self.visitBool(visitorInterface)
            if index % 10 == 0
                PreLogUtil.put(StringMaker.new().append(_WAITING_FOR).appendint(index).to_s, self, @commonStrings.VISIT)
            end
            index += 1
            (self).java_monitor.synchronize do
                @threadObjectUtil.waitObjectFor(self, 1800)
            end
            if timeDelayHelper.isTimeTNT()
                tookTooLong = true
                break
            end
        end
        if tookTooLong
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.VISIT, StandardError.new(StringMaker.new().append("Took Too Long: ").append(StringUtil.getInstance().toString(visitorInterface)).to_s))
        else
            PreLogUtil.put(timeDelayHelper.to_s, self, @commonStrings.VISIT)
        end
    end
    

    # throws Exception
    def stopWaiting()
        (self).java_monitor.synchronize do
            @threadObjectUtil.notifyObject(self)
        end
    end
end

autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :Visitor, "org/allbinary/logic/util/visitor/Visitor"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :ThreadObjectUtil, "org/allbinary/thread/ThreadObjectUtil"
autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper"

