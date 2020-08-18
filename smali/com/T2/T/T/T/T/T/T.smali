.class final Lcom/T2/T/T/T/T/T/T;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/T2/T/T/T/T/T/T$T;,
        Lcom/T2/T/T/T/T/T/T$T3;
    }
.end annotation


# static fields
.field static final T:Ljava/util/regex/Pattern;

.field private static final To:Ljava/io/OutputStream;


# instance fields
.field private final T2:Ljava/io/File;

.field final T3:Ljava/util/concurrent/ThreadPoolExecutor;

.field private T7:J

.field private TB:Ljava/io/Writer;

.field private TG:I

.field private TJ:I

.field private final TN:Ljava/io/File;

.field private final TO:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final TP:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/T2/T/T/T/T/T/T$T3;",
            ">;"
        }
    .end annotation
.end field

.field private final TR:I

.field private TW:J

.field private final Te:Ljava/io/File;

.field private Tn:J

.field private Tr:I

.field private final Tw:Ljava/io/File;

.field private final Ty:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[a-z0-9_-]{1,64}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/T2/T/T/T/T/T/T;->T:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/T2/T/T/T/T/T/T$2;

    invoke-direct {v0}, Lcom/T2/T/T/T/T/T/T$2;-><init>()V

    sput-object v0, Lcom/T2/T/T/T/T/T/T;->To:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJI)V
    .locals 8

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Lcom/T2/T/T/T/T/T/T;->TW:J

    iput v2, p0, Lcom/T2/T/T/T/T/T/T;->TJ:I

    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/T2/T/T/T/T/T/T;->TP:Ljava/util/LinkedHashMap;

    iput-wide v4, p0, Lcom/T2/T/T/T/T/T/T;->T7:J

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/T2/T/T/T/T/T/T;->T3:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/T2/T/T/T/T/T/T$1;

    invoke-direct {v0, p0}, Lcom/T2/T/T/T/T/T/T$1;-><init>(Lcom/T2/T/T/T/T/T/T;)V

    iput-object v0, p0, Lcom/T2/T/T/T/T/T/T;->TO:Ljava/util/concurrent/Callable;

    iput-object p1, p0, Lcom/T2/T/T/T/T/T/T;->T2:Ljava/io/File;

    iput p2, p0, Lcom/T2/T/T/T/T/T/T;->Ty:I

    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/T2/T/T/T/T/T/T;->TN:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/T2/T/T/T/T/T/T;->Te:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/T2/T/T/T/T/T/T;->Tw:Ljava/io/File;

    iput p3, p0, Lcom/T2/T/T/T/T/T/T;->TR:I

    iput-wide p4, p0, Lcom/T2/T/T/T/T/T/T;->Tn:J

    iput p6, p0, Lcom/T2/T/T/T/T/T/T;->TG:I

    return-void
.end method

.method public static T(Ljava/io/File;IIJI)Lcom/T2/T/T/T/T/T/T;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-gtz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxSize <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-gtz p5, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxFileCount <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-gtz p2, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "valueCount <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v7, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v7, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v9, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v9, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_3
    :goto_0
    new-instance v0, Lcom/T2/T/T/T/T/T/T;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/T2/T/T/T/T/T/T;-><init>(Ljava/io/File;IIJI)V

    iget-object v1, v0, Lcom/T2/T/T/T/T/T/T;->TN:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    :try_start_0
    invoke-direct {v0}, Lcom/T2/T/T/T/T/T/T;->Te()V

    invoke-direct {v0}, Lcom/T2/T/T/T/T/T/T;->Tw()V

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lcom/T2/T/T/T/T/T/T;->TN:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lcom/T2/T/T/T/T/T/TN;->T:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lcom/T2/T/T/T/T/T/T;->TB:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v0

    :goto_1
    return-object v8

    :cond_4
    const/4 v1, 0x0

    invoke-static {v7, v9, v1}, Lcom/T2/T/T/T/T/T/T;->T(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_0

    :catch_0
    move-exception v10

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DiskLruCache "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is corrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", removing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/T2/T/T/T/T/T/T;->TN()V

    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Lcom/T2/T/T/T/T/T/T;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/T2/T/T/T/T/T/T;-><init>(Ljava/io/File;IIJI)V

    invoke-direct {v0}, Lcom/T2/T/T/T/T/T/T;->Ty()V

    move-object v8, v0

    goto :goto_1
.end method

.method static synthetic T(Lcom/T2/T/T/T/T/T/T;)Ljava/io/Writer;
    .locals 1

    iget-object v0, p0, Lcom/T2/T/T/T/T/T/T;->TB:Ljava/io/Writer;

    return-object v0
.end method

.method private declared-synchronized T(Lcom/T2/T/T/T/T/T/T$T;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/T2/T/T/T/T/T/T$T;->T(Lcom/T2/T/T/T/T/T/T$T;)Lcom/T2/T/T/T/T/T/T$T3;

    move-result-object v2

    invoke-static {v2}, Lcom/T2/T/T/T/T/T/T$T3;->T3(Lcom/T2/T/T/T/T/T/T$T3;)Lcom/T2/T/T/T/T/T/T$T;

    move-result-object v8

    if-eq v8, p1, :cond_0

    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    :cond_0
    if-eqz p2, :cond_1

    :try_start_1
    invoke-static {v2}, Lcom/T2/T/T/T/T/T/T$T3;->T(Lcom/T2/T/T/T/T/T/T$T3;)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v3, 0x0

    :goto_0
    iget v8, p0, Lcom/T2/T/T/T/T/T/T;->TR:I

    if-lt v3, v8, :cond_5

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iget v8, p0, Lcom/T2/T/T/T/T/T/T;->TR:I

    if-lt v3, v8, :cond_8

    iget v8, p0, Lcom/T2/T/T/T/T/T/T;->Tr:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/T2/T/T/T/T/T/T;->Tr:I

    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/T2/T/T/T/T/T/T$T3;->T(Lcom/T2/T/T/T/T/T/T$T3;Lcom/T2/T/T/T/T/T/T$T;)V

    invoke-static {v2}, Lcom/T2/T/T/T/T/T/T$T3;->T(Lcom/T2/T/T/T/T/T/T$T3;)Z

    move-result v8

    or-int/2addr v8, p2

    if-eqz v8, :cond_b

    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/T2/T/T/T/T/T/T$T3;->T(Lcom/T2/T/T/T/T/T/T$T3;Z)V

    iget-object v8, p0, Lcom/T2/T/T/T/T/T/T;->TB:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "CLEAN "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/T2/T/T/T/T/T/T$T3;->T2(Lcom/T2/T/T/T/T/T/T$T3;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/T2/T/T/T/T/T/T$T3;->T()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    iget-wide v8, p0, Lcom/T2/T/T/T/T/T/T;->T7:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    iput-wide v10, p0, Lcom/T2/T/T/T/T/T/T;->T7:J

    invoke-static {v2, v8, v9}, Lcom/T2/T/T/T/T/T/T$T3;->T(Lcom/T2/T/T/T/T/T/T$T3;J)V

    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/T2/T/T/T/T/T/T;->TB:Ljava/io/Writer;

    invoke-virtual {v8}, Ljava/io/Writer;->flush()V

    iget-wide v8, p0, Lcom/T2/T/T/T/T/T/T;->TW:J

    iget-wide v10, p0, Lcom/T2/T/T/T/T/T/T;->Tn:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_3

    iget v8, p0, Lcom/T2/T/T/T/T/T/T;->TJ:I

    iget v9, p0, Lcom/T2/T/T/T/T/T/T;->TG:I

    if-gt v8, v9, :cond_3

    invoke-direct {p0}, Lcom/T2/T/T/T/T/T/T;->Tn()Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    iget-object v8, p0, Lcom/T2/T/T/T/T/T/T;->T3:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v9, p0, Lcom/T2/T/T/T/T/T/T;->TO:Ljava/util/concurrent/Callable;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_3
    monitor-exit p0

    return-void

    :cond_5
    :try_start_2
    invoke-static {p1}, Lcom/T2/T/T/T/T/T/T$T;->T3(Lcom/T2/T/T/T/T/T/T$T;)[Z

    move-result-object v8

    aget-boolean v8, v8, v3

    if-nez v8, :cond_6

    invoke-virtual {p1}, Lcom/T2/T/T/T/T/T/T$T;->T()V

    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Newly created entry didn\'t create value for index "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_6
    invoke-virtual {v2, v3}, Lcom/T2/T/T/T/T/T/T$T3;->T3(I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {p1}, Lcom/T2/T/T/T/T/T/T$T;->T()V

    goto :goto_3

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v2, v3}, Lcom/T2/T/T/T/T/T/T$T3;->T3(I)Ljava/io/File;

    move-result-object v1

    if-eqz p2, :cond_a

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v2, v3}, Lcom/T2/T/T/T/T/T/T$T3;->T(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-static {v2}, Lcom/T2/T/T/T/T/T/T$T3;->TN(Lcom/T2/T/T/T/T/T/T$T3;)[J

    move-result-object v8

    aget-wide v6, v8, v3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v2}, Lcom/T2/T/T/T/T/T/T$T3;->TN(Lcom/T2/T/T/T/T/T/T$T3;)[J

    move-result-object v8

    aput-wide v4, v8, v3

    iget-wide v8, p0, Lcom/T2/T/T/T/T/T/T;->TW:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Lcom/T2/T/T/T/T/T/T;->TW:J

    iget v8, p0, Lcom/T2/T/T/T/T/T/T;->TJ:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/T2/T/T/T/T/T/T;->TJ:I

    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_a
    invoke-static {v1}, Lcom/T2/T/T/T/T/T/T;->T(Ljava/io/File;)V

    goto :goto_4

    :cond_b
    iget-object v8, p0, Lcom/T2/T/T/T/T/T/T;->TP:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcom/T2/T/T/T/T/T/T$T3;->T2(Lcom/T2/T/T/T/T/T/T$T3;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/T2/T/T/T/T/T/T;->TB:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "REMOVE "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/T2/T/T/T/T/T/T$T3;->T2(Lcom/T2/T/T/T/T/T/T$T3;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method static synthetic T(Lcom/T2/T/T/T/T/T/T;I)V
    .locals 0

    iput p1, p0, Lcom/T2/T/T/T/T/T/T;->Tr:I

    return-void
.end method

.method static synthetic T(Lcom/T2/T/T/T/T/T/T;Lcom/T2/T/T/T/T/T/T$T;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/T2/T/T/T/T/T/T;->T(Lcom/T2/T/T/T/T/T/T$T;Z)V

    return-void
.end method

.method private static T(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private static T(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/T2/T/T/T/T/T/T;->T(Ljava/io/File;)V

    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_1
    return-void
.end method

.method static synthetic T2(Lcom/T2/T/T/T/T/T/T;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/T2/T/T/T/T/T/T;->TW()V

    return-void
.end method

.method private T2(Ljava/lang/String;)V
    .locals 4

    sget-object v1, Lcom/T2/T/T/T/T/T/T;->T:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "keys must match regex [a-z0-9_-]{1,64}: \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method static synthetic T3(Lcom/T2/T/T/T/T/T/T;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/T2/T/T/T/T/T/T;->TR()V

    return-void
.end method

.method private T3(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x20

    const/4 v8, 0x0

    const/4 v7, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v7, :cond_0

    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "unexpected journal line: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-ne v5, v7, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v6, "REMOVE"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_3

    const-string v6, "REMOVE"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/T2/T/T/T/T/T/T;->TP:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_3
    iget-object v6, p0, Lcom/T2/T/T/T/T/T/T;->TP:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/T2/T/T/T/T/T/T$T3;

    if-nez v0, :cond_4

    new-instance v0, Lcom/T2/T/T/T/T/T/T$T3;

    invoke-direct {v0, p0, v2, v8}, Lcom/T2/T/T/T/T/T/T$T3;-><init>(Lcom/T2/T/T/T/T/T/T;Ljava/lang/String;Lcom/T2/T/T/T/T/T/T$T3;)V

    iget-object v6, p0, Lcom/T2/T/T/T/T/T/T;->TP:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eq v5, v7, :cond_5

    const-string v6, "CLEAN"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_5

    const-string v6, "CLEAN"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {v0, v6}, Lcom/T2/T/T/T/T/T/T$T3;->T(Lcom/T2/T/T/T/T/T/T$T3;Z)V

    invoke-static {v0, v8}, Lcom/T2/T/T/T/T/T/T$T3;->T(Lcom/T2/T/T/T/T/T/T$T3;Lcom/T2/T/T/T/T/T/T$T;)V

    invoke-static {v0, v4}, Lcom/T2/T/T/T/T/T/T$T3;->T(Lcom/T2/T/T/T/T/T/T$T3;[Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    if-ne v5, v7, :cond_6

    const-string v6, "DIRTY"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_6

    const-string v6, "DIRTY"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v6, Lcom/T2/T/T/T/T/T/T$T;

    invoke-direct {v6, p0, v0, v8}, Lcom/T2/T/T/T/T/T/T$T;-><init>(Lcom/T2/T/T/T/T/T/T;Lcom/T2/T/T/T/T/T/T$T3;Lcom/T2/T/T/T/T/T/T$T;)V

    invoke-static {v0, v6}, Lcom/T2/T/T/T/T/T/T$T3;->T(Lcom/T2/T/T/T/T/T/T$T3;Lcom/T2/T/T/T/T/T/T$T;)V

    goto :goto_0

    :cond_6
    if-ne v5, v7, :cond_7

    const-string v6, "READ"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_7

    const-string v6, "READ"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_7
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "unexpected journal line: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private TG()V
    .locals 2

    iget-object v0, p0, Lcom/T2/T/T/T/T/T/T;->TB:Ljava/io/Writer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static synthetic TN(Lcom/T2/T/T/T/T/T/T;)Z
    .locals 1

    invoke-direct {p0}, Lcom/T2/T/T/T/T/T/T;->Tn()Z

    move-result v0

    return v0
.end method

.method private TR()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-wide v2, p0, Lcom/T2/T/T/T/T/T/T;->TW:J

    iget-wide v4, p0, Lcom/T2/T/T/T/T/T/T;->Tn:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/T2/T/T/T/T/T/T;->TP:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/T2/T/T/T/T/T/T;->T(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private TW()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget v1, p0, Lcom/T2/T/T/T/T/T/T;->TJ:I

    iget v2, p0, Lcom/T2/T/T/T/T/T/T;->TG:I

    if-gt v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/T2/T/T/T/T/T/T;->TP:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/T2/T/T/T/T/T/T;->T(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private Te()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v4, Lcom/T2/T/T/T/T/T/T2;

    new-instance v7, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/T2/T/T/T/T/T/T;->TN:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v8, Lcom/T2/T/T/T/T/T/TN;->T:Ljava/nio/charset/Charset;

    invoke-direct {v4, v7, v8}, Lcom/T2/T/T/T/T/T/T2;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    :try_start_0
    invoke-virtual {v4}, Lcom/T2/T/T/T/T/T/T2;->T()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/T2/T/T/T/T/T/T2;->T()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/T2/T/T/T/T/T/T2;->T()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lcom/T2/T/T/T/T/T/T2;->T()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/T2/T/T/T/T/T/T2;->T()Ljava/lang/String;

    move-result-object v1

    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/T2/T/T/T/T/T/T;->Ty:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/T2/T/T/T/T/T/T;->TR:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, ""

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "unexpected journal header: ["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v7

    invoke-static {v4}, Lcom/T2/T/T/T/T/T/TN;->T(Ljava/io/Closeable;)V

    throw v7

    :cond_1
    const/4 v2, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {v4}, Lcom/T2/T/T/T/T/T/T2;->T()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/T2/T/T/T/T/T/T;->T3(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_2
    iget-object v7, p0, Lcom/T2/T/T/T/T/T/T;->TP:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->size()I

    move-result v7

    sub-int v7, v2, v7

    iput v7, p0, Lcom/T2/T/T/T/T/T/T;->Tr:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v4}, Lcom/T2/T/T/T/T/T/TN;->T(Ljava/io/Closeable;)V

    return-void
.end method

.method static synthetic Te(Lcom/T2/T/T/T/T/T/T;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/T2/T/T/T/T/T/T;->Ty()V

    return-void
.end method

.method private Tn()Z
    .locals 3

    const/16 v0, 0x7d0

    iget v1, p0, Lcom/T2/T/T/T/T/T/T;->Tr:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/T2/T/T/T/T/T/T;->Tr:I

    iget-object v2, p0, Lcom/T2/T/T/T/T/T/T;->TP:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic Tw(Lcom/T2/T/T/T/T/T/T;)I
    .locals 1

    iget v0, p0, Lcom/T2/T/T/T/T/T/T;->TR:I

    return v0
.end method

.method private Tw()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Lcom/T2/T/T/T/T/T/T;->Te:Ljava/io/File;

    invoke-static {v3}, Lcom/T2/T/T/T/T/T/T;->T(Ljava/io/File;)V

    iget-object v3, p0, Lcom/T2/T/T/T/T/T/T;->TP:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/T2/T/T/T/T/T/T$T3;

    invoke-static {v0}, Lcom/T2/T/T/T/T/T/T$T3;->T3(Lcom/T2/T/T/T/T/T/T$T3;)Lcom/T2/T/T/T/T/T/T$T;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Lcom/T2/T/T/T/T/T/T;->TR:I

    if-ge v2, v3, :cond_0

    iget-wide v4, p0, Lcom/T2/T/T/T/T/T/T;->TW:J

    invoke-static {v0}, Lcom/T2/T/T/T/T/T/T$T3;->TN(Lcom/T2/T/T/T/T/T/T$T3;)[J

    move-result-object v3

    aget-wide v6, v3, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/T2/T/T/T/T/T/T;->TW:J

    iget v3, p0, Lcom/T2/T/T/T/T/T/T;->TJ:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/T2/T/T/T/T/T/T;->TJ:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/T2/T/T/T/T/T/T$T3;->T(Lcom/T2/T/T/T/T/T/T$T3;Lcom/T2/T/T/T/T/T/T$T;)V

    const/4 v2, 0x0

    :goto_2
    iget v3, p0, Lcom/T2/T/T/T/T/T/T;->TR:I

    if-lt v2, v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v2}, Lcom/T2/T/T/T/T/T/T$T3;->T(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/T2/T/T/T/T/T/T;->T(Ljava/io/File;)V

    invoke-virtual {v0, v2}, Lcom/T2/T/T/T/T/T/T$T3;->T3(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/T2/T/T/T/T/T/T;->T(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method static synthetic Ty(Lcom/T2/T/T/T/T/T/T;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/T2/T/T/T/T/T/T;->T2:Ljava/io/File;

    return-object v0
.end method

.method private declared-synchronized Ty()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/T2/T/T/T/T/T/T;->TB:Ljava/io/Writer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/T2/T/T/T/T/T/T;->TB:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/T2/T/T/T/T/T/T;->Te:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v4, Lcom/T2/T/T/T/T/T/TN;->T:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v2, p0, Lcom/T2/T/T/T/T/T/T;->Ty:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v2, p0, Lcom/T2/T/T/T/T/T/T;->TR:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/T2/T/T/T/T/T/T;->TP:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    iget-object v2, p0, Lcom/T2/T/T/T/T/T/T;->TN:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/T2/T/T/T/T/T/T;->TN:Ljava/io/File;

    iget-object v3, p0, Lcom/T2/T/T/T/T/T/T;->Tw:Ljava/io/File;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/T2/T/T/T/T/T/T;->T(Ljava/io/File;Ljava/io/File;Z)V

    :cond_1
    iget-object v2, p0, Lcom/T2/T/T/T/T/T/T;->Te:Ljava/io/File;

    iget-object v3, p0, Lcom/T2/T/T/T/T/T/T;->TN:Ljava/io/File;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/T2/T/T/T/T/T/T;->T(Ljava/io/File;Ljava/io/File;Z)V

    iget-object v2, p0, Lcom/T2/T/T/T/T/T/T;->Tw:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/T2/T/T/T/T/T/T;->TN:Ljava/io/File;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v5, Lcom/T2/T/T/T/T/T/TN;->T:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v2, p0, Lcom/T2/T/T/T/T/T/T;->TB:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/T2/T/T/T/T/T/T$T3;

    invoke-static {v0}, Lcom/T2/T/T/T/T/T/T$T3;->T3(Lcom/T2/T/T/T/T/T/T$T3;)Lcom/T2/T/T/T/T/T/T$T;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DIRTY "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/T2/T/T/T/T/T/T$T3;->T2(Lcom/T2/T/T/T/T/T/T$T3;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_3
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CLEAN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/T2/T/T/T/T/T/T$T3;->T2(Lcom/T2/T/T/T/T/T/T$T3;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/T2/T/T/T/T/T/T$T3;->T()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public T()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/T2/T/T/T/T/T/T;->T2:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized T(Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/T2/T/T/T/T/T/T;->TG()V

    invoke-direct {p0, p1}, Lcom/T2/T/T/T/T/T/T;->T2(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/T2/T/T/T/T/T/T;->TP:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/T2/T/T/T/T/T/T$T3;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/T2/T/T/T/T/T/T$T3;->T3(Lcom/T2/T/T/T/T/T/T$T3;)Lcom/T2/T/T/T/T/T/T$T;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    monitor-exit p0

    return v3

    :cond_1
    const/4 v2, 0x0

    :goto_1
    :try_start_1
    iget v3, p0, Lcom/T2/T/T/T/T/T/T;->TR:I

    if-lt v2, v3, :cond_3

    iget v3, p0, Lcom/T2/T/T/T/T/T/T;->Tr:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/T2/T/T/T/T/T/T;->Tr:I

    iget-object v3, p0, Lcom/T2/T/T/T/T/T/T;->TB:Ljava/io/Writer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "REMOVE "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v3, p0, Lcom/T2/T/T/T/T/T/T;->TP:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/T2/T/T/T/T/T/T;->Tn()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/T2/T/T/T/T/T/T;->T3:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v4, p0, Lcom/T2/T/T/T/T/T/T;->TO:Ljava/util/concurrent/Callable;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v2}, Lcom/T2/T/T/T/T/T/T$T3;->T(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "failed to delete "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_4
    :try_start_2
    iget-wide v4, p0, Lcom/T2/T/T/T/T/T/T;->TW:J

    invoke-static {v0}, Lcom/T2/T/T/T/T/T/T$T3;->TN(Lcom/T2/T/T/T/T/T/T$T3;)[J

    move-result-object v3

    aget-wide v6, v3, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/T2/T/T/T/T/T/T;->TW:J

    iget v3, p0, Lcom/T2/T/T/T/T/T/T;->TJ:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/T2/T/T/T/T/T/T;->TJ:I

    invoke-static {v0}, Lcom/T2/T/T/T/T/T/T$T3;->TN(Lcom/T2/T/T/T/T/T/T$T3;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public declared-synchronized T2()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/T2/T/T/T/T/T/T;->TG:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized T3()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/T2/T/T/T/T/T/T;->Tn:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public TN()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/T2/T/T/T/T/T/T;->close()V

    iget-object v0, p0, Lcom/T2/T/T/T/T/T/T;->T2:Ljava/io/File;

    invoke-static {v0}, Lcom/T2/T/T/T/T/T/TN;->T(Ljava/io/File;)V

    return-void
.end method

.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/T2/T/T/T/T/T/T;->TB:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/T2/T/T/T/T/T/T;->TP:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/T2/T/T/T/T/T/T;->TR()V

    invoke-direct {p0}, Lcom/T2/T/T/T/T/T/T;->TW()V

    iget-object v1, p0, Lcom/T2/T/T/T/T/T/T;->TB:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/T2/T/T/T/T/T/T;->TB:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/T2/T/T/T/T/T/T$T3;

    invoke-static {v0}, Lcom/T2/T/T/T/T/T/T$T3;->T3(Lcom/T2/T/T/T/T/T/T$T3;)Lcom/T2/T/T/T/T/T/T$T;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/T2/T/T/T/T/T/T$T3;->T3(Lcom/T2/T/T/T/T/T/T$T3;)Lcom/T2/T/T/T/T/T/T$T;

    move-result-object v2

    invoke-virtual {v2}, Lcom/T2/T/T/T/T/T/T$T;->T()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
