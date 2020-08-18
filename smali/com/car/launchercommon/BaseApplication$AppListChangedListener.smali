.class public interface abstract Lcom/car/launchercommon/BaseApplication$AppListChangedListener;
.super Ljava/lang/Object;
.source "BaseApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launchercommon/BaseApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppListChangedListener"
.end annotation


# virtual methods
.method public abstract appListUpdated(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/car/launchercommon/localapp/ApplicationInfo;",
            ">;)V"
        }
    .end annotation
.end method
