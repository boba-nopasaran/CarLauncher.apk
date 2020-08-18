.class public Lcom/txznet/comm/T3/T/TJ;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/comm/T3/T/TJ$T;,
        Lcom/txznet/comm/T3/T/TJ$T3;
    }
.end annotation


# static fields
.field static T:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/txznet/comm/T3/T/TJ$T3;",
            ">;"
        }
    .end annotation
.end field

.field private static T2:Z

.field private static T3:Z

.field private static TN:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    new-instance v2, Lcom/txznet/comm/T3/T/TJ$1;

    invoke-direct {v2}, Lcom/txznet/comm/T3/T/TJ$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/Runnable;)V

    sput-boolean v3, Lcom/txznet/comm/T3/T/TJ;->T3:Z

    sput-boolean v3, Lcom/txznet/comm/T3/T/TJ;->T2:Z

    sput-boolean v3, Lcom/txznet/comm/T3/T/TJ;->TN:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/txznet/comm/T3/T/TJ;->T:Ljava/util/Set;

    new-instance v0, Lcom/txznet/comm/T3/T/TJ$5;

    invoke-direct {v0}, Lcom/txznet/comm/T3/T/TJ$5;-><init>()V

    invoke-static {v0}, Lcom/txznet/comm/T3/T/TJ;->T(Lcom/txznet/comm/T3/T/TJ$T;)V

    return-void
.end method

.method public static T(Lcom/txznet/comm/T3/T/TJ$T3;)V
    .locals 3

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    new-instance v1, Lcom/txznet/comm/T3/T/TJ$13;

    invoke-direct {v1, p0}, Lcom/txznet/comm/T3/T/TJ$13;-><init>(Lcom/txznet/comm/T3/T/TJ$T3;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public static T(Lcom/txznet/comm/T3/T/TJ$T;)V
    .locals 6

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/txznet/comm/T3/T/TJ$6;

    invoke-direct {v1}, Lcom/txznet/comm/T3/T/TJ$6;-><init>()V

    invoke-virtual {v1, p0}, Lcom/txznet/comm/T3/T2$T3;->T(Ljava/lang/Object;)Lcom/txznet/comm/T3/T2$T3;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/txznet/comm/T3/T/TJ$T;->T:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    const-string v2, "asr"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_1
    iget-object v2, p0, Lcom/txznet/comm/T3/T/TJ$T;->T3:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    const-string v2, "tts"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_2
    iget-object v2, p0, Lcom/txznet/comm/T3/T/TJ$T;->T2:Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    const-string v2, "call"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v2

    const-string v3, "com.txznet.txz"

    const-string v4, "comm.status.get"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static T()Z
    .locals 1

    sget-boolean v0, Lcom/txznet/comm/T3/T/TJ;->T3:Z

    return v0
.end method

.method static synthetic T(Z)Z
    .locals 0

    sput-boolean p0, Lcom/txznet/comm/T3/T/TJ;->T3:Z

    return p0
.end method

.method public static T(Ljava/lang/String;)[B
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "onBeginMusic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    new-instance v1, Lcom/txznet/comm/T3/T/TJ$2;

    invoke-direct {v1}, Lcom/txznet/comm/T3/T/TJ$2;-><init>()V

    invoke-virtual {v0, v1, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const-string v0, "onEndMusic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    new-instance v1, Lcom/txznet/comm/T3/T/TJ$3;

    invoke-direct {v1}, Lcom/txznet/comm/T3/T/TJ$3;-><init>()V

    invoke-virtual {v0, v1, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    goto :goto_0

    :cond_2
    const-string v0, "onBeginAsr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Lcom/txznet/comm/T3/T/TJ;->Ty(Z)Z

    goto :goto_0

    :cond_3
    const-string v0, "onBeepEnd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/txznet/comm/T3/T/TJ;->T3:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    new-instance v1, Lcom/txznet/comm/T3/T/TJ$4;

    invoke-direct {v1}, Lcom/txznet/comm/T3/T/TJ$4;-><init>()V

    invoke-virtual {v0, v1, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    goto :goto_0

    :cond_4
    const-string v0, "onEndAsr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v3}, Lcom/txznet/comm/T3/T/TJ;->Ty(Z)Z

    goto :goto_0

    :cond_5
    const-string v0, "onBeginTts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v1}, Lcom/txznet/comm/T3/T/TJ;->Tn(Z)Z

    goto :goto_0

    :cond_6
    const-string v0, "onEndTts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v3}, Lcom/txznet/comm/T3/T/TJ;->Tn(Z)Z

    goto :goto_0

    :cond_7
    const-string v0, "onBeginCall"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v1}, Lcom/txznet/comm/T3/T/TJ;->TG(Z)Z

    goto :goto_0

    :cond_8
    const-string v0, "onEndCall"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v3}, Lcom/txznet/comm/T3/T/TJ;->TG(Z)Z

    goto :goto_0
.end method

.method public static T2()Z
    .locals 1

    sget-boolean v0, Lcom/txznet/comm/T3/T/TJ;->TN:Z

    return v0
.end method

.method static synthetic T2(Z)Z
    .locals 0

    sput-boolean p0, Lcom/txznet/comm/T3/T/TJ;->TN:Z

    return p0
.end method

.method public static T3(Lcom/txznet/comm/T3/T/TJ$T3;)V
    .locals 3

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    new-instance v1, Lcom/txznet/comm/T3/T/TJ$14;

    invoke-direct {v1, p0}, Lcom/txznet/comm/T3/T/TJ$14;-><init>(Lcom/txznet/comm/T3/T/TJ$T3;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public static T3()Z
    .locals 1

    sget-boolean v0, Lcom/txznet/comm/T3/T/TJ;->T2:Z

    return v0
.end method

.method static synthetic T3(Z)Z
    .locals 0

    sput-boolean p0, Lcom/txznet/comm/T3/T/TJ;->T2:Z

    return p0
.end method

.method private static TG(Z)Z
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/txznet/comm/T3/T/TJ;->TN:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    sput-boolean p0, Lcom/txznet/comm/T3/T/TJ;->TN:Z

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    new-instance v1, Lcom/txznet/comm/T3/T/TJ$11;

    invoke-direct {v1}, Lcom/txznet/comm/T3/T/TJ$11;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    :cond_0
    :goto_0
    return p0

    :cond_1
    sget-boolean v0, Lcom/txznet/comm/T3/T/TJ;->TN:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-nez p0, :cond_0

    sput-boolean p0, Lcom/txznet/comm/T3/T/TJ;->TN:Z

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    new-instance v1, Lcom/txznet/comm/T3/T/TJ$12;

    invoke-direct {v1}, Lcom/txznet/comm/T3/T/TJ$12;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method

.method static synthetic TN(Z)Z
    .locals 1

    invoke-static {p0}, Lcom/txznet/comm/T3/T/TJ;->Ty(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic Te(Z)Z
    .locals 1

    invoke-static {p0}, Lcom/txznet/comm/T3/T/TJ;->Tn(Z)Z

    move-result v0

    return v0
.end method

.method private static Tn(Z)Z
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/txznet/comm/T3/T/TJ;->T2:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    sput-boolean p0, Lcom/txznet/comm/T3/T/TJ;->T2:Z

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    new-instance v1, Lcom/txznet/comm/T3/T/TJ$9;

    invoke-direct {v1}, Lcom/txznet/comm/T3/T/TJ$9;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    :cond_0
    :goto_0
    return p0

    :cond_1
    sget-boolean v0, Lcom/txznet/comm/T3/T/TJ;->T2:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-nez p0, :cond_0

    sput-boolean p0, Lcom/txznet/comm/T3/T/TJ;->T2:Z

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    new-instance v1, Lcom/txznet/comm/T3/T/TJ$10;

    invoke-direct {v1}, Lcom/txznet/comm/T3/T/TJ$10;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method

.method static synthetic Tw(Z)Z
    .locals 1

    invoke-static {p0}, Lcom/txznet/comm/T3/T/TJ;->TG(Z)Z

    move-result v0

    return v0
.end method

.method private static Ty(Z)Z
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/txznet/comm/T3/T/TJ;->T3:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    sput-boolean p0, Lcom/txznet/comm/T3/T/TJ;->T3:Z

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    new-instance v1, Lcom/txznet/comm/T3/T/TJ$7;

    invoke-direct {v1}, Lcom/txznet/comm/T3/T/TJ$7;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    :cond_0
    :goto_0
    return p0

    :cond_1
    sget-boolean v0, Lcom/txznet/comm/T3/T/TJ;->T3:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-nez p0, :cond_0

    sput-boolean p0, Lcom/txznet/comm/T3/T/TJ;->T3:Z

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    new-instance v1, Lcom/txznet/comm/T3/T/TJ$8;

    invoke-direct {v1}, Lcom/txznet/comm/T3/T/TJ$8;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method
