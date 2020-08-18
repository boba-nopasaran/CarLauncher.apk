.class public Lcom/txznet/sdk/TXZConfigManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/TXZConfigManager$UserKeywordsCallback;,
        Lcom/txznet/sdk/TXZConfigManager$T;,
        Lcom/txznet/sdk/TXZConfigManager$UserConfigListener;,
        Lcom/txznet/sdk/TXZConfigManager$UIConfigListener;,
        Lcom/txznet/sdk/TXZConfigManager$ConnectListener;,
        Lcom/txznet/sdk/TXZConfigManager$ActiveListener;,
        Lcom/txznet/sdk/TXZConfigManager$InitListener;,
        Lcom/txznet/sdk/TXZConfigManager$InitParam;,
        Lcom/txznet/sdk/TXZConfigManager$InterruptMode;,
        Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;,
        Lcom/txznet/sdk/TXZConfigManager$FloatToolType;,
        Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;,
        Lcom/txznet/sdk/TXZConfigManager$AsrMode;,
        Lcom/txznet/sdk/TXZConfigManager$AsrEngineType;,
        Lcom/txznet/sdk/TXZConfigManager$TtsEngineType;
    }
.end annotation


# static fields
.field public static final AEC_TYPE_MONO_BY_INNER:I = 0x4

.field public static final AEC_TYPE_MONO_COMPARE_WITH_UDP:I = 0x2

.field public static final AEC_TYPE_NONE:I = 0x0

.field public static final AEC_TYPE_STERO_COMPARE_WITH_LEFT:I = 0x3

.field public static final AEC_TYPE_STERO_COMPARE_WITH_RIGHT:I = 0x1

.field public static final EXT_AUDIOSOURCE_TYPE_MSD:I = 0x0

.field public static final EXT_AUDIOSOURCE_TYPE_TXZ:I = 0x1

.field public static final FME_DELAY:Ljava/lang/String; = "FMEDelay"

.field public static final FME_ENABLE:Ljava/lang/String; = "FMEEnable"

.field public static final FT_POSITION_BOTTOM:I = -0x3

.field public static final FT_POSITION_LEFT:I = -0x1

.field public static final FT_POSITION_MIDDLE:I = -0x2

.field public static final FT_POSITION_RIGHT:I = -0x3

.field public static final FT_POSITION_TOP:I = -0x1

.field public static final HAS_REF:Ljava/lang/String; = "HasRefSignal"

.field public static final INIT_ERROR_ASR:I = 0x2711

.field public static final INIT_ERROR_TTS:I = 0x2712

.field public static final INIT_ERROR_WAKEUP:I = 0x2713

.field public static final MAX_WAKEUP_KEYWORDS_COUNT:I = 0xa

.field private static TH:Lcom/txznet/sdk/TXZConfigManager; = null

.field public static final VERSION:Ljava/lang/String; = "20170427173905_29342"


# instance fields
.field T:Lcom/txznet/sdk/TXZConfigManager$ConnectListener;

.field private T0:Lcom/txznet/comm/T3/T2$T;

.field private T1:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field T2:Z

.field T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

.field private T5:Lcom/txznet/sdk/TXZService$T;

.field T7:I

.field TB:J

.field private TF:Z

.field TG:Ljava/lang/Boolean;

.field TJ:[Ljava/lang/Object;

.field TL:Ljava/lang/Boolean;

.field TN:Ljava/lang/Runnable;

.field TO:Ljava/lang/Integer;

.field TP:J

.field TQ:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field TR:Ljava/lang/String;

.field TW:[Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

.field private Tc:Lcom/txznet/sdk/TXZConfigManager$InitListener;

.field Te:Ljava/lang/Boolean;

.field private Tf:Lcom/txznet/sdk/TXZConfigManager$UIConfigListener;

.field private Tk:Lcom/txznet/sdk/TXZConfigManager$ActiveListener;

.field Tn:Lcom/txznet/sdk/TXZConfigManager$T;

.field To:Ljava/lang/Integer;

.field Tr:J

.field private Tt:Ljava/lang/Boolean;

.field private Tu:Ljava/lang/Runnable;

.field Tw:Ljava/lang/Boolean;

.field Ty:Ljava/lang/Boolean;

.field public mHideSettingOptions:Ljava/lang/Integer;

.field public mSettingWkWordsEditable:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/txznet/sdk/TXZConfigManager;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZConfigManager;-><init>()V

    sput-object v0, Lcom/txznet/sdk/TXZConfigManager;->TH:Lcom/txznet/sdk/TXZConfigManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/txznet/sdk/TXZConfigManager;->T:Lcom/txznet/sdk/TXZConfigManager$ConnectListener;

    new-instance v0, Lcom/txznet/sdk/TXZConfigManager$1;

    invoke-direct {v0, p0}, Lcom/txznet/sdk/TXZConfigManager$1;-><init>(Lcom/txznet/sdk/TXZConfigManager;)V

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->T0:Lcom/txznet/comm/T3/T2$T;

    iput-boolean v1, p0, Lcom/txznet/sdk/TXZConfigManager;->TF:Z

    iput-object v2, p0, Lcom/txznet/sdk/TXZConfigManager;->Tt:Ljava/lang/Boolean;

    iput-boolean v1, p0, Lcom/txznet/sdk/TXZConfigManager;->T2:Z

    new-instance v0, Lcom/txznet/sdk/TXZConfigManager$3;

    invoke-direct {v0, p0}, Lcom/txznet/sdk/TXZConfigManager$3;-><init>(Lcom/txznet/sdk/TXZConfigManager;)V

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TN:Ljava/lang/Runnable;

    new-instance v0, Lcom/txznet/sdk/TXZConfigManager$4;

    invoke-direct {v0, p0}, Lcom/txznet/sdk/TXZConfigManager$4;-><init>(Lcom/txznet/sdk/TXZConfigManager;)V

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->T5:Lcom/txznet/sdk/TXZService$T;

    new-instance v0, Lcom/txznet/sdk/TXZConfigManager$5;

    invoke-direct {v0, p0}, Lcom/txznet/sdk/TXZConfigManager$5;-><init>(Lcom/txznet/sdk/TXZConfigManager;)V

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Tu:Ljava/lang/Runnable;

    iput-object v2, p0, Lcom/txznet/sdk/TXZConfigManager;->Te:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/txznet/sdk/TXZConfigManager;->Tw:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/txznet/sdk/TXZConfigManager;->Ty:Ljava/lang/Boolean;

    new-instance v0, Lcom/txznet/sdk/TXZConfigManager$T;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZConfigManager$T;-><init>()V

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Tn:Lcom/txznet/sdk/TXZConfigManager$T;

    iput-object v2, p0, Lcom/txznet/sdk/TXZConfigManager;->TG:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->T1:Ljava/util/Map;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TP:J

    iput-object v2, p0, Lcom/txznet/sdk/TXZConfigManager;->TO:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/txznet/sdk/TXZConfigManager;->To:Ljava/lang/Integer;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TQ:Ljava/util/Set;

    iput-object v2, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/txznet/sdk/TXZConfigManager;->mSettingWkWordsEditable:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/txznet/sdk/TXZConfigManager;->TL:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic T(Lcom/txznet/sdk/TXZConfigManager;)Lcom/txznet/sdk/TXZConfigManager$ActiveListener;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Tk:Lcom/txznet/sdk/TXZConfigManager$ActiveListener;

    return-object v0
.end method

.method static synthetic T(Lcom/txznet/sdk/TXZConfigManager;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/TXZConfigManager;->Tt:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic T(Lcom/txznet/sdk/TXZConfigManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/txznet/sdk/TXZConfigManager;->TF:Z

    return p1
.end method

.method static synthetic T2(Lcom/txznet/sdk/TXZConfigManager;)Lcom/txznet/sdk/TXZService$T;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->T5:Lcom/txznet/sdk/TXZService$T;

    return-object v0
.end method

.method static synthetic T3(Lcom/txznet/sdk/TXZConfigManager;)Lcom/txznet/sdk/TXZConfigManager$InitListener;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Tc:Lcom/txznet/sdk/TXZConfigManager$InitListener;

    return-object v0
.end method

.method public static getInstance()Lcom/txznet/sdk/TXZConfigManager;
    .locals 1

    sget-object v0, Lcom/txznet/sdk/TXZConfigManager;->TH:Lcom/txznet/sdk/TXZConfigManager;

    return-object v0
.end method


# virtual methods
.method T()V
    .locals 11

    const-wide/16 v2, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Tt:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Tt:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Ty:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Ty:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZConfigManager;->enableWakeup(Z)V

    :cond_2
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TG:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZConfigManager;->enableChangeWakeupKeywords(Z)V

    :cond_3
    iget-wide v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TB:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TB:J

    invoke-virtual {p0, v0, v1}, Lcom/txznet/sdk/TXZConfigManager;->setPoiSearchActivityFinishDelay(J)V

    :cond_4
    iget-wide v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TP:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5

    iget-wide v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TP:J

    invoke-virtual {p0, v0, v1}, Lcom/txznet/sdk/TXZConfigManager;->setPoiSearchActivityStartNavFinishDelay(J)V

    :cond_5
    iget-wide v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Tr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Tr:J

    invoke-virtual {p0, v0, v1}, Lcom/txznet/sdk/TXZConfigManager;->setConfirAsrWinDismissDelay(J)V

    :cond_6
    iget v0, p0, Lcom/txznet/sdk/TXZConfigManager;->T7:I

    if-lez v0, :cond_7

    iget v0, p0, Lcom/txznet/sdk/TXZConfigManager;->T7:I

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZConfigManager;->setDisplayLvCount(I)V

    :cond_7
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TR:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TR:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZConfigManager;->setVersionConfig(Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TW:[Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

    if-eqz v0, :cond_9

    :try_start_0
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TJ:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->TW:[Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

    invoke-virtual {p0, v0, v1}, Lcom/txznet/sdk/TXZConfigManager;->setPreferenceConfig([Ljava/lang/Object;[Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Tw:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Tw:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZConfigManager;->enableCoverDefaultKeywords(Z)V

    :cond_a
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Te:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Te:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZConfigManager;->enableWinAnim(Z)V

    :cond_b
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->T1:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/txznet/sdk/TXZConfigManager;->setLogLevel(Ljava/lang/String;I)V

    goto :goto_2

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    goto :goto_1

    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZConfigManager;->disableChangeWakeupKeywordsStyle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TL:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TL:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZConfigManager;->setStyleBindWithWakeupKeywords(Z)V

    :cond_d
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TO:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZConfigManager;->setChatMaxEmpty(I)V

    :cond_e
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->To:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->To:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZConfigManager;->setChatMaxEmpty(I)V

    :cond_f
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v6, :cond_12

    move v1, v6

    :goto_3
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v6, :cond_13

    move v2, v6

    :goto_4
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v6, :cond_14

    move v3, v6

    :goto_5
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v6, :cond_15

    move v4, v6

    :goto_6
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v6, :cond_16

    move v5, v6

    :goto_7
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x20

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v6, :cond_17

    :goto_8
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/txznet/sdk/TXZConfigManager;->hideSettingOptions(ZZZZZZ)V

    :cond_10
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mSettingWkWordsEditable:Ljava/lang/Boolean;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mSettingWkWordsEditable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/txznet/sdk/TXZConfigManager;->enableSettingWkWordsEditable(Z)V

    :cond_11
    invoke-static {}, Lcom/txznet/comm/T3/T/T3;->T()V

    invoke-static {}, Lcom/txznet/comm/T3/T/T3;->T3()V

    invoke-static {}, Lcom/txznet/sdk/TXZAsrManager;->getInstance()Lcom/txznet/sdk/TXZAsrManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZAsrManager;->T()V

    invoke-static {}, Lcom/txznet/sdk/TXZCallManager;->getInstance()Lcom/txznet/sdk/TXZCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZCallManager;->T()V

    invoke-static {}, Lcom/txznet/sdk/TXZCameraManager;->getInstance()Lcom/txznet/sdk/TXZCameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZCameraManager;->T()V

    invoke-static {}, Lcom/txznet/sdk/TXZLocationManager;->getInstance()Lcom/txznet/sdk/TXZLocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZLocationManager;->T()V

    invoke-static {}, Lcom/txznet/sdk/TXZMusicManager;->getInstance()Lcom/txznet/sdk/TXZMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZMusicManager;->T()V

    invoke-static {}, Lcom/txznet/sdk/TXZAudioManager;->getInstance()Lcom/txznet/sdk/TXZAudioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZAudioManager;->T()V

    invoke-static {}, Lcom/txznet/sdk/TXZNavManager;->getInstance()Lcom/txznet/sdk/TXZNavManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZNavManager;->T()V

    invoke-static {}, Lcom/txznet/sdk/TXZPoiSearchManager;->getInstance()Lcom/txznet/sdk/TXZPoiSearchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZPoiSearchManager;->T()V

    invoke-static {}, Lcom/txznet/sdk/TXZSenceManager;->getInstance()Lcom/txznet/sdk/TXZSenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZSenceManager;->T()V

    invoke-static {}, Lcom/txznet/sdk/TXZSceneManager;->getInstance()Lcom/txznet/sdk/TXZSceneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZSceneManager;->T()V

    invoke-static {}, Lcom/txznet/sdk/TXZStatusManager;->getInstance()Lcom/txznet/sdk/TXZStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZStatusManager;->T()V

    invoke-static {}, Lcom/txznet/sdk/TXZTtsManager;->getInstance()Lcom/txznet/sdk/TXZTtsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZTtsManager;->T()V

    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZResourceManager;->T()V

    invoke-static {}, Lcom/txznet/sdk/TXZSysManager;->getInstance()Lcom/txznet/sdk/TXZSysManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZSysManager;->T()V

    invoke-static {}, Lcom/txznet/comm/T3/T/T;->TN()V

    invoke-static {}, Lcom/txznet/sdk/TXZPowerManager;->getInstance()Lcom/txznet/sdk/TXZPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZPowerManager;->T()V

    invoke-static {}, Lcom/txznet/sdk/TXZWechatManager;->getInstance()Lcom/txznet/sdk/TXZWechatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZWechatManager;->T()V

    invoke-static {}, Lcom/txznet/sdk/TXZAsrKeyManager;->getInstance()Lcom/txznet/sdk/TXZAsrKeyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZAsrKeyManager;->T()V

    invoke-static {}, Lcom/txznet/sdk/TXZRecordWinManager;->getInstance()Lcom/txznet/sdk/TXZRecordWinManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZRecordWinManager;->T()V

    invoke-static {}, Lcom/txznet/sdk/TXZSimManager;->getInstance()Lcom/txznet/sdk/TXZSimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZSimManager;->onReconnectTXZ()V

    invoke-static {}, Lcom/txznet/sdk/TXZWheelControlManager;->getInstance()Lcom/txznet/sdk/TXZWheelControlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/sdk/TXZWheelControlManager;->T()V

    goto/16 :goto_0

    :cond_12
    move v1, v10

    goto/16 :goto_3

    :cond_13
    move v2, v10

    goto/16 :goto_4

    :cond_14
    move v3, v10

    goto/16 :goto_5

    :cond_15
    move v4, v10

    goto/16 :goto_6

    :cond_16
    move v5, v10

    goto/16 :goto_7

    :cond_17
    move v6, v10

    goto/16 :goto_8
.end method

.method T2()V
    .locals 3

    sget-boolean v0, Lcom/txznet/sdk/TXZService;->T:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/txznet/sdk/TXZPowerManager;->T:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/txznet/sdk/TXZPowerManager;->T:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->Tu:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->Tu:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method

.method T3()V
    .locals 0

    invoke-virtual {p0}, Lcom/txznet/sdk/TXZConfigManager;->T2()V

    return-void
.end method

.method public disableChangeWakeupKeywordsStyle(Ljava/lang/String;)V
    .locals 7

    iget-object v3, p0, Lcom/txznet/sdk/TXZConfigManager;->TQ:Ljava/util/Set;

    monitor-enter v3

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager;->TQ:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager;->TQ:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v3

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager;->TQ:Ljava/util/Set;

    iget-object v4, p0, Lcom/txznet/sdk/TXZConfigManager;->TQ:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    const-string v2, "style"

    invoke-virtual {v0, v2, v1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v2

    const-string v3, "com.txznet.txz"

    const-string v4, "txz.config.disableChangeWakeupKeywordsStyle"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public enableChangeWakeupKeywords(Z)V
    .locals 5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TG:Ljava/lang/Boolean;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.wakeup.enableChangeWakeupKeywords"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public enableCloseWin(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TXZConfigManager::enableCloseWin, enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    invoke-static {p1}, Lcom/txznet/comm/T3/T/T3;->T2(Z)V

    invoke-static {}, Lcom/txznet/comm/T3/T/T3;->T()V

    return-void
.end method

.method public enableCoverDefaultKeywords(Z)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TXZConfigManager::enableCoverDefaultKeywords, enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Tw:Ljava/lang/Boolean;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.wakeup.enableCoverDefaultKeywords"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public enableSettingWkWordsEditable(Z)V
    .locals 5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mSettingWkWordsEditable:Ljava/lang/Boolean;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.config.setting.wkwordsEditable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/txznet/sdk/TXZConfigManager;->mSettingWkWordsEditable:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public enableSettings(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TXZConfigManager::enableSettings, enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    invoke-static {p1}, Lcom/txznet/comm/T3/T/T3;->T3(Z)V

    invoke-static {}, Lcom/txznet/comm/T3/T/T3;->T()V

    return-void
.end method

.method public enableWakeup(Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Ty:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.wakeup.start"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.wakeup.stop"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    goto :goto_0
.end method

.method public enableWinAnim(Z)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableWinAnim enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Te:Ljava/lang/Boolean;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.record.win.enableAnim"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public forceStopWkWhenTts(Z)V
    .locals 5

    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    invoke-virtual {v1, p1}, Lcom/txznet/sdk/TXZConfigManager$InitParam;->forceStopWkWhenTts(Z)Lcom/txznet/sdk/TXZConfigManager$InitParam;

    :cond_0
    const-string v0, "txz.wakeup.forceStopWkWhenTts"

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public getUserWakeupKeywords(Lcom/txznet/sdk/TXZConfigManager$UserKeywordsCallback;)V
    .locals 5

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "com.wakeup.getkeywords"

    const/4 v3, 0x0

    new-instance v4, Lcom/txznet/sdk/TXZConfigManager$6;

    invoke-direct {v4, p0, p1}, Lcom/txznet/sdk/TXZConfigManager$6;-><init>(Lcom/txznet/sdk/TXZConfigManager;Lcom/txznet/sdk/TXZConfigManager$UserKeywordsCallback;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public hideSettingOptions(ZZZZZZ)V
    .locals 5

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x2

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    if-eqz p4, :cond_3

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    if-eqz p5, :cond_4

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    if-eqz p6, :cond_5

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x20

    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.config.setting.hideOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->mHideSettingOptions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_5
.end method

.method public initialize(Landroid/content/Context;Lcom/txznet/sdk/TXZConfigManager$InitListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/txznet/sdk/TXZConfigManager;->initialize(Landroid/content/Context;Lcom/txznet/sdk/TXZConfigManager$InitParam;Lcom/txznet/sdk/TXZConfigManager$InitListener;)V

    return-void
.end method

.method public initialize(Landroid/content/Context;Lcom/txznet/sdk/TXZConfigManager$InitParam;Lcom/txznet/sdk/TXZConfigManager$InitListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/txznet/sdk/TXZConfigManager;->initialize(Landroid/content/Context;Lcom/txznet/sdk/TXZConfigManager$InitParam;Lcom/txznet/sdk/TXZConfigManager$InitListener;Lcom/txznet/sdk/TXZConfigManager$ActiveListener;)V

    return-void
.end method

.method public initialize(Landroid/content/Context;Lcom/txznet/sdk/TXZConfigManager$InitParam;Lcom/txznet/sdk/TXZConfigManager$InitListener;Lcom/txznet/sdk/TXZConfigManager$ActiveListener;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Tc:Lcom/txznet/sdk/TXZConfigManager$InitListener;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    iput-object p3, p0, Lcom/txznet/sdk/TXZConfigManager;->Tc:Lcom/txznet/sdk/TXZConfigManager$InitListener;

    iput-object p4, p0, Lcom/txznet/sdk/TXZConfigManager;->Tk:Lcom/txznet/sdk/TXZConfigManager$ActiveListener;

    invoke-static {p1}, Lcom/txznet/comm/T3/T;->T(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/txznet/sdk/TXZService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->T0:Lcom/txznet/comm/T3/T2$T;

    invoke-virtual {v0, v1}, Lcom/txznet/comm/T3/T2;->T(Lcom/txznet/comm/T3/T2$T;)V

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    new-instance v2, Lcom/txznet/sdk/TXZConfigManager$2;

    invoke-direct {v2, p0}, Lcom/txznet/sdk/TXZConfigManager$2;-><init>(Lcom/txznet/sdk/TXZConfigManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    invoke-virtual {v0, v1}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;)Lcom/txznet/txz/T3/T;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/txznet/sdk/TXZConfigManager;->T2()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    invoke-static {}, Lcom/txznet/comm/T3/T/T3;->T3()V

    goto :goto_0
.end method

.method public isInitedSuccess()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->Tt:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->Tt:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAsrServiceMode(Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;)V
    .locals 5

    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    invoke-virtual {v1, p1}, Lcom/txznet/sdk/TXZConfigManager$InitParam;->setAsrServiceMode(Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;)Lcom/txznet/sdk/TXZConfigManager$InitParam;

    :cond_0
    if-nez p1, :cond_1

    sget-object p1, Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;->ASR_SVR_MODE_MIX:Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;

    :cond_1
    const-string v0, "comm.asr.set.asrsrvmode"

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    invoke-virtual {p1}, Lcom/txznet/sdk/TXZConfigManager$AsrServiceMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public setAsrWakeupThreshhold(F)V
    .locals 5

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    invoke-virtual {v0, p1}, Lcom/txznet/sdk/TXZConfigManager$InitParam;->setAsrWakeupThreshhold(F)Lcom/txznet/sdk/TXZConfigManager$InitParam;

    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.wakeup.set.asrwkscore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public setBeepTimeOut(I)V
    .locals 5

    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    invoke-virtual {v1, p1}, Lcom/txznet/sdk/TXZConfigManager$InitParam;->setBeepTimeOut(I)Lcom/txznet/sdk/TXZConfigManager$InitParam;

    :cond_0
    const-string v0, "comm.asr.set.beeptimeout"

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public setChatMaxEmpty(I)V
    .locals 5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->TO:Ljava/lang/Integer;

    const-string v0, "comm.asr.set.MaxEmpty"

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public setChatMaxUnknow(I)V
    .locals 5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->To:Ljava/lang/Integer;

    const-string v0, "comm.asr.set.MaxUnknow"

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public setConfirAsrWinDismissDelay(J)V
    .locals 7

    iput-wide p1, p0, Lcom/txznet/sdk/TXZConfigManager;->Tr:J

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.wx.dismiss"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/txznet/sdk/TXZConfigManager;->Tr:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public setConnectListener(Lcom/txznet/sdk/TXZConfigManager$ConnectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/TXZConfigManager;->T:Lcom/txznet/sdk/TXZConfigManager$ConnectListener;

    return-void
.end method

.method public setDefaultConfig(Ljava/lang/String;)Z
    .locals 5

    if-eqz p1, :cond_2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "wakeupThreshold"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "voiceSpeed"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "wakeupKeywords"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a valid config msg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a valid config msg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/txznet/comm/T3/T/T3;->T(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const/4 v2, 0x1

    return v2

    :cond_2
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/txznet/comm/T3/T/T3;->T(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public setDisplayLvCount(I)V
    .locals 5

    iput p1, p0, Lcom/txznet/sdk/TXZConfigManager;->T7:I

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.selector.show.count"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/txznet/sdk/TXZConfigManager;->T7:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public setFloatToolClickInterval(J)V
    .locals 7

    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    invoke-virtual {v1, p1, p2}, Lcom/txznet/sdk/TXZConfigManager$InitParam;->setFloatToolClickInterval(J)Lcom/txznet/sdk/TXZConfigManager$InitParam;

    :cond_0
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    const-string v1, "ftInterval"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.sdk.ft.status.interval"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public setFloatToolIcon(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    invoke-virtual {v1, p1, p2}, Lcom/txznet/sdk/TXZConfigManager$InitParam;->setFloatToolIcon(Ljava/lang/String;Ljava/lang/String;)Lcom/txznet/sdk/TXZConfigManager$InitParam;

    :cond_0
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    const-string v1, "floatToolUrl_N"

    invoke-virtual {v0, v1, p1}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "floatToolUrl_P"

    invoke-virtual {v0, v1, p2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.sdk.ft.status.icon"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public setInstantAsrEnabled(Z)V
    .locals 5

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    invoke-virtual {v0, p1}, Lcom/txznet/sdk/TXZConfigManager$InitParam;->setInstantAsrEnabled(Z)Lcom/txznet/sdk/TXZConfigManager$InitParam;

    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.wakeup.setInstantAsrEnable"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public setLogLevel(I)V
    .locals 1

    invoke-static {p1}, Lcom/txznet/comm/T3/T/Te;->T(I)V

    const-string v0, "com.txznet.txz"

    invoke-virtual {p0, v0, p1}, Lcom/txznet/sdk/TXZConfigManager;->setLogLevel(Ljava/lang/String;I)V

    const-string v0, "com.txznet.bluetooth"

    invoke-virtual {p0, v0, p1}, Lcom/txznet/sdk/TXZConfigManager;->setLogLevel(Ljava/lang/String;I)V

    const-string v0, "com.txznet.nav"

    invoke-virtual {p0, v0, p1}, Lcom/txznet/sdk/TXZConfigManager;->setLogLevel(Ljava/lang/String;I)V

    const-string v0, "com.txznet.music"

    invoke-virtual {p0, v0, p1}, Lcom/txznet/sdk/TXZConfigManager;->setLogLevel(Ljava/lang/String;I)V

    const-string v0, "com.txznet.record"

    invoke-virtual {p0, v0, p1}, Lcom/txznet/sdk/TXZConfigManager;->setLogLevel(Ljava/lang/String;I)V

    const-string v0, "com.txznet.webchat"

    invoke-virtual {p0, v0, p1}, Lcom/txznet/sdk/TXZConfigManager;->setLogLevel(Ljava/lang/String;I)V

    return-void
.end method

.method public setLogLevel(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->T1:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "comm.log.setConsoleLogLevel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public setPoiSearchActivityFinishDelay(J)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-wide p1, p0, Lcom/txznet/sdk/TXZConfigManager;->TB:J

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.poi.finish"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/txznet/sdk/TXZConfigManager;->TB:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public setPoiSearchActivityStartNavFinishDelay(J)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-wide p1, p0, Lcom/txznet/sdk/TXZConfigManager;->TP:J

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.poi.afterStartNav.finish"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/txznet/sdk/TXZConfigManager;->TP:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public varargs setPreferenceConfig([Ljava/lang/Object;[Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v7, p1

    array-length v8, p2

    if-eq v7, v8, :cond_1

    :cond_0
    new-instance v7, Ljava/lang/IllegalAccessException;

    const-string v8, "ConfigJsonKey and values should be same count ,or should not null!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    iput-object p2, p0, Lcom/txznet/sdk/TXZConfigManager;->TW:[Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

    iput-object p1, p0, Lcom/txznet/sdk/TXZConfigManager;->TJ:[Ljava/lang/Object;

    iget-object v7, p0, Lcom/txznet/sdk/TXZConfigManager;->TW:[Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

    if-eqz v7, :cond_3

    new-instance v5, Lcom/txznet/comm/TN/T;

    invoke-direct {v5}, Lcom/txznet/comm/TN/T;-><init>()V

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->TW:[Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;

    array-length v6, v0

    const/4 v2, 0x0

    move v4, v3

    :goto_0
    if-ge v2, v6, :cond_2

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lcom/txznet/sdk/TXZConfigManager$ConfigJsonKey;->name()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v3, v4, 0x1

    aget-object v8, p1, v4

    invoke-virtual {v5, v7, v8}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    add-int/lit8 v2, v2, 0x1

    move v4, v3

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v7

    const-string v8, "com.txznet.txz"

    const-string v9, "txz.config.version.prefer"

    invoke-virtual {v5}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :cond_3
    return-void
.end method

.method public setSelectListTimeout(J)V
    .locals 7

    iput-wide p1, p0, Lcom/txznet/sdk/TXZConfigManager;->TB:J

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.nav.poi.finish"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/txznet/sdk/TXZConfigManager;->TB:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public setStyleBindWithWakeupKeywords(Z)V
    .locals 6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->TL:Ljava/lang/Boolean;

    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    const-string v1, "bind"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.config.setStyleBindWithWakeupKeywords"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public setUIConfigListener(Lcom/txznet/sdk/TXZConfigManager$UIConfigListener;)V
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Tf:Lcom/txznet/sdk/TXZConfigManager$UIConfigListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Tf:Lcom/txznet/sdk/TXZConfigManager$UIConfigListener;

    invoke-static {v0}, Lcom/txznet/comm/T3/T/T3;->T3(Lcom/txznet/comm/T3/T/T3$T;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/txznet/comm/T3/T/T3;->T(Lcom/txznet/comm/T3/T/T3$T;)V

    :cond_1
    iput-object p1, p0, Lcom/txznet/sdk/TXZConfigManager;->Tf:Lcom/txznet/sdk/TXZConfigManager$UIConfigListener;

    return-void
.end method

.method public setUseHQualityWakeupModel(Z)V
    .locals 6

    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    invoke-virtual {v2, p1}, Lcom/txznet/sdk/TXZConfigManager$InitParam;->setUseHQualityWakeupModel(Z)Lcom/txznet/sdk/TXZConfigManager$InitParam;

    :cond_0
    const-string v0, "comm.asr.set.useHQualityWakeupModel"

    new-instance v1, Lcom/txznet/comm/TN/T;

    invoke-direct {v1}, Lcom/txznet/comm/TN/T;-><init>()V

    const-string v2, "useHQualityWakeupModel"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v2

    const-string v3, "com.txznet.txz"

    invoke-virtual {v1}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public setUserConfigListener(Lcom/txznet/sdk/TXZConfigManager$UserConfigListener;)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->Tn:Lcom/txznet/sdk/TXZConfigManager$T;

    iput-object p1, v1, Lcom/txznet/sdk/TXZConfigManager$T;->T:Lcom/txznet/sdk/TXZConfigManager$UserConfigListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->Tn:Lcom/txznet/sdk/TXZConfigManager$T;

    :cond_0
    const-string v1, "userconfig."

    invoke-static {v1, v0}, Lcom/txznet/sdk/TXZService;->T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V

    return-void
.end method

.method public setVersionConfig(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/txznet/sdk/TXZConfigManager;->TR:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.config.version.prefer"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    :cond_0
    return-void
.end method

.method public setWakeupKeyWordsThreshold(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    invoke-virtual {v0, p1}, Lcom/txznet/sdk/TXZConfigManager$InitParam;->setWakeupKeyWordsThreshold(Ljava/lang/String;)Lcom/txznet/sdk/TXZConfigManager$InitParam;

    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.wakeup.setKwsThreshold"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public varargs setWakeupKeywordsNew([Ljava/lang/String;)V
    .locals 10

    if-nez p1, :cond_0

    const/4 v5, 0x0

    new-array p1, v5, [Ljava/lang/String;

    :cond_0
    iget-object v5, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    invoke-virtual {v5, p1}, Lcom/txznet/sdk/TXZConfigManager$InitParam;->setWakeupKeywordsNew([Ljava/lang/String;)Lcom/txznet/sdk/TXZConfigManager$InitParam;

    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    move-object v0, p1

    array-length v4, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_3

    aget-object v3, v0, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/16 v6, 0xa

    if-le v5, v6, :cond_4

    :goto_1
    return-void

    :cond_4
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v5

    const-string v6, "com.txznet.txz"

    const-string v7, "txz.wakeup.update"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public setWakeupThreshhold(F)V
    .locals 5

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    invoke-virtual {v0, p1}, Lcom/txznet/sdk/TXZConfigManager$InitParam;->setWakeupThreshhold(F)Lcom/txznet/sdk/TXZConfigManager$InitParam;

    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.wakeup.set.wkscore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public showFloatTool(Lcom/txznet/sdk/TXZConfigManager$FloatToolType;)V
    .locals 6

    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/txznet/sdk/TXZConfigManager;->T3:Lcom/txznet/sdk/TXZConfigManager$InitParam;

    invoke-virtual {v1, p1}, Lcom/txznet/sdk/TXZConfigManager$InitParam;->setFloatToolType(Lcom/txznet/sdk/TXZConfigManager$FloatToolType;)Lcom/txznet/sdk/TXZConfigManager$InitParam;

    :cond_0
    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    const-string v1, "floatToolType"

    invoke-virtual {p1}, Lcom/txznet/sdk/TXZConfigManager$FloatToolType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.sdk.ft.status.type"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public showHelpInfos(Z)V
    .locals 0

    invoke-static {p1}, Lcom/txznet/comm/T3/T/T3;->T(Z)V

    invoke-static {}, Lcom/txznet/comm/T3/T/T3;->T()V

    return-void
.end method
