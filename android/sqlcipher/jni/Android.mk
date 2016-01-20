LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libcrypto
LOCAL_SRC_FILES := ../installed/$(TARGET_ARCH_ABI)/lib/libcrypto.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../installed/$(TARGET_ARCH_ABI)/include
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := libesqlite3
LOCAL_MODULE_FILENAME    := libesqlite3
LOCAL_STATIC_LIBRARIES := libcrypto
LOCAL_CFLAGS := -O -DSQLITE_HAS_CODEC -DNDEBUG -DSQLITE_DEFAULT_FOREIGN_KEYS=1 -DSQLITE_ENABLE_FTS3_PARENTHESIS -DSQLITE_ENABLE_FTS4 -DSQLITE_ENABLE_COLUMN_METADATA
LOCAL_SRC_FILES = ../../../sqlcipher/sqlite3.c

include $(BUILD_SHARED_LIBRARY)

