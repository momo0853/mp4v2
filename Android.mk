#----------------------------------------------------
# Author: momo0853@live.com
# Time  : 2016年 04月 20日 星期三 17:34:45 CST
#----------------------------------------------------
#
# This is an automatically generated file, in order to reduce repetitive work.
# Android.mk: For more details, please see "http://developer.android.com/ndk/guides/android_mk.html".
# Application.mk: For more details, please see "http://developer.android.com/ndk/guides/application_mk.html".
# Can identify the suffix for .c .cc .cpp and .a .so.


LOCAL_PATH := $(call my-dir)

libmp4v2_la_SOURCES := \
    src/3gp.cpp                          \
    src/atom_ac3.cpp                     \
    src/atom_amr.cpp                     \
    src/atom_avc1.cpp                    \
    src/atom_avcC.cpp                    \
    src/atom_chpl.cpp                    \
    src/atom_colr.cpp                    \
    src/atom_d263.cpp                    \
    src/atom_dac3.cpp                    \
    src/atom_damr.cpp                    \
    src/atom_dref.cpp                    \
    src/atom_elst.cpp                    \
    src/atom_enca.cpp                    \
    src/atom_encv.cpp                    \
    src/atom_free.cpp                    \
    src/atom_ftyp.cpp                    \
    src/atom_ftab.cpp                    \
    src/atom_gmin.cpp                    \
    src/atom_hdlr.cpp                    \
    src/atom_hinf.cpp                    \
    src/atom_hnti.cpp                    \
    src/atom_href.cpp                    \
    src/atom_mdat.cpp                    \
    src/atom_mdhd.cpp                    \
    src/atom_meta.cpp                    \
    src/atom_mp4s.cpp                    \
    src/atom_mp4v.cpp                    \
    src/atom_mvhd.cpp                    \
    src/atom_nmhd.cpp                    \
    src/atom_ohdr.cpp                    \
    src/atom_pasp.cpp                    \
    src/atom_root.cpp                    \
    src/atom_rtp.cpp                     \
    src/atom_s263.cpp                    \
    src/atom_sdp.cpp                     \
    src/atom_sdtp.cpp                    \
    src/atom_smi.cpp                     \
    src/atom_sound.cpp                   \
    src/atom_standard.cpp                \
    src/atom_stbl.cpp                    \
    src/atom_stdp.cpp                    \
    src/atom_stsc.cpp                    \
    src/atom_stsd.cpp                    \
    src/atom_stsz.cpp                    \
    src/atom_stz2.cpp                    \
    src/atom_text.cpp                    \
    src/atom_tfhd.cpp                    \
    src/atom_tkhd.cpp                    \
    src/atom_treftype.cpp                \
    src/atom_trun.cpp                    \
    src/atom_tx3g.cpp                    \
    src/atom_udta.cpp                    \
    src/atom_url.cpp                     \
    src/atom_urn.cpp                     \
    src/atom_uuid.cpp                    \
    src/atom_video.cpp                   \
    src/atom_vmhd.cpp                    \
    src/cmeta.cpp                        \
    src/descriptors.cpp                  \
    src/exception.cpp                    \
    src/enum.tcc                         \
    src/isma.cpp                         \
    src/log.cpp                          \
    src/mp4.cpp                          \
    src/mp4atom.cpp                      \
    src/mp4container.cpp                 \
    src/mp4descriptor.cpp                \
    src/mp4file.cpp                      \
    src/mp4file_io.cpp                   \
    src/mp4info.cpp                      \
    src/mp4property.cpp                  \
    src/mp4track.cpp                     \
    src/mp4util.cpp                      \
    src/ocidescriptors.cpp               \
    src/odcommands.cpp                   \
    src/qosqualifiers.cpp                \
	src/rtphint.cpp                      \
    src/text.cpp                         \

libmp4v2_la_SOURCES += \
    src/bmff/typebmff.cpp  \

libmp4v2_la_SOURCES += \
    src/itmf/CoverArtBox.cpp  \
    src/itmf/Tags.cpp         \
    src/itmf/generic.cpp      \
    src/itmf/type.cpp         \

libmp4v2_la_SOURCES += \
    src/qtff/ColorParameterBox.cpp      \
    src/qtff/PictureAspectRatioBox.cpp  \
    src/qtff/coding.cpp                 \

libmp4v2_la_SOURCES += \
    libplatform/io/File.cpp              \
    libplatform/io/FileSystem.cpp        \
    libplatform/prog/option.cpp          \
    libplatform/sys/error.cpp            \
    libplatform/time/time.cpp            \

libmp4v2_la_SOURCES += \
    libplatform/io/File_posix.cpp          \
    libplatform/io/FileSystem_posix.cpp    \
    libplatform/number/random_posix.cpp    \
    libplatform/process/process_posix.cpp  \
    libplatform/time/time_posix.cpp

libmp4v2_la_SOURCES += \
    libutil/Database.cpp       \
    libutil/Timecode.cpp       \
    libutil/TrackModifier.cpp  \
    libutil/Utility.cpp        \
    libutil/crc.cpp            \
    libutil/other.cpp          \


#---------- static module ----------#

include $(CLEAR_VARS)
LOCAL_MODULE     := mp4v2_static
LOCAL_ARM_MODULE := arm

LOCAL_CFLAGS := -fno-rtti -fexceptions
#LOCAL_EXPORT_CFLAGS := $(LOCAL_CFLAGS)
LOCAL_SRC_FILES := $(libmp4v2_la_SOURCES)

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/include \
	$(LOCAL_PATH)/vstudio9.0/include \
	$(LOCAL_PATH)/libutil \
	$(LOCAL_PATH)/libutil/include \
	$(LOCAL_PATH)/libplatform \
	$(LOCAL_PATH)/libplatform/include \
	$(LOCAL_PATH)
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES)

include $(BUILD_STATIC_LIBRARY)


#---------- binary module ----------#
#
#include $(CLEAR_VARS)
#LOCAL_MODULE     := provider
#LOCAL_ARM_MODULE := arm
#LOCAL_SRC_FILES  := example/provider/provider.c
#LOCAL_C_INCLUDES := $(LOCAL_PATH)
#LOCAL_STATIC_LIBRARIES := mp4v2_static
#include $(BUILD_EXECUTABLE)


#---------- binary module ----------#

include $(CLEAR_VARS)
LOCAL_MODULE     := mp4file
LOCAL_ARM_MODULE := arm
LOCAL_SRC_FILES  := util/mp4file.cpp
LOCAL_C_INCLUDES := $(LOCAL_PATH)
LOCAL_STATIC_LIBRARIES := mp4v2_static
include $(BUILD_EXECUTABLE)


#---------- binary module ----------#

include $(CLEAR_VARS)
LOCAL_MODULE     := mp4chaps
LOCAL_ARM_MODULE := arm
LOCAL_SRC_FILES  := util/mp4chaps.cpp
LOCAL_C_INCLUDES := $(LOCAL_PATH)
LOCAL_STATIC_LIBRARIES := mp4v2_static
include $(BUILD_EXECUTABLE)


#---------- binary module ----------#

include $(CLEAR_VARS)
LOCAL_MODULE     := mp4subtitle
LOCAL_ARM_MODULE := arm
LOCAL_SRC_FILES  := util/mp4subtitle.cpp
LOCAL_C_INCLUDES := $(LOCAL_PATH)
LOCAL_STATIC_LIBRARIES := mp4v2_static
include $(BUILD_EXECUTABLE)


#---------- binary module ----------#

include $(CLEAR_VARS)
LOCAL_MODULE     := mp4extract
LOCAL_ARM_MODULE := arm
LOCAL_SRC_FILES  := util/mp4extract.cpp
LOCAL_C_INCLUDES := $(LOCAL_PATH)
LOCAL_STATIC_LIBRARIES := mp4v2_static
include $(BUILD_EXECUTABLE)

#---------- binary module ----------#

include $(CLEAR_VARS)
LOCAL_MODULE     := mp4tags
LOCAL_ARM_MODULE := arm
LOCAL_SRC_FILES  := util/mp4tags.cpp
LOCAL_C_INCLUDES := $(LOCAL_PATH)
LOCAL_STATIC_LIBRARIES := mp4v2_static
include $(BUILD_EXECUTABLE)

#---------- binary module ----------#

include $(CLEAR_VARS)
LOCAL_MODULE     := mp4track
LOCAL_ARM_MODULE := arm
LOCAL_SRC_FILES  := util/mp4track.cpp
LOCAL_C_INCLUDES := $(LOCAL_PATH)
LOCAL_STATIC_LIBRARIES := mp4v2_static
include $(BUILD_EXECUTABLE)

#---------- binary module ----------#

include $(CLEAR_VARS)
LOCAL_MODULE     := mp4art
LOCAL_ARM_MODULE := arm
LOCAL_SRC_FILES  := util/mp4art.cpp
LOCAL_C_INCLUDES := $(LOCAL_PATH)
LOCAL_STATIC_LIBRARIES := mp4v2_static
include $(BUILD_EXECUTABLE)


#---------- binary module ----------#

include $(CLEAR_VARS)
LOCAL_MODULE     := mp4info
LOCAL_ARM_MODULE := arm
LOCAL_SRC_FILES  := util/mp4info.cpp
LOCAL_C_INCLUDES := $(LOCAL_PATH)
LOCAL_STATIC_LIBRARIES := mp4v2_static
include $(BUILD_EXECUTABLE)

#---------- binary module ----------#

include $(CLEAR_VARS)
LOCAL_MODULE     := mp4trackdump
LOCAL_ARM_MODULE := arm
LOCAL_SRC_FILES  := util/mp4trackdump.cpp
LOCAL_C_INCLUDES := $(LOCAL_PATH)
LOCAL_STATIC_LIBRARIES := mp4v2_static
include $(BUILD_EXECUTABLE)


