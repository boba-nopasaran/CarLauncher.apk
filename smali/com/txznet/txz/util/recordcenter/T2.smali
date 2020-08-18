.class public Lcom/txznet/txz/util/recordcenter/T2;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/txz/util/recordcenter/T2$T;
    }
.end annotation


# static fields
.field public static final T:Ljava/io/File;

.field private static T0:Lcom/txznet/txz/util/recordcenter/T/T;

.field public static T2:Lcom/txznet/txz/util/recordcenter/T/TN;

.field public static T3:S

.field private static T7:I

.field private static TB:[Lcom/txznet/txz/util/recordcenter/T2$T;

.field private static TG:[B

.field private static TH:Lcom/txznet/txz/util/recordcenter/T/T;

.field private static TJ:I

.field private static TL:Lcom/txznet/txz/util/recordcenter/T/T;

.field static TN:Ljava/nio/channels/ServerSocketChannel;

.field private static TO:Ljava/lang/Thread;

.field private static TP:I

.field private static TQ:Lcom/txznet/txz/util/recordcenter/T3;

.field private static TR:Ljava/io/File;

.field private static TW:Ljava/io/FileInputStream;

.field private static Tc:Lcom/txznet/txz/util/recordcenter/T;

.field static Te:Ljava/nio/channels/Selector;

.field private static Tn:[B

.field private static To:Ljava/lang/Thread;

.field private static Tr:I

.field private static Tw:Z

.field private static Ty:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v2, "../com.txznet.txz/RecorderCenter.port"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/txznet/txz/util/recordcenter/T2;->T:Ljava/io/File;

    sput-short v4, Lcom/txznet/txz/util/recordcenter/T2;->T3:S

    sput-boolean v4, Lcom/txznet/txz/util/recordcenter/T2;->Tw:Z

    sput-boolean v4, Lcom/txznet/txz/util/recordcenter/T2;->Ty:Z

    invoke-static {}, Lcom/txznet/txz/util/recordcenter/T2;->T2()V

    sput-object v3, Lcom/txznet/txz/util/recordcenter/T2;->Tn:[B

    sput-object v3, Lcom/txznet/txz/util/recordcenter/T2;->TG:[B

    sput-object v3, Lcom/txznet/txz/util/recordcenter/T2;->TR:Ljava/io/File;

    sput-object v3, Lcom/txznet/txz/util/recordcenter/T2;->TW:Ljava/io/FileInputStream;

    sput v4, Lcom/txznet/txz/util/recordcenter/T2;->TJ:I

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/txznet/txz/util/recordcenter/T2$T;

    sput-object v0, Lcom/txznet/txz/util/recordcenter/T2;->TB:[Lcom/txznet/txz/util/recordcenter/T2$T;

    sput v4, Lcom/txznet/txz/util/recordcenter/T2;->TP:I

    sput v4, Lcom/txznet/txz/util/recordcenter/T2;->Tr:I

    sput v4, Lcom/txznet/txz/util/recordcenter/T2;->T7:I

    new-instance v0, Lcom/txznet/txz/util/recordcenter/T/TN;

    const v1, 0x27100

    invoke-direct {v0, v1}, Lcom/txznet/txz/util/recordcenter/T/TN;-><init>(I)V

    sput-object v0, Lcom/txznet/txz/util/recordcenter/T2;->T2:Lcom/txznet/txz/util/recordcenter/T/TN;

    sput-object v3, Lcom/txznet/txz/util/recordcenter/T2;->TO:Ljava/lang/Thread;

    sput-object v3, Lcom/txznet/txz/util/recordcenter/T2;->TN:Ljava/nio/channels/ServerSocketChannel;

    sput-object v3, Lcom/txznet/txz/util/recordcenter/T2;->Te:Ljava/nio/channels/Selector;

    sput-object v3, Lcom/txznet/txz/util/recordcenter/T2;->To:Ljava/lang/Thread;

    sput-object v3, Lcom/txznet/txz/util/recordcenter/T2;->TQ:Lcom/txznet/txz/util/recordcenter/T3;

    new-instance v0, Lcom/txznet/txz/util/recordcenter/T2$2;

    invoke-direct {v0}, Lcom/txznet/txz/util/recordcenter/T2$2;-><init>()V

    sput-object v0, Lcom/txznet/txz/util/recordcenter/T2;->TL:Lcom/txznet/txz/util/recordcenter/T/T;

    new-instance v0, Lcom/txznet/txz/util/recordcenter/T2$3;

    invoke-direct {v0}, Lcom/txznet/txz/util/recordcenter/T2$3;-><init>()V

    sput-object v0, Lcom/txznet/txz/util/recordcenter/T2;->TH:Lcom/txznet/txz/util/recordcenter/T/T;

    new-instance v0, Lcom/txznet/txz/util/recordcenter/T2$4;

    invoke-direct {v0}, Lcom/txznet/txz/util/recordcenter/T2$4;-><init>()V

    sput-object v0, Lcom/txznet/txz/util/recordcenter/T2;->T0:Lcom/txznet/txz/util/recordcenter/T/T;

    sput-object v3, Lcom/txznet/txz/util/recordcenter/T2;->Tc:Lcom/txznet/txz/util/recordcenter/T;

    return-void
.end method

.method static synthetic T(I[BII)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/txznet/txz/util/recordcenter/T2;->T3(I[BII)V

    return-void
.end method

.method static synthetic T()Z
    .locals 1

    sget-boolean v0, Lcom/txznet/txz/util/recordcenter/T2;->Tw:Z

    return v0
.end method

.method public static T(I)[B
    .locals 3

    sget-object v1, Lcom/txznet/txz/util/recordcenter/T2;->Tn:[B

    if-eqz v1, :cond_0

    sget-object v1, Lcom/txznet/txz/util/recordcenter/T2;->Tn:[B

    array-length v1, v1

    if-ge v1, p0, :cond_1

    :cond_0
    add-int/lit16 v1, p0, 0x4b0

    add-int/lit8 v1, v1, -0x1

    div-int/lit16 v1, v1, 0x4b0

    mul-int/lit16 v1, v1, 0x4b0

    new-array v1, v1, [B

    sput-object v1, Lcom/txznet/txz/util/recordcenter/T2;->Tn:[B

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "quite.pcm"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    sget-object v1, Lcom/txznet/txz/util/recordcenter/T2;->Tn:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_0
    sget-object v1, Lcom/txznet/txz/util/recordcenter/T2;->Tn:[B

    return-object v1

    :catch_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    :goto_1
    throw v1

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method private static T2()V
    .locals 9

    const/4 v8, 0x2

    new-instance v2, Landroid/content/IntentFilter;

    const-string v6, "com.txznet.txz.RecorderCenter.UpdatePort"

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Lcom/txznet/txz/util/recordcenter/T2$1;

    invoke-direct {v7}, Lcom/txznet/txz/util/recordcenter/T2$1;-><init>()V

    invoke-virtual {v6, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/16 v6, 0x5746

    sput-short v6, Lcom/txznet/txz/util/recordcenter/T2;->T3:S

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    sget-object v6, Lcom/txznet/txz/util/recordcenter/T2;->T:Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x2

    :try_start_1
    new-array v0, v6, [B

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v4, v0, v6, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    if-ne v8, v6, :cond_0

    const/4 v6, 0x1

    aget-byte v6, v0, v6

    shl-int/lit8 v6, v6, 0x8

    const/4 v7, 0x0

    aget-byte v7, v0, v7

    or-int/2addr v6, v7

    int-to-short v5, v6

    if-lez v5, :cond_0

    sput-short v5, Lcom/txznet/txz/util/recordcenter/T2;->T3:S

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load record port: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-short v7, Lcom/txznet/txz/util/recordcenter/T2;->T3:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    if-eqz v4, :cond_3

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    :cond_1
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "final record port: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-short v7, Lcom/txznet/txz/util/recordcenter/T2;->T3:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_1
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load record port exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_3
    throw v6

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception v6

    move-object v3, v4

    goto :goto_2

    :catch_4
    move-exception v1

    move-object v3, v4

    goto :goto_1

    :cond_3
    move-object v3, v4

    goto :goto_0
.end method

.method private static T2(I)Z
    .locals 12

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-object v9, Lcom/txznet/txz/util/recordcenter/T2;->TW:Ljava/io/FileInputStream;

    if-nez v9, :cond_0

    :goto_0
    return v7

    :cond_0
    sget-object v9, Lcom/txznet/txz/util/recordcenter/T2;->TG:[B

    if-eqz v9, :cond_1

    sget-object v9, Lcom/txznet/txz/util/recordcenter/T2;->TG:[B

    array-length v9, v9

    if-ge v9, p0, :cond_2

    :cond_1
    add-int/lit16 v9, p0, 0x4b0

    add-int/lit8 v9, v9, -0x1

    div-int/lit16 v9, v9, 0x4b0

    mul-int/lit16 v9, v9, 0x4b0

    new-array v9, v9, [B

    sput-object v9, Lcom/txznet/txz/util/recordcenter/T2;->TG:[B

    :cond_2
    invoke-static {p0}, Lcom/txznet/txz/util/recordcenter/T2;->T(I)[B

    move-result-object v1

    move v5, p0

    :try_start_0
    sget-object v9, Lcom/txznet/txz/util/recordcenter/T2;->TW:Ljava/io/FileInputStream;

    sget-object v10, Lcom/txznet/txz/util/recordcenter/T2;->TG:[B

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, p0}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-gez v5, :cond_4

    move v5, p0

    :goto_1
    sget-object v0, Lcom/txznet/txz/util/recordcenter/T2;->TB:[Lcom/txznet/txz/util/recordcenter/T2$T;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_6

    aget-object v6, v0, v3

    if-eqz v6, :cond_3

    iget v9, v6, Lcom/txznet/txz/util/recordcenter/T2$T;->T:I

    if-ne v9, v8, :cond_5

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    :try_start_1
    sget-object v1, Lcom/txznet/txz/util/recordcenter/T2;->TG:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    move v5, p0

    goto :goto_1

    :cond_5
    invoke-virtual {v6, v1, v7, v5}, Lcom/txznet/txz/util/recordcenter/T2$T;->T([BII)I

    goto :goto_3

    :cond_6
    move v7, v8

    goto :goto_0
.end method

.method private static T3(I[BII)V
    .locals 10

    const-wide/16 v8, 0x0

    sget-object v0, Lcom/txznet/txz/util/recordcenter/T2;->TB:[Lcom/txznet/txz/util/recordcenter/T2$T;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_6

    aget-object v3, v0, v1

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    iget v5, v3, Lcom/txznet/txz/util/recordcenter/T2$T;->T:I

    if-ne v4, v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x4

    iget v5, v3, Lcom/txznet/txz/util/recordcenter/T2$T;->T:I

    if-ne v4, v5, :cond_5

    const/4 v4, 0x3

    if-ne v4, p0, :cond_5

    sget-boolean v4, Lcom/txznet/txz/util/recordcenter/T2;->Tw:Z

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/txznet/txz/util/recordcenter/T2;->Ty:Z

    if-eqz v4, :cond_4

    :cond_2
    iget-wide v4, v3, Lcom/txznet/txz/util/recordcenter/T2$T;->T2:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_3

    :try_start_0
    sget-object v4, Lcom/txznet/txz/util/recordcenter/T2;->T2:Lcom/txznet/txz/util/recordcenter/T/TN;

    iget-object v5, v3, Lcom/txznet/txz/util/recordcenter/T2$T;->Te:Lcom/txznet/txz/util/recordcenter/T/T;

    iget-wide v6, v3, Lcom/txznet/txz/util/recordcenter/T2$T;->T2:J

    invoke-virtual {v4, v5, v6, v7}, Lcom/txznet/txz/util/recordcenter/T/TN;->T(Lcom/txznet/txz/util/recordcenter/T/T;J)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    invoke-virtual {v3, v8, v9}, Lcom/txznet/txz/util/recordcenter/T2$T;->T(J)V

    :cond_4
    invoke-virtual {v3, p1, p2, p3}, Lcom/txznet/txz/util/recordcenter/T2$T;->T([BII)I

    goto :goto_1

    :cond_5
    iget v4, v3, Lcom/txznet/txz/util/recordcenter/T2$T;->T:I

    if-ne v4, p0, :cond_0

    invoke-virtual {v3, p1, p2, p3}, Lcom/txznet/txz/util/recordcenter/T2$T;->T([BII)I

    goto :goto_1

    :cond_6
    return-void

    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method static synthetic T3()Z
    .locals 1

    sget-boolean v0, Lcom/txznet/txz/util/recordcenter/T2;->Ty:Z

    return v0
.end method

.method static synthetic T3(I)Z
    .locals 1

    invoke-static {p0}, Lcom/txznet/txz/util/recordcenter/T2;->T2(I)Z

    move-result v0

    return v0
.end method
