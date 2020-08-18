.class public Lcom/txznet/sdk/TXZMediaFocusManager;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static final INTENT_FOCUS_GAINED:Ljava/lang/String; = "com.txz.media.focus.gained"

.field public static final INTENT_FOCUS_RELEASED:Ljava/lang/String; = "com.txz.media.focus.released"

.field private static T3:Lcom/txznet/sdk/TXZMediaFocusManager;


# instance fields
.field T:Ljava/lang/Runnable;

.field private T2:Z

.field private TN:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/txznet/sdk/TXZMediaFocusManager;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZMediaFocusManager;-><init>()V

    sput-object v0, Lcom/txznet/sdk/TXZMediaFocusManager;->T3:Lcom/txznet/sdk/TXZMediaFocusManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZMediaFocusManager;->T2:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/txznet/sdk/TXZMediaFocusManager;->TN:J

    new-instance v0, Lcom/txznet/sdk/TXZMediaFocusManager$1;

    invoke-direct {v0, p0}, Lcom/txznet/sdk/TXZMediaFocusManager$1;-><init>(Lcom/txznet/sdk/TXZMediaFocusManager;)V

    iput-object v0, p0, Lcom/txznet/sdk/TXZMediaFocusManager;->T:Ljava/lang/Runnable;

    return-void
.end method

.method private T()V
    .locals 4

    const-string v2, "asd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "media focus changed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/txznet/sdk/TXZMediaFocusManager;->isFocusGained()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "true"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/txznet/sdk/TXZMediaFocusManager;->isFocusGained()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.txz.media.focus.gained"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v1, "false"

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.txz.media.focus.released"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic T(Lcom/txznet/sdk/TXZMediaFocusManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/txznet/sdk/TXZMediaFocusManager;->T()V

    return-void
.end method

.method static synthetic T(Lcom/txznet/sdk/TXZMediaFocusManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/txznet/sdk/TXZMediaFocusManager;->T2:Z

    return p1
.end method

.method public static getInstance()Lcom/txznet/sdk/TXZMediaFocusManager;
    .locals 1

    sget-object v0, Lcom/txznet/sdk/TXZMediaFocusManager;->T3:Lcom/txznet/sdk/TXZMediaFocusManager;

    return-object v0
.end method


# virtual methods
.method public isFocusGained()Z
    .locals 1

    iget-boolean v0, p0, Lcom/txznet/sdk/TXZMediaFocusManager;->T2:Z

    return v0
.end method

.method public releaseFocus()V
    .locals 1

    invoke-virtual {p0}, Lcom/txznet/sdk/TXZMediaFocusManager;->isFocusGained()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZMediaFocusManager;->T2:Z

    invoke-direct {p0}, Lcom/txznet/sdk/TXZMediaFocusManager;->T()V

    iget-object v0, p0, Lcom/txznet/sdk/TXZMediaFocusManager;->T:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/txznet/T/T;->T(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public requestFocus()V
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/txznet/sdk/TXZMediaFocusManager;->isFocusGained()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v1, p0, Lcom/txznet/sdk/TXZMediaFocusManager;->T2:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/txznet/sdk/TXZMediaFocusManager;->T()V

    :cond_0
    iget-object v1, p0, Lcom/txznet/sdk/TXZMediaFocusManager;->T:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/txznet/T/T;->T(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/txznet/sdk/TXZMediaFocusManager;->T:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-static {v1, v2, v3}, Lcom/txznet/T/T;->T(Ljava/lang/Runnable;J)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
