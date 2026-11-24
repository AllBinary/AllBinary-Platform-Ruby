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
# package tags

require "java/lang/JavaOverload"
require "tags/CustomTagSupport"

module ::Tags

class CommandTag < CustomTagSupport
    attr_accessor :tagStrings, :command

    def jfields_tags_CommandTag
        @tagStrings = TagStrings.getInstance()
        @command = nil unless instance_variable_defined?(:@command)
    end
    

    def initialize()
        super()
        jfields_tags_CommandTag
    end
    

    def setCommand(command)
        @command = command
    end
    java_overload :setCommand, 1
    

    def getCommand()
        return @command
    end
    java_overload :getCommand, 0
end

autoload :TagStrings, "tags/TagStrings" unless const_defined?(:TagStrings, false)

end

