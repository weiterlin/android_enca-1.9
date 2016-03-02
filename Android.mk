LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libenca
LOCAL_CFLAGS := \
   -Wno-multichar \
   -D_ANDROID \
   -DLIBDIR="c" \
   -DBUILDING_LIBENCA \
   -DIN_LIBRARY
 

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/src/lib \
     
LOCAL_SRC_FILES := \
	src/enca.c \
   	lib/enca.c \
	lib/encnames.c \
	lib/ctype.c \
	lib/common.c \
	lib/guess.c \
	lib/pair.c \
	lib/lang.c \
	lib/lang_be.c \
	lib/lang_bg.c \
	lib/lang_cs.c \
	lib/lang_et.c \
	lib/lang_hr.c \
	lib/lang_hu.c \
	lib/lang_lt.c \
	lib/lang_lv.c \
	lib/lang_pl.c \
	lib/lang_ru.c \
	lib/lang_sk.c \
	lib/lang_sl.c \
	lib/lang_uk.c \
	lib/lang_zh.c \
	lib/utf8_double.c \
	lib/filters.c \
	lib/unicodemap.c \
	lib/multibyte.c \

include $(BUILD_STATIC_LIBRARY)
