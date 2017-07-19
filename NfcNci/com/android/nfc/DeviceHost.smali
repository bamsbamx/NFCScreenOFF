.class public interface abstract Lcom/android/nfc/DeviceHost;
.super Ljava/lang/Object;
.source "DeviceHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/DeviceHost$DeviceHostListener;,
        Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;,
        Lcom/android/nfc/DeviceHost$LlcpServerSocket;,
        Lcom/android/nfc/DeviceHost$LlcpSocket;,
        Lcom/android/nfc/DeviceHost$NfcDepEndpoint;,
        Lcom/android/nfc/DeviceHost$NfcProperty;,
        Lcom/android/nfc/DeviceHost$NfceeEndpoint;,
        Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;,
        Lcom/android/nfc/DeviceHost$TagEndpoint;
    }
.end annotation


# virtual methods
.method public abstract canMakeReadOnly(I)Z
.end method

.method public abstract changeDiscovery(IIIIZZZI)I
.end method

.method public abstract checkFirmware()V
.end method

.method public abstract clearProtoRouting(I)I
.end method

.method public abstract clearRouting()V
.end method

.method public abstract clearT3tIdentifiersCache()V
.end method

.method public abstract clearTechRouting(I)I
.end method

.method public abstract commitRouting()Z
.end method

.method public abstract createLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation
.end method

.method public abstract createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation
.end method

.method public abstract createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation
.end method

.method public abstract deinitialize()Z
.end method

.method public abstract deregisterT3tIdentifier([B)V
.end method

.method public abstract disableDiscovery()V
.end method

.method public abstract disableScreenOffSuspend()Z
.end method

.method public abstract doAbort()V
.end method

.method public abstract doActivateLlcp()Z
.end method

.method public abstract doCheckLlcp()Z
.end method

.method public abstract doDeselectSecureElement(I)V
.end method

.method public abstract doEnablep2p(Z)V
.end method

.method public abstract doGetActiveSecureElementList()[I
.end method

.method public abstract doGetLmrtStatus()[I
.end method

.method public abstract doSelectSecureElement(I)V
.end method

.method public abstract doSetProvisionMode(Z)V
.end method

.method public abstract doSetScreenState(I)V
.end method

.method public abstract dump()Ljava/lang/String;
.end method

.method public abstract enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V
.end method

.method public abstract enableScreenOffSuspend()Z
.end method

.method public abstract endDisable()V
.end method

.method public abstract getDefaultAidPowerState()I
.end method

.method public abstract getDefaultAidRoute()I
.end method

.method public abstract getDefaultDesfirePowerState()I
.end method

.method public abstract getDefaultDesfireRoute()I
.end method

.method public abstract getDefaultLlcpMiu()I
.end method

.method public abstract getDefaultLlcpRwSize()I
.end method

.method public abstract getDefaultMifareCLTPowerState()I
.end method

.method public abstract getDefaultMifareCLTRoute()I
.end method

.method public abstract getExtendedLengthApdusSupported()Z
.end method

.method public abstract getFwFileName()[B
.end method

.method public abstract getLfT3tMax()I
.end method

.method public abstract getMaxTransceiveLength(I)I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getTimeout(I)I
.end method

.method public abstract initialize()Z
.end method

.method public abstract isActivated()Z
.end method

.method public abstract isChipReady()Z
.end method

.method public abstract isRouteAidExtended()Z
.end method

.method public abstract onSimConfigurationUpdated()V
.end method

.method public abstract prepareEnable()V
.end method

.method public abstract registerT3tIdentifier([B)V
.end method

.method public abstract resetTimeouts()V
.end method

.method public abstract routeAid([BI)Z
.end method

.method public abstract routeAid([BIIZ)Z
.end method

.method public abstract sendRawFrame([B)Z
.end method

.method public abstract setDefaultRoute(III)Z
.end method

.method public abstract setP2pInitiatorModes(I)V
.end method

.method public abstract setP2pTargetModes(I)V
.end method

.method public abstract setProtoRouting(IIII)I
.end method

.method public abstract setTechRouting(IIII)I
.end method

.method public abstract setTimeout(II)Z
.end method

.method public abstract unrouteAid([B)Z
.end method
