.class public interface abstract Lcom/android/nfc/DeviceHost$NfcProperty;
.super Ljava/lang/Object;
.source "DeviceHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/DeviceHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NfcProperty"
.end annotation


# static fields
.field public static final APPLY_TYPE_DEBUG_ROUTING:Ljava/lang/String; = "apply.debug.routing"

.field public static final APPLY_TYPE_P2P:Ljava/lang/String; = "apply.p2p"

.field public static final APPLY_TYPE_RF_NORMAL:Ljava/lang/String; = "apply.rf.normal"

.field public static final APPLY_TYPE_RF_POWERED:Ljava/lang/String; = "apply.rf.powered"

.field public static final APPLY_TYPE_RW_CE:Ljava/lang/String; = "apply.rw.ce"

.field public static final APPLY_TYPE_RW_CE_RF:Ljava/lang/String; = "apply.rw.ce.rf"

.field public static final NFC_SE_HOST:Ljava/lang/String; = "HOST"

.field public static final NFC_SE_ID_ESE_FN:I = 0x8

.field public static final NFC_SE_ID_HOST:I = 0x4

.field public static final NFC_SE_ID_NONE:I = 0x0

.field public static final NFC_SE_ID_SIM:I = 0x2

.field public static final NFC_SE_ID_SMX:I = 0x1

.field public static final NFC_SE_NONE:Ljava/lang/String; = ""

.field public static final NFC_SE_SIM:Ljava/lang/String; = "SIM"

.field public static final NFC_SE_SMX:Ljava/lang/String; = "SMX"

.field public static final PROPERTY_NFC_CE_AUTO_POLL_OFF_KEY:Ljava/lang/String; = "ce.auto.poll.off"

.field public static final PROPERTY_NFC_CE_OFF_KEY:Ljava/lang/String; = "ce.off"

.field public static final PROPERTY_NFC_CE_TYPE_A_WAIT_KEY:Ljava/lang/String; = "ce.type.a.wait"

.field public static final PROPERTY_NFC_CE_TYPE_B_WAIT_KEY:Ljava/lang/String; = "ce.type.b.wait"

.field public static final PROPERTY_NFC_CE_TYPE_F_WAIT_KEY:Ljava/lang/String; = "ce.type.f.wait"

.field public static final PROPERTY_NFC_CE_TYPE_KEY:Ljava/lang/String; = "ce.type"

.field public static final PROPERTY_NFC_EVT_AC_ENABLE_KEY:Ljava/lang/String; = "evt.ac.enable"

.field public static final PROPERTY_NFC_FELICA_CLT_ON_KEY:Ljava/lang/String; = "felica.clt.on"

.field public static final PROPERTY_NFC_HW_NAME:Ljava/lang/String; = "hw.name"

.field public static final PROPERTY_NFC_P2P_INITIATOR_KEY:Ljava/lang/String; = "p2p.initiator"

.field public static final PROPERTY_NFC_P2P_TARGET_KEY:Ljava/lang/String; = "p2p.target"

.field public static final PROPERTY_NFC_REGISTER_RW_MODE_ENABLED_KEY:Ljava/lang/String; = "config.register.rw.mode.enabled"

.field public static final PROPERTY_NFC_REG_PL_EMULATION_KEY:Ljava/lang/String; = "reg.pl.emulation"

.field public static final PROPERTY_NFC_RF_A_CM_5_0:Ljava/lang/String; = "rf.a.cm.5.0"

.field public static final PROPERTY_NFC_RF_A_CM_DPN:Ljava/lang/String; = "rf.a.cm.dpn"

.field public static final PROPERTY_NFC_RF_A_CM_SET:Ljava/lang/String; = "rf.a.cm.set"

.field public static final PROPERTY_NFC_RF_A_COL_KEY:Ljava/lang/String; = "rf.a.col"

.field public static final PROPERTY_NFC_RF_BA_A_KEY:Ljava/lang/String; = "rf.ba.a"

.field public static final PROPERTY_NFC_RF_BA_B_KEY:Ljava/lang/String; = "rf.ba.b"

.field public static final PROPERTY_NFC_RF_BA_F_KEY:Ljava/lang/String; = "rf.ba.f"

.field public static final PROPERTY_NFC_RF_B_CM_5_0:Ljava/lang/String; = "rf.b.cm.5.0"

.field public static final PROPERTY_NFC_RF_B_CM_DPN:Ljava/lang/String; = "rf.b.cm.dpn"

.field public static final PROPERTY_NFC_RF_B_CM_SET:Ljava/lang/String; = "rf.b.cm.set"

.field public static final PROPERTY_NFC_RF_B_COH_KEY:Ljava/lang/String; = "rf.b.coh"

.field public static final PROPERTY_NFC_RF_B_COL_KEY:Ljava/lang/String; = "rf.b.col"

.field public static final PROPERTY_NFC_RF_CARDET_DEN:Ljava/lang/String; = "rf.cardet.den"

.field public static final PROPERTY_NFC_RF_FADET_H_KEY:Ljava/lang/String; = "rf.fadet.h"

.field public static final PROPERTY_NFC_RF_FA_IA_KEY:Ljava/lang/String; = "rf.fa.ia"

.field public static final PROPERTY_NFC_RF_FA_IB_KEY:Ljava/lang/String; = "rf.fa.ib"

.field public static final PROPERTY_NFC_RF_FA_IF_KEY:Ljava/lang/String; = "rf.fa.if"

.field public static final PROPERTY_NFC_RF_F_CM_5_0:Ljava/lang/String; = "rf.f.cm.5.0"

.field public static final PROPERTY_NFC_RF_F_CM_DPN:Ljava/lang/String; = "rf.f.cm.dpn"

.field public static final PROPERTY_NFC_RF_F_CM_SET:Ljava/lang/String; = "rf.f.cm.set"

.field public static final PROPERTY_NFC_RF_LVTH_KEY:Ljava/lang/String; = "rf.lvth"

.field public static final PROPERTY_NFC_RF_NDET_H_KEY:Ljava/lang/String; = "rf.ndet.h"

.field public static final PROPERTY_NFC_RF_PRE_POWER_DOWN:Ljava/lang/String; = "rf.pre.power.down"

.field public static final PROPERTY_NFC_RW_GAP_TIME_TYPE_A_KEY:Ljava/lang/String; = "rw.gap.time.iso14443A"

.field public static final PROPERTY_NFC_RW_GAP_TIME_TYPE_B_KEY:Ljava/lang/String; = "rw.gap.time.iso14443B"

.field public static final PROPERTY_NFC_RW_GAP_TIME_TYPE_F212_KEY:Ljava/lang/String; = "rw.gap.time.felica212"

.field public static final PROPERTY_NFC_RW_GAP_TIME_TYPE_F424_KEY:Ljava/lang/String; = "rw.gap.time.felica424"

.field public static final PROPERTY_NFC_RW_TIME_TYPE_A_KEY:Ljava/lang/String; = "rw.time.iso14443A"

.field public static final PROPERTY_NFC_RW_TIME_TYPE_B_KEY:Ljava/lang/String; = "rw.time.iso14443B"

.field public static final PROPERTY_NFC_RW_TIME_TYPE_F212_KEY:Ljava/lang/String; = "rw.time.felica212"

.field public static final PROPERTY_NFC_RW_TIME_TYPE_F424_KEY:Ljava/lang/String; = "rw.time.felica424"

.field public static final PROPERTY_NFC_RW_TYPE_A_KEY:Ljava/lang/String; = "rw.iso14443A"

.field public static final PROPERTY_NFC_RW_TYPE_B_KEY:Ljava/lang/String; = "rw.iso14443B"

.field public static final PROPERTY_NFC_RW_TYPE_F212_KEY:Ljava/lang/String; = "rw.felica212"

.field public static final PROPERTY_NFC_RW_TYPE_F424_KEY:Ljava/lang/String; = "rw.felica424"

.field public static final PROPERTY_NFC_RW_TYPE_NFCIP_KEY:Ljava/lang/String; = "rw.nfcip"

.field public static final PROPERTY_NFC_RW_TYPE_NFCV_KEY:Ljava/lang/String; = "rw.iso15693"

.field public static final PROPERTY_NFC_SETTING_TEST_MODE_ENABLED_KEY:Ljava/lang/String; = "config.setting.test.mode.enabled"

.field public static final PROPERTY_NFC_SE_ACTIVE_KEY:Ljava/lang/String; = "se.active"

.field public static final PROPERTY_NFC_SE_SIM_ENABLE_KEY:Ljava/lang/String; = "se.sim.enable"

.field public static final PROPERTY_NFC_SE_SMX_ENABLE_KEY:Ljava/lang/String; = "se.smx.enable"

.field public static final PROPERTY_NFC_SE_SWITCH_KEY:Ljava/lang/String; = "se.switch"

.field public static final PROPERTY_NFC_SE_SWITCH_NONE_VALUE:Ljava/lang/String; = "se.switch.none"

.field public static final PROPERTY_NFC_SE_SWITCH_SIM_VALUE:Ljava/lang/String; = "se.switch.sim"

.field public static final PROPERTY_NFC_SE_SWITCH_SMX_VALUE:Ljava/lang/String; = "se.switch.smx"

.field public static final PROPERTY_NFC_SHUTDOWN_CHIP_KEY:Ljava/lang/String; = "shutdown.chip"

.field public static final PROPERTY_NFC_UPDATE_ENABLE_KEY:Ljava/lang/String; = "config.update.enable"

.field public static final TEST_TYPE_ANTENNA:Ljava/lang/String; = "test.antenna"

.field public static final TEST_TYPE_BASEBAND_ID:Ljava/lang/String; = "test.baseband.id"

.field public static final TEST_TYPE_KOTO:Ljava/lang/String; = "test.koto"

.field public static final TEST_TYPE_PIPE:Ljava/lang/String; = "test.pipe"

.field public static final TEST_TYPE_PRBS_A:Ljava/lang/String; = "test.prbs.a"

.field public static final TEST_TYPE_PRBS_B:Ljava/lang/String; = "test.prbs.b"

.field public static final TEST_TYPE_PRBS_F212:Ljava/lang/String; = "test.prbs.f212"

.field public static final TEST_TYPE_PRBS_F424:Ljava/lang/String; = "test.prbs.f424"

.field public static final TEST_TYPE_PRBS_NO_MODULATION:Ljava/lang/String; = "test.prbs.no.modulation"

.field public static final TEST_TYPE_PRBS_STOP:Ljava/lang/String; = "test.prbs.stop"

.field public static final TEST_TYPE_SWP:Ljava/lang/String; = "test.swp"


# virtual methods
.method public abstract applyProperty(Ljava/lang/String;)V
.end method

.method public abstract clearEepromData()Z
.end method

.method public abstract doGetSelectedUicc()I
.end method

.method public abstract doselectUicc(I)I
.end method

.method public abstract executeMasterReset()V
.end method

.method public abstract getNfcConfig()Lcom/sonymobile/nfc/INfcConfig$Stub;
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract readEepromDataByte(I)I
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract test(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract writeEepromDataByte(IB)Z
.end method
