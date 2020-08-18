.class public Lcom/txznet/sdk/music/TXZMusicTool;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/sdk/TXZMusicManager$MusicTool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicModel;,
        Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;,
        Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;
    }
.end annotation


# static fields
.field static T:Lcom/txznet/sdk/music/TXZMusicTool;

.field static T2:Ljava/lang/Runnable;

.field static T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

.field static TG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicModel;",
            ">;"
        }
    .end annotation
.end field

.field static TN:Z

.field static Te:Z

.field static Tn:Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;

.field static Tw:D

.field static Ty:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/txznet/sdk/music/TXZMusicTool;

    invoke-direct {v0}, Lcom/txznet/sdk/music/TXZMusicTool;-><init>()V

    sput-object v0, Lcom/txznet/sdk/music/TXZMusicTool;->T:Lcom/txznet/sdk/music/TXZMusicTool;

    const/4 v0, 0x0

    sput-object v0, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    new-instance v0, Lcom/txznet/sdk/music/TXZMusicTool$1;

    invoke-direct {v0}, Lcom/txznet/sdk/music/TXZMusicTool$1;-><init>()V

    sput-object v0, Lcom/txznet/sdk/music/TXZMusicTool;->T2:Ljava/lang/Runnable;

    sput-boolean v2, Lcom/txznet/sdk/music/TXZMusicTool;->TN:Z

    sput-boolean v2, Lcom/txznet/sdk/music/TXZMusicTool;->Te:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/txznet/sdk/music/TXZMusicTool;->Tw:D

    sput v2, Lcom/txznet/sdk/music/TXZMusicTool;->Ty:I

    sget-object v0, Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;->PLAY_MODE_LOOP_SINGLE:Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;

    sput-object v0, Lcom/txznet/sdk/music/TXZMusicTool;->Tn:Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/txznet/sdk/music/TXZMusicTool;->TG:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static T([B)Z
    .locals 3

    const/4 v2, 0x1

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    const-string v1, "single"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;->PLAY_MODE_LOOP_SINGLE:Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;

    sput-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->Tn:Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    instance-of v1, v1, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    check-cast v1, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;

    invoke-interface {v1}, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;->onModeChange()V

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    :try_start_1
    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;->PLAY_MODE_LOOP_ALL:Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;

    sput-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->Tn:Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    instance-of v1, v1, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    check-cast v1, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;

    invoke-interface {v1}, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;->onModeChange()V

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    :try_start_2
    const-string v1, "random"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;->PLAY_MODE_RANDOM:Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;

    sput-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->Tn:Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    instance-of v1, v1, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    check-cast v1, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;

    invoke-interface {v1}, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;->onModeChange()V

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    instance-of v1, v1, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    check-cast v1, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;

    invoke-interface {v1}, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;->onModeChange()V

    :cond_6
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    instance-of v1, v1, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    check-cast v1, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;

    invoke-interface {v1}, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;->onModeChange()V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v1

    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    instance-of v1, v1, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    check-cast v1, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;

    invoke-interface {v1}, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;->onModeChange()V

    :cond_7
    throw v2
.end method

.method static T3([B)Z
    .locals 11

    const/4 v9, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/TN/T/Tw/T$T3;->T([B)Lcom/TN/T/Tw/T$T3;

    move-result-object v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v5, Lcom/TN/T/Tw/T$T3;->T3:[Lcom/TN/T/Tw/T$T;

    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    new-instance v6, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicModel;

    invoke-direct {v6}, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicModel;-><init>()V

    iget-object v8, v3, Lcom/TN/T/Tw/T$T;->T3:Lcom/TN/T/Tw/T$T2;

    iget-object v8, v8, Lcom/TN/T/Tw/T$T2;->T2:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicModel;->setTitle(Ljava/lang/String;)V

    iget-object v8, v3, Lcom/TN/T/Tw/T$T;->T3:Lcom/TN/T/Tw/T$T2;

    iget-object v8, v8, Lcom/TN/T/Tw/T$T2;->TN:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicModel;->setAlbum(Ljava/lang/String;)V

    iget-object v8, v3, Lcom/TN/T/Tw/T$T;->T3:Lcom/TN/T/Tw/T$T2;

    iget-object v8, v8, Lcom/TN/T/Tw/T$T2;->Te:[Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicModel;->setArtist([Ljava/lang/String;)V

    iget-object v8, v3, Lcom/TN/T/Tw/T$T;->T3:Lcom/TN/T/Tw/T$T2;

    iget-object v8, v8, Lcom/TN/T/Tw/T$T2;->TB:[Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicModel;->setKeywords([Ljava/lang/String;)V

    iget-object v8, v3, Lcom/TN/T/Tw/T$T;->T3:Lcom/TN/T/Tw/T$T2;

    iget-object v8, v8, Lcom/TN/T/Tw/T$T2;->Tr:Ljava/lang/Boolean;

    if-nez v8, :cond_0

    move v8, v9

    :goto_1
    invoke-virtual {v6, v8}, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicModel;->setFavour(Z)V

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v8, v3, Lcom/TN/T/Tw/T$T;->T3:Lcom/TN/T/Tw/T$T2;

    iget-object v8, v8, Lcom/TN/T/Tw/T$T2;->Tr:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    goto :goto_1

    :cond_1
    const-class v10, Lcom/txznet/sdk/music/TXZMusicTool;

    monitor-enter v10
    :try_end_0
    .catch Lcom/T3/T/T/TN; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sput-object v7, Lcom/txznet/sdk/music/TXZMusicTool;->TG:Ljava/util/List;

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v8, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    if-eqz v8, :cond_2

    sget-object v8, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    instance-of v8, v8, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;

    if-eqz v8, :cond_2

    sget-object v8, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    check-cast v8, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;

    invoke-interface {v8}, Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicStatusListener;->onListChange()V
    :try_end_2
    .catch Lcom/T3/T/T/TN; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    const/4 v8, 0x1

    :goto_2
    return v8

    :catchall_0
    move-exception v8

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v8
    :try_end_4
    .catch Lcom/T3/T/T/TN; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    move v8, v9

    goto :goto_2
.end method

.method public static getInstance()Lcom/txznet/sdk/music/TXZMusicTool;
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.txznet.music"

    const/16 v3, 0x2000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->T:Lcom/txznet/sdk/music/TXZMusicTool;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public deleteIndex(IZ)V
    .locals 6

    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "deleteFile"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.music"

    const-string v3, "music.deleteIndex"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public exit()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.exit"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public favourIndex(IZ)V
    .locals 6

    new-instance v0, Lcom/txznet/comm/TN/T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T;-><init>()V

    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    const-string v1, "favour"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Object;)Lcom/txznet/comm/TN/T;

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.music"

    const-string v3, "music.favourIndex"

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T;->T2()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public favourMusic()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.txztool.favourMusic"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public getCurrentMusicIndex()I
    .locals 1

    sget v0, Lcom/txznet/sdk/music/TXZMusicTool;->Ty:I

    return v0
.end method

.method public getCurrentMusicModel()Lcom/txznet/sdk/TXZMusicManager$MusicModel;
    .locals 4

    :try_start_0
    const-class v2, Lcom/txznet/sdk/music/TXZMusicTool;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Lcom/txznet/sdk/music/TXZMusicTool;->TG:Ljava/util/List;

    sget v3, Lcom/txznet/sdk/music/TXZMusicTool;->Ty:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/txznet/sdk/TXZMusicManager$MusicModel;

    monitor-exit v2

    :goto_0
    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMusicList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/txznet/sdk/music/TXZMusicTool$TXZMusicModel;",
            ">;"
        }
    .end annotation

    const-class v1, Lcom/txznet/sdk/music/TXZMusicTool;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/txznet/sdk/music/TXZMusicTool;->TG:Ljava/util/List;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPlayMode()Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;
    .locals 1

    sget-object v0, Lcom/txznet/sdk/music/TXZMusicTool;->Tn:Lcom/txznet/sdk/music/TXZMusicTool$PlayMode;

    return-object v0
.end method

.method public getProgress()D
    .locals 2

    sget-wide v0, Lcom/txznet/sdk/music/TXZMusicTool;->Tw:D

    return-wide v0
.end method

.method public isBufferProccessing()Z
    .locals 1

    sget-boolean v0, Lcom/txznet/sdk/music/TXZMusicTool;->Te:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    sget-boolean v0, Lcom/txznet/sdk/music/TXZMusicTool;->TN:Z

    return v0
.end method

.method public next()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.next"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public pause()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.pause"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public play()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.play"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public playFavourMusic()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.txztool.playFavourMusic"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public playIndex(I)V
    .locals 5

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.playIndex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public playMusic(Lcom/txznet/sdk/TXZMusicManager$MusicModel;)V
    .locals 5

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.txztool.playMusic"

    invoke-virtual {p1}, Lcom/txznet/sdk/TXZMusicManager$MusicModel;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public playRandom()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.txztool.playRandom"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public prev()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.prev"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public setStatusListener(Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;)V
    .locals 3

    sput-object p1, Lcom/txznet/sdk/music/TXZMusicTool;->T3:Lcom/txznet/sdk/TXZMusicManager$MusicToolStatusListener;

    const-string v0, "musicStatus."

    new-instance v1, Lcom/txznet/sdk/music/TXZMusicTool$2;

    invoke-direct {v1, p0}, Lcom/txznet/sdk/music/TXZMusicTool$2;-><init>(Lcom/txznet/sdk/music/TXZMusicTool;)V

    invoke-static {v0, v1}, Lcom/txznet/T2/T;->T(Ljava/lang/String;Lcom/txznet/T2/T$T;)V

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    sget-object v2, Lcom/txznet/sdk/music/TXZMusicTool;->T2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/Runnable;)V

    sget-object v0, Lcom/txznet/sdk/music/TXZMusicTool;->T2:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public switchModeLoopAll()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.switchModeLoopAll"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public switchModeLoopOne()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.switchModeLoopOne"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public switchModeRandom()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.switchModeRandom"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public switchSong()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.music"

    const-string v2, "music.switchSong"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method

.method public unfavourMusic()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.music.txztool.unfavourMusic"

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    return-void
.end method
