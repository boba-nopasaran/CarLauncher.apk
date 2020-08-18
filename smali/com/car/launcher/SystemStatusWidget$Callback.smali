.class public interface abstract Lcom/car/launcher/SystemStatusWidget$Callback;
.super Ljava/lang/Object;
.source "SystemStatusWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launcher/SystemStatusWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onBTStateChanged(ZLjava/lang/String;)V
.end method

.method public abstract onFMStateChanged(ZI)V
.end method

.method public abstract onSatellitesChanged(I)V
.end method
