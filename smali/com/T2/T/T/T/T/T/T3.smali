.class public Lcom/T2/T/T/T/T/T/T3;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T2/T/T/T/T;


# static fields
.field public static final T:Landroid/graphics/Bitmap$CompressFormat;


# instance fields
.field protected final T2:Lcom/T2/T/T/T/T3/T;

.field protected T3:Lcom/T2/T/T/T/T/T/T;

.field protected TN:I

.field protected Te:Landroid/graphics/Bitmap$CompressFormat;

.field protected Tw:I

.field private Ty:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/T2/T/T/T/T/T/T3;->T:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Lcom/T2/T/T/T/T3/T;JI)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x8000

    iput v0, p0, Lcom/T2/T/T/T/T/T/T3;->TN:I

    sget-object v0, Lcom/T2/T/T/T/T/T/T3;->T:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/T2/T/T/T/T/T/T3;->Te:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    iput v0, p0, Lcom/T2/T/T/T/T/T/T3;->Tw:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cacheDir argument must be not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmp-long v0, p4, v2

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cacheMaxSize argument must be positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gez p6, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cacheMaxFileCount argument must be positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p3, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fileNameGenerator argument must be not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    cmp-long v0, p4, v2

    if-nez v0, :cond_4

    const-wide p4, 0x7fffffffffffffffL

    :cond_4
    if-nez p6, :cond_5

    const p6, 0x7fffffff

    :cond_5
    iput-object p2, p0, Lcom/T2/T/T/T/T/T/T3;->Ty:Ljava/io/File;

    iput-object p3, p0, Lcom/T2/T/T/T/T/T/T3;->T2:Lcom/T2/T/T/T/T3/T;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/T2/T/T/T/T/T/T3;->T(Ljava/io/File;Ljava/io/File;JI)V

    return-void
.end method

.method private T(Ljava/io/File;Ljava/io/File;JI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v1, p1

    move-wide v4, p3

    move v6, p5

    :try_start_0
    invoke-static/range {v1 .. v6}, Lcom/T2/T/T/T/T/T/T;->T(Ljava/io/File;IIJI)Lcom/T2/T/T/T/T/T/T;

    move-result-object v1

    iput-object v1, p0, Lcom/T2/T/T/T/T/T/T3;->T3:Lcom/T2/T/T/T/T/T/T;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/T2/T/T2/T;->T(Ljava/lang/Throwable;)V

    if-eqz p2, :cond_1

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/T2/T/T/T/T/T/T3;->T(Ljava/io/File;Ljava/io/File;JI)V

    :cond_1
    iget-object v1, p0, Lcom/T2/T/T/T/T/T/T3;->T3:Lcom/T2/T/T/T/T/T/T;

    if-nez v1, :cond_0

    throw v0
.end method


# virtual methods
.method public T()V
    .locals 7

    :try_start_0
    iget-object v1, p0, Lcom/T2/T/T/T/T/T/T3;->T3:Lcom/T2/T/T/T/T/T/T;

    invoke-virtual {v1}, Lcom/T2/T/T/T/T/T/T;->TN()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/T2/T/T/T/T/T/T3;->T3:Lcom/T2/T/T/T/T/T/T;

    invoke-virtual {v1}, Lcom/T2/T/T/T/T/T/T;->T()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/T2/T/T/T/T/T/T3;->Ty:Ljava/io/File;

    iget-object v1, p0, Lcom/T2/T/T/T/T/T/T3;->T3:Lcom/T2/T/T/T/T/T/T;

    invoke-virtual {v1}, Lcom/T2/T/T/T/T/T/T;->T3()J

    move-result-wide v4

    iget-object v1, p0, Lcom/T2/T/T/T/T/T/T3;->T3:Lcom/T2/T/T/T/T/T/T;

    invoke-virtual {v1}, Lcom/T2/T/T/T/T/T/T;->T2()I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/T2/T/T/T/T/T/T3;->T(Ljava/io/File;Ljava/io/File;JI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/T2/T/T2/T;->T(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/T2/T/T2/T;->T(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
