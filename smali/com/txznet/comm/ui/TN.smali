.class public Lcom/txznet/comm/ui/TN;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/comm/ui/TN$T;
    }
.end annotation


# static fields
.field protected static T:Landroid/os/HandlerThread;

.field private static T2:Lcom/txznet/comm/ui/TN;

.field protected static T3:Lcom/txznet/txz/util/Te;

.field private static TN:Lcom/txznet/txz/util/Te;


# instance fields
.field private Te:Lcom/txznet/comm/ui/TN$T;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/txznet/comm/ui/TN;

    invoke-direct {v0}, Lcom/txznet/comm/ui/TN;-><init>()V

    sput-object v0, Lcom/txznet/comm/ui/TN;->T2:Lcom/txznet/comm/ui/TN;

    new-instance v0, Lcom/txznet/txz/util/Te;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/txznet/txz/util/Te;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/txznet/comm/ui/TN;->TN:Lcom/txznet/txz/util/Te;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic T(Lcom/txznet/comm/ui/TN;)Lcom/txznet/comm/ui/TN$T;
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/TN;->Te:Lcom/txznet/comm/ui/TN$T;

    return-object v0
.end method

.method public static T()Lcom/txznet/comm/ui/TN;
    .locals 1

    sget-object v0, Lcom/txznet/comm/ui/TN;->T2:Lcom/txznet/comm/ui/TN;

    return-object v0
.end method

.method public static T(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/txznet/comm/ui/TN;->TN:Lcom/txznet/txz/util/Te;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/txznet/comm/ui/TN;->TN:Lcom/txznet/txz/util/Te;

    invoke-virtual {v0, p0}, Lcom/txznet/txz/util/Te;->T3(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static T(Ljava/lang/Runnable;I)V
    .locals 4

    if-lez p1, :cond_0

    sget-object v0, Lcom/txznet/comm/ui/TN;->TN:Lcom/txznet/txz/util/Te;

    int-to-long v2, p1

    invoke-virtual {v0, p0, v2, v3}, Lcom/txznet/txz/util/Te;->T(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/txznet/comm/ui/TN;->TN:Lcom/txznet/txz/util/Te;

    invoke-virtual {v0, p0}, Lcom/txznet/txz/util/Te;->T(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static T(Ljava/lang/Runnable;J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/txznet/comm/ui/TN;->T3:Lcom/txznet/txz/util/Te;

    invoke-virtual {v0, p0, p1, p2}, Lcom/txznet/txz/util/Te;->T(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/txznet/comm/ui/TN;->T3:Lcom/txznet/txz/util/Te;

    invoke-virtual {v0, p0}, Lcom/txznet/txz/util/Te;->T(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public T(Lcom/txznet/comm/ui/TN$T;)V
    .locals 2

    iput-object p1, p0, Lcom/txznet/comm/ui/TN;->Te:Lcom/txznet/comm/ui/TN$T;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UI2Back"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/txznet/comm/ui/TN;->T:Landroid/os/HandlerThread;

    sget-object v0, Lcom/txznet/comm/ui/TN;->T:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/txznet/txz/util/Te;

    sget-object v1, Lcom/txznet/comm/ui/TN;->T:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/txznet/txz/util/Te;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/txznet/comm/ui/TN;->T3:Lcom/txznet/txz/util/Te;

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/TN/T/T;->T(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/txznet/comm/ui/TN;->T3()V

    return-void
.end method

.method public T3()V
    .locals 3

    const-string v0, "#####UI2.0####### initNormal"

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v0

    new-instance v1, Lcom/txznet/comm/ui/TN$1;

    invoke-direct {v1, p0}, Lcom/txznet/comm/ui/TN$1;-><init>(Lcom/txznet/comm/ui/TN;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/ui/Ty/T;->T(Lcom/txznet/comm/ui/Ty/T$T;Z)V

    return-void
.end method

.method public T3(Lcom/txznet/comm/ui/TN$T;)V
    .locals 1

    const-string v0, "initBySDK"

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/txznet/comm/ui/TN;->T(Lcom/txznet/comm/ui/TN$T;)V

    return-void
.end method
