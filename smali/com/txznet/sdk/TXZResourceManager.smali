.class public Lcom/txznet/sdk/TXZResourceManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/TXZResourceManager$5;,
        Lcom/txznet/sdk/TXZResourceManager$AsrSence;,
        Lcom/txznet/sdk/TXZResourceManager$HelpWin;,
        Lcom/txznet/sdk/TXZResourceManager$RecordWin;
    }
.end annotation


# static fields
.field public static final STYLE_DEFAULT:Ljava/lang/String; = ""

.field public static final STYLE_KING:Ljava/lang/String; = "KING"

.field private static T2:Lcom/txznet/sdk/TXZResourceManager;


# instance fields
.field T:Ljava/lang/String;

.field T3:Z

.field private TN:Z

.field private Te:Lcom/txznet/sdk/TXZResourceManager$RecordWin;

.field private Tn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private Tw:Z

.field private Ty:Lcom/txznet/sdk/TXZResourceManager$HelpWin;

.field public mAllResourceData:Ljava/lang/String;

.field public mAllResourceFile:Ljava/lang/String;

.field public mUpdateResourceData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/txznet/sdk/TXZResourceManager;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZResourceManager;-><init>()V

    sput-object v0, Lcom/txznet/sdk/TXZResourceManager;->T2:Lcom/txznet/sdk/TXZResourceManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/txznet/sdk/TXZResourceManager;->T:Ljava/lang/String;

    iput-object v0, p0, Lcom/txznet/sdk/TXZResourceManager;->mAllResourceFile:Ljava/lang/String;

    iput-object v0, p0, Lcom/txznet/sdk/TXZResourceManager;->mAllResourceData:Ljava/lang/String;

    iput-object v0, p0, Lcom/txznet/sdk/TXZResourceManager;->mUpdateResourceData:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/txznet/sdk/TXZResourceManager;->TN:Z

    iput-object v0, p0, Lcom/txznet/sdk/TXZResourceManager;->Te:Lcom/txznet/sdk/TXZResourceManager$RecordWin;

    iput-boolean v1, p0, Lcom/txznet/sdk/TXZResourceManager;->Tw:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/txznet/sdk/TXZResourceManager;->Tn:Ljava/util/Map;

    return-void
.end method

.method static synthetic T(Lcom/txznet/sdk/TXZResourceManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/TXZResourceManager;->Tn:Ljava/util/Map;

    return-object v0
.end method

.method private T(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 7

    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lorg/json/JSONObject;

    if-eqz v6, :cond_4

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v6, v3, Lorg/json/JSONObject;

    if-nez v6, :cond_2

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    :goto_2
    check-cast v5, Lorg/json/JSONObject;

    invoke-direct {p0, v2, v5}, Lcom/txznet/sdk/TXZResourceManager;->T(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_0

    :cond_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public static getInstance()Lcom/txznet/sdk/TXZResourceManager;
    .locals 1

    sget-object v0, Lcom/txznet/sdk/TXZResourceManager;->T2:Lcom/txznet/sdk/TXZResourceManager;

    return-object v0
.end method


# virtual methods
.method T()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/txznet/sdk/TXZResourceManager;->T:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZResourceManager;->T:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZResourceManager;->setVoiceStyle(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/txznet/sdk/TXZResourceManager;->mAllResourceFile:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.resource.replaceResourceFile"

    iget-object v3, p0, Lcom/txznet/sdk/TXZResourceManager;->mAllResourceFile:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :cond_1
    iget-object v0, p0, Lcom/txznet/sdk/TXZResourceManager;->mAllResourceData:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.resource.replaceResource"

    iget-object v3, p0, Lcom/txznet/sdk/TXZResourceManager;->mAllResourceData:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :cond_2
    iget-object v0, p0, Lcom/txznet/sdk/TXZResourceManager;->mUpdateResourceData:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.resource.updateResource"

    iget-object v3, p0, Lcom/txznet/sdk/TXZResourceManager;->mUpdateResourceData:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :cond_3
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZResourceManager;->TN:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/txznet/sdk/TXZResourceManager;->Te:Lcom/txznet/sdk/TXZResourceManager$RecordWin;

    if-nez v0, :cond_6

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.record.win.clear"

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/txznet/sdk/TXZResourceManager;->Tw:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/txznet/sdk/TXZResourceManager;->Ty:Lcom/txznet/sdk/TXZResourceManager$HelpWin;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZResourceManager;->setHelpWin(Lcom/txznet/sdk/TXZResourceManager$HelpWin;)V

    :cond_5
    return-void

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHasSetHudRecordWin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/txznet/sdk/TXZResourceManager;->T3:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/txznet/sdk/TXZResourceManager;->T3:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.record.win.prepare.hud"

    const-string v3, "true"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :goto_1
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.record.win.prepare"

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.record.win.prepare.hud"

    const-string v3, "false"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_1
.end method

.method public cancelCloseRecordWin()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.record.win.cancelClose"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public dismissHelpWin()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.record.win.closeHelpWin"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public dissmissRecordWin()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.record.win.dissmiss"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public enterSpecifyAsrSence(Lcom/txznet/sdk/TXZResourceManager$AsrSence;)V
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Lcom/txznet/sdk/TXZResourceManager$5;->T3:[I

    invoke-virtual {p1}, Lcom/txznet/sdk/TXZResourceManager$AsrSence;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.record.win.enterSpecifyAsrSence"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadResourceData(Ljava/lang/String;Z)V
    .locals 7

    const/4 v6, 0x0

    if-eqz p2, :cond_0

    iput-object v6, p0, Lcom/txznet/sdk/TXZResourceManager;->mAllResourceFile:Ljava/lang/String;

    iput-object p1, p0, Lcom/txznet/sdk/TXZResourceManager;->mAllResourceData:Ljava/lang/String;

    iput-object v6, p0, Lcom/txznet/sdk/TXZResourceManager;->mUpdateResourceData:Ljava/lang/String;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v2

    const-string v3, "com.txznet.txz"

    const-string v4, "txz.resource.replaceResource"

    iget-object v5, p0, Lcom/txznet/sdk/TXZResourceManager;->mAllResourceData:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/txznet/comm/TN/T;

    iget-object v2, p0, Lcom/txznet/sdk/TXZResourceManager;->mUpdateResourceData:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/txznet/comm/TN/T;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0, p1}, Lcom/txznet/comm/TN/T;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/txznet/comm/TN/T;->T()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T()Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/txznet/sdk/TXZResourceManager;->T(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/txznet/sdk/TXZResourceManager;->mUpdateResourceData:Ljava/lang/String;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v2

    const-string v3, "com.txznet.txz"

    const-string v4, "txz.resource.updateResource"

    iget-object v5, p0, Lcom/txznet/sdk/TXZResourceManager;->mUpdateResourceData:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public loadResourceData(Lorg/json/JSONObject;Z)V
    .locals 1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/txznet/sdk/TXZResourceManager;->loadResourceData(Ljava/lang/String;Z)V

    return-void
.end method

.method public loadResourceFile(Ljava/lang/String;Z)V
    .locals 9

    const/4 v8, 0x0

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/txznet/sdk/TXZResourceManager;->mAllResourceFile:Ljava/lang/String;

    iput-object v8, p0, Lcom/txznet/sdk/TXZResourceManager;->mAllResourceData:Ljava/lang/String;

    iput-object v8, p0, Lcom/txznet/sdk/TXZResourceManager;->mUpdateResourceData:Ljava/lang/String;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v4

    const-string v5, "com.txznet.txz"

    const-string v6, "txz.resource.replaceResourceFile"

    iget-object v7, p0, Lcom/txznet/sdk/TXZResourceManager;->mAllResourceFile:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v0, v4, [B

    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v4, p2}, Lcom/txznet/sdk/TXZResourceManager;->loadResourceData(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPageInfoClick(II)V
    .locals 6

    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    const-string v1, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "clicktype"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.record.ui.event.display.page"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public setHelpWin(Lcom/txznet/sdk/TXZResourceManager$HelpWin;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZResourceManager;->Tw:Z

    iput-object p1, p0, Lcom/txznet/sdk/TXZResourceManager;->Ty:Lcom/txznet/sdk/TXZResourceManager$HelpWin;

    iget-object v0, p0, Lcom/txznet/sdk/TXZResourceManager;->Ty:Lcom/txznet/sdk/TXZResourceManager$HelpWin;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.help.win.clear"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "help.win."

    new-instance v1, Lcom/txznet/sdk/TXZResourceManager$3;

    invoke-direct {v1, p0, p1}, Lcom/txznet/sdk/TXZResourceManager$3;-><init>(Lcom/txznet/sdk/TXZResourceManager;Lcom/txznet/sdk/TXZResourceManager$HelpWin;)V

    invoke-static {v0, v1}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.help.win.set"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public setHudRecordWin(Lcom/txznet/sdk/TXZResourceManager$RecordWin;)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZResourceManager;->TN:Z

    iput-object p1, p0, Lcom/txznet/sdk/TXZResourceManager;->Te:Lcom/txznet/sdk/TXZResourceManager$RecordWin;

    invoke-virtual {p0, p1}, Lcom/txznet/sdk/TXZResourceManager;->setRecordWin(Lcom/txznet/sdk/TXZResourceManager$RecordWin;)V

    iput-boolean v0, p0, Lcom/txznet/sdk/TXZResourceManager;->T3:Z

    const-string v0, "txz.record.win.prepare.hud.true"

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.record.win.prepare.hud"

    const-string v3, "true"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public setRecordWin(Lcom/txznet/sdk/TXZResourceManager$RecordWin;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/txznet/sdk/TXZResourceManager;->setRecordWin(Lcom/txznet/sdk/TXZResourceManager$RecordWin;Z)V

    return-void
.end method

.method public setRecordWin(Lcom/txznet/sdk/TXZResourceManager$RecordWin;Z)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/txznet/sdk/TXZResourceManager;->TN:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/txznet/sdk/TXZResourceManager;->T3:Z

    iput-object p1, p0, Lcom/txznet/sdk/TXZResourceManager;->Te:Lcom/txznet/sdk/TXZResourceManager$RecordWin;

    iget-object v1, p0, Lcom/txznet/sdk/TXZResourceManager;->Te:Lcom/txznet/sdk/TXZResourceManager$RecordWin;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.record.win.clear"

    invoke-virtual {v1, v2, v3, v5, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/txznet/sdk/TXZResourceManager$1;

    invoke-direct {v1, p0}, Lcom/txznet/sdk/TXZResourceManager$1;-><init>(Lcom/txznet/sdk/TXZResourceManager;)V

    invoke-interface {p1, v1}, Lcom/txznet/sdk/TXZResourceManager$RecordWin;->setOperateListener(Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener;)V

    const-string v1, "win.record."

    new-instance v2, Lcom/txznet/sdk/TXZResourceManager$2;

    invoke-direct {v2, p0, p1}, Lcom/txznet/sdk/TXZResourceManager$2;-><init>(Lcom/txznet/sdk/TXZResourceManager;Lcom/txznet/sdk/TXZResourceManager$RecordWin;)V

    invoke-static {v1, v2}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    const-string v1, "reserveInner"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.record.win.prepare"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    const-string v1, "txz.record.win.prepare.hud.false"

    invoke-static {v1}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.record.win.prepare.hud"

    const-string v4, "false"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public setTextResourceString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/txznet/sdk/TXZResourceManager;->loadResourceData(Ljava/lang/String;Z)V

    return-void
.end method

.method public setTextResourceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/txznet/sdk/TXZResourceManager;->loadResourceData(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setTextResourceString(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    invoke-virtual {v0, p2, p3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/txznet/sdk/TXZResourceManager;->loadResourceData(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public setTextResourceString(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/txznet/sdk/TXZResourceManager;->loadResourceData(Ljava/lang/String;Z)V

    return-void
.end method

.method public setVoiceStyle(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.resource.setStyle"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public showSysText(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.record.win.showSysText"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public speakTextOnRecordWin(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/txznet/sdk/TXZResourceManager;->Tn:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sdk.record.win.speakTextOnRecordWin.end"

    new-instance v4, Lcom/txznet/sdk/TXZResourceManager$4;

    invoke-direct {v4, p0, p4}, Lcom/txznet/sdk/TXZResourceManager$4;-><init>(Lcom/txznet/sdk/TXZResourceManager;Ljava/lang/Runnable;)V

    invoke-static {v1, v4}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    const-string v1, "text"

    invoke-virtual {v0, v1, p2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "close"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "resId"

    invoke-virtual {v0, v1, p1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "taskId"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v4, "com.txznet.txz"

    const-string v5, "txz.record.win.speakTextOnRecordWin"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    return-void
.end method
