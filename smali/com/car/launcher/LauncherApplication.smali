.class public Lcom/car/launcher/LauncherApplication;
.super Lcom/car/launchercommon/BaseApplication;
.source "LauncherApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LC.LauncherApplication"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/car/launchercommon/BaseApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    invoke-static {p0}, Lcom/car/launchercommon/CustomUI;->init(Landroid/content/Context;)V

    invoke-super {p0}, Lcom/car/launchercommon/BaseApplication;->onCreate()V

    return-void
.end method
