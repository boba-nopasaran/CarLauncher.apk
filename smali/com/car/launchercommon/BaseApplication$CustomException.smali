.class public Lcom/car/launchercommon/BaseApplication$CustomException;
.super Ljava/lang/Object;
.source "BaseApplication.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launchercommon/BaseApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomException"
.end annotation


# static fields
.field private static customException:Lcom/car/launchercommon/BaseApplication$CustomException;


# instance fields
.field private defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/car/launchercommon/BaseApplication$CustomException;
    .locals 1

    sget-object v0, Lcom/car/launchercommon/BaseApplication$CustomException;->customException:Lcom/car/launchercommon/BaseApplication$CustomException;

    if-nez v0, :cond_0

    new-instance v0, Lcom/car/launchercommon/BaseApplication$CustomException;

    invoke-direct {v0}, Lcom/car/launchercommon/BaseApplication$CustomException;-><init>()V

    sput-object v0, Lcom/car/launchercommon/BaseApplication$CustomException;->customException:Lcom/car/launchercommon/BaseApplication$CustomException;

    :cond_0
    sget-object v0, Lcom/car/launchercommon/BaseApplication$CustomException;->customException:Lcom/car/launchercommon/BaseApplication$CustomException;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/car/launchercommon/BaseApplication$CustomException;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/car/launchercommon/BaseApplication$CustomException;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcom/car/launchercommon/BaseApplication$CustomException;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    const-string v0, "LC.BaseApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception >>>>>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LC.BaseApplication"

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
