.class final Lcom/txznet/txz/util/TN$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/txz/util/TN;->T2(Lcom/txznet/txz/util/TN$T;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic T:Ljava/lang/String;

.field final synthetic T3:Lcom/txznet/txz/util/TN$T;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/txznet/txz/util/TN$T;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/txz/util/TN$1;->T:Ljava/lang/String;

    iput-object p2, p0, Lcom/txznet/txz/util/TN$1;->T3:Lcom/txznet/txz/util/TN$T;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    const/4 v7, 0x0

    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/txz/util/TN$1;->T:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/txz/util/TN$1;->T:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".chk"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_1

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "chk unzip file not exist: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/txz/util/TN$1;->T:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/txz/util/TN$1;->T3:Lcom/txznet/txz/util/TN$T;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/txznet/txz/util/TN$T;->T:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_2
    new-instance v15, Ljava/util/Properties;

    invoke-direct {v15}, Ljava/util/Properties;-><init>()V

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v15, v8}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v15}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v13

    const-string v17, "size"

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const-string v17, "key"

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const-string v17, "begin"

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const-string v17, "end"

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    :cond_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "chk file err: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/txz/util/TN$1;->T:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/txz/util/TN$1;->T3:Lcom/txznet/txz/util/TN$T;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/txznet/txz/util/TN$T;->T:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v8, :cond_3

    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_3
    :goto_1
    move-object v7, v8

    goto :goto_0

    :cond_4
    :try_start_5
    const-string v17, "size"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v20

    cmp-long v17, v18, v20

    if-eqz v17, :cond_6

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "check unzip file size not same: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/txz/util/TN$1;->T:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/txz/util/TN$1;->T3:Lcom/txznet/txz/util/TN$T;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/txznet/txz/util/TN$T;->T:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v8, :cond_5

    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_5
    :goto_2
    move-object v7, v8

    goto/16 :goto_0

    :cond_6
    :try_start_7
    const-string v17, "begin"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v17, "end"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v17, "key"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget-object v17, Lcom/txznet/comm/Te/T;->T3:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lcom/txznet/txz/util/TN;->T(Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    if-ltz v17, :cond_7

    sget-object v17, Lcom/txznet/comm/Te/T;->T3:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-static {v10, v0}, Lcom/txznet/txz/util/TN;->T(Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    if-gez v17, :cond_9

    :cond_7
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "check unzip file version not right: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/txz/util/TN$1;->T:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/txz/util/TN$1;->T3:Lcom/txznet/txz/util/TN$T;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/txznet/txz/util/TN$T;->T:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v8, :cond_8

    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_8
    :goto_3
    move-object v7, v8

    goto/16 :goto_0

    :cond_9
    :try_start_9
    invoke-static {v11}, Lcom/txznet/txz/util/T2;->T(Ljava/io/File;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "file"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/txznet/txz/util/T2;->T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_b

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "check unzip file key not right: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/txz/util/TN$1;->T:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/txz/util/TN$1;->T3:Lcom/txznet/txz/util/TN$T;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/txznet/txz/util/TN$T;->T:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v8, :cond_a

    :try_start_a
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :cond_a
    :goto_4
    move-object v7, v8

    goto/16 :goto_0

    :cond_b
    :try_start_b
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "check unzip file success: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/txz/util/TN$1;->T:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v8, :cond_d

    :try_start_c
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    move-object v7, v8

    goto/16 :goto_0

    :catch_0
    move-exception v17

    move-object v7, v8

    goto/16 :goto_0

    :catch_1
    move-exception v9

    :goto_5
    :try_start_d
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "check unzip file exception="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/txz/util/TN$1;->T:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/txz/util/TN$1;->T3:Lcom/txznet/txz/util/TN$T;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/txznet/txz/util/TN$T;->T:Z

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v7, :cond_0

    :try_start_e
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v17

    goto/16 :goto_0

    :catchall_0
    move-exception v17

    :goto_6
    if-eqz v7, :cond_c

    :try_start_f
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    :cond_c
    :goto_7
    throw v17

    :catch_3
    move-exception v17

    goto/16 :goto_0

    :catch_4
    move-exception v17

    goto/16 :goto_1

    :catch_5
    move-exception v17

    goto/16 :goto_2

    :catch_6
    move-exception v17

    goto/16 :goto_3

    :catch_7
    move-exception v17

    goto :goto_4

    :catch_8
    move-exception v18

    goto :goto_7

    :catchall_1
    move-exception v17

    move-object v7, v8

    goto :goto_6

    :catch_9
    move-exception v9

    move-object v7, v8

    goto :goto_5

    :cond_d
    move-object v7, v8

    goto/16 :goto_0
.end method
