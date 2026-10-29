# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.logic.communication.sql


class SqlTypeStrings
    attr_accessor :CHAR_COLUMN, :INT_COLUMN, :MAX_SIZE, :SIXTY_SIZE, :NOT_NULL, :ONE_SIZE, :TWO_SIZE, :THREE_SIZE, :SIX_SIZE, :ELEVEN_SIZE, :TWELVE_SIZE, :ONE_KB_CHAR_COLUMN, :MAX_CHAR_COLUMN, :MAX_CHAR_COLUMN_NOT_NULL, :SIXTY_CHAR_COLUMN_NOT_NULL, :ONE_CHAR_COLUMN_NOT_NULL, :SIX_CHAR_COLUMN_NOT_NULL, :TWELVE_CHAR_COLUMN_NOT_NULL, :TWO_INT_NOT_NULL, :THREE_INT_NOT_NULL, :FOUR_INT_NOT_NULL, :MAX_INT_NOT_NULL, :MAX_INT_UNSIGNED, :MAX_INT_UNSIGNED_NOT_NULL, :MAX_BIG_INT_NOT_NULL, :MAX_BIG_INT_UNSIGNED, :MAX_BIG_INT_UNSIGNED_NOT_NULL, :MAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL, :LONG_BLOB, :BLOB, :BLOB_NOT_NULL

    def initialize_fields
        @CHAR_COLUMN = "VARCHAR"
        @INT_COLUMN = "VARCHAR"
        @MAX_SIZE = "(255)"
        @SIXTY_SIZE = "(60)"
        @NOT_NULL = "NOT NULL"
        @ONE_SIZE = "(1)"
        @TWO_SIZE = "(2)"
        @THREE_SIZE = "(3)"
        @SIX_SIZE = "(6)"
        @ELEVEN_SIZE = "(11)"
        @TWELVE_SIZE = "(12)"
        @ONE_KB_CHAR_COLUMN = StringMaker.new().append(CommonSeps.getInstance().SPACE).append(@CHAR_COLUMN).append("(1024)").append(CommonSeps.getInstance().COMMA_SEP).to_s
        @MAX_CHAR_COLUMN = StringMaker.new().append(CommonSeps.getInstance().SPACE).append(@CHAR_COLUMN).append(@MAX_SIZE).append(CommonSeps.getInstance().COMMA_SEP).to_s
        @MAX_CHAR_COLUMN_NOT_NULL = StringMaker.new().append(CommonSeps.getInstance().SPACE).append(@CHAR_COLUMN).append(@MAX_SIZE).append(CommonSeps.getInstance().SPACE).append(@NOT_NULL).append(CommonSeps.getInstance().COMMA_SEP).to_s
        @SIXTY_CHAR_COLUMN_NOT_NULL = StringMaker.new().append(CommonSeps.getInstance().SPACE).append(@CHAR_COLUMN).append(@SIXTY_SIZE).append(@NOT_NULL).append(CommonSeps.getInstance().COMMA_SEP).to_s
        @ONE_CHAR_COLUMN_NOT_NULL = StringMaker.new().append(CommonSeps.getInstance().SPACE).append(@CHAR_COLUMN).append(@ONE_SIZE).append(@NOT_NULL).append(CommonSeps.getInstance().COMMA_SEP).to_s
        @SIX_CHAR_COLUMN_NOT_NULL = StringMaker.new().append(CommonSeps.getInstance().SPACE).append(@CHAR_COLUMN).append(@SIX_SIZE).append(@NOT_NULL).append(CommonSeps.getInstance().COMMA_SEP).to_s
        @TWELVE_CHAR_COLUMN_NOT_NULL = StringMaker.new().append(CommonSeps.getInstance().SPACE).append(@CHAR_COLUMN).append(@TWELVE_SIZE).append(@NOT_NULL).append(CommonSeps.getInstance().COMMA_SEP).to_s
        @TWO_INT_NOT_NULL = " INT(2) NOT NULL, "
        @THREE_INT_NOT_NULL = " INT(3) NOT NULL, "
        @FOUR_INT_NOT_NULL = " INT(4) NOT NULL, "
        @MAX_INT_NOT_NULL = " INT(11) NOT NULL, "
        @MAX_INT_UNSIGNED = " INT(11) UNSIGNED, "
        @MAX_INT_UNSIGNED_NOT_NULL = " INT(11) UNSIGNED NOT NULL, "
        @MAX_BIG_INT_NOT_NULL = " BIGINT(19) NOT NULL, "
        @MAX_BIG_INT_UNSIGNED = " BIGINT(19) UNSIGNED, "
        @MAX_BIG_INT_UNSIGNED_NOT_NULL = " BIGINT(19) UNSIGNED NOT NULL, "
        @MAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL = " BIGINT(19) UNSIGNED AUTO_INCREMENT NOT NULL,"
        @LONG_BLOB = " LONGBLOB, "
        @BLOB = " BLOB, "
        @BLOB_NOT_NULL = " BLOB NOT NULL, "
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return SqlTypeStrings.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"

class SqlTypeStrings
    @@instance = SqlTypeStrings.new()
end

