.class final Lcom/txznet/txz/util/TN$3;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/txz/util/TN;->T3(Lcom/txznet/txz/util/TN$T;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic T:Ljava/lang/String;

.field final synthetic T2:Ljava/util/zip/ZipFile;

.field final synthetic T3:Ljava/util/zip/ZipEntry;

.field final synthetic TN:Lcom/txznet/txz/util/TN$T;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;Lcom/txznet/txz/util/TN$T;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/txz/util/TN$3;->T:Ljava/lang/String;

    iput-object p2, p0, Lcom/txznet/txz/util/TN$3;->T3:Ljava/util/zip/ZipEntry;

    iput-object p3, p0, Lcom/txznet/txz/util/TN$3;->T2:Ljava/util/zip/ZipFile;

    iput-object p4, p0, Lcom/txznet/txz/util/TN$3;->TN:Lcom/txznet/txz/util/TN$T;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    const/4 v2, 0x1

    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/txznet/txz/util/TN$3;->T:Ljava/lang/String;

    invoke-direct {v6, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/txznet/txz/util/TN$3;->T3:Ljava/util/zip/ZipEntry;

    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v18

    cmp-long v15, v16, v18

    if-eqz v15, :cond_3

    const/4 v2, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "check unzip file not same size["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/txz/util/TN$3;->T3:Ljava/util/zip/ZipEntry;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/txz/util/TN$3;->T:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v8, :cond_0

    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_0
    :goto_1
    if-eqz v10, :cond_1

    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_1
    :goto_2
    if-nez v2, :cond_2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "check unzip file not same: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/txz/util/TN$3;->T:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/txznet/txz/util/TN$3;->TN:Lcom/txznet/txz/util/TN$T;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/txznet/txz/util/TN$T;->T:Z

    :cond_2
    return-void

    :cond_3
    :try_start_3
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/txznet/txz/util/TN$3;->T:Ljava/lang/String;

    invoke-direct {v9, v15}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/txznet/txz/util/TN$3;->T2:Ljava/util/zip/ZipFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/txz/util/TN$3;->T3:Ljava/util/zip/ZipEntry;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/txznet/txz/util/TN$3;->TN:Lcom/txznet/txz/util/TN$T;

    iget-object v3, v15, Lcom/txznet/txz/util/TN$T;->T3:[B

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/txznet/txz/util/TN$3;->TN:Lcom/txznet/txz/util/TN$T;

    iget-object v4, v15, Lcom/txznet/txz/util/TN$T;->T2:[B

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_3
    const/4 v11, 0x0

    :goto_4
    if-nez v11, :cond_4

    array-length v15, v3

    add-int/lit8 v15, v15, 0x0

    invoke-virtual {v9, v3, v13, v15}, Ljava/io/FileInputStream;->read([BII)I

    move-result v11

    goto :goto_4

    :cond_4
    if-nez v13, :cond_5

    if-gez v11, :cond_5

    move-object v8, v9

    goto :goto_0

    :cond_5
    add-int/lit8 v13, v11, 0x0

    :goto_5
    if-ge v14, v13, :cond_6

    sub-int v15, v13, v14

    invoke-virtual {v10, v4, v14, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    if-gez v12, :cond_7

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "check unzip read zip file error: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/txz/util/TN$3;->T3:Ljava/util/zip/ZipEntry;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_6
    if-nez v2, :cond_8

    move-object v8, v9

    goto/16 :goto_0

    :cond_7
    add-int/2addr v14, v12

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    :goto_6
    if-ge v7, v13, :cond_9

    aget-byte v15, v3, v7

    aget-byte v16, v4, v7

    move/from16 v0, v16

    if-eq v15, v0, :cond_a

    const/4 v2, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "check unzip file not same byte at "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/txz/util/TN$3;->T:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_9
    if-nez v2, :cond_b

    move-object v8, v9

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_b
    const/4 v14, 0x0

    move v13, v14

    const-wide/16 v16, 0x14

    :try_start_5
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_3

    :catch_0
    move-exception v5

    :try_start_6
    const-string v15, "sleep exception"

    invoke-static {v15}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_3

    :catch_1
    move-exception v5

    move-object v8, v9

    :goto_7
    const/4 v2, 0x0

    :try_start_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "check unzip file exception: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/txz/util/TN$3;->T:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v8, :cond_c

    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_c
    :goto_8
    if-eqz v10, :cond_1

    :try_start_9
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v15

    goto/16 :goto_2

    :catchall_0
    move-exception v15

    :goto_9
    if-eqz v8, :cond_d

    :try_start_a
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :cond_d
    :goto_a
    if-eqz v10, :cond_e

    :try_start_b
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :cond_e
    :goto_b
    throw v15

    :catch_3
    move-exception v15

    goto/16 :goto_1

    :catch_4
    move-exception v15

    goto/16 :goto_2

    :catch_5
    move-exception v15

    goto :goto_8

    :catch_6
    move-exception v16

    goto :goto_a

    :catch_7
    move-exception v16

    goto :goto_b

    :catchall_1
    move-exception v15

    move-object v8, v9

    goto :goto_9

    :catch_8
    move-exception v5

    goto :goto_7
.end method
