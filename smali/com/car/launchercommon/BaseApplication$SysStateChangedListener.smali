.class public interface abstract Lcom/car/launchercommon/BaseApplication$SysStateChangedListener;
.super Ljava/lang/Object;
.source "BaseApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launchercommon/BaseApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SysStateChangedListener"
.end annotation


# virtual methods
.method public abstract btStateChanged(ZLjava/lang/String;I)V
.end method

.method public abstract fmStateChanged(ZI)V
.end method

.method public abstract gpsStatChanged(Z)V
.end method

.method public abstract musicMuteStatChanged(Z)V
.end method

.method public abstract satellitesChanged(I)V
.end method

.method public abstract wifiStateChanged(ZLjava/lang/String;I)V
.end method
