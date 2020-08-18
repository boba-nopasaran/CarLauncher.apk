.class public Lcom/txznet/comm/ui/TG/T;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static T:I

.field private static T0:Ljava/lang/Boolean;

.field static T2:I

.field static T3:Z

.field static T7:I

.field static TB:I

.field static TG:I

.field private static TH:Ljava/lang/String;

.field public static TJ:I

.field private static TL:Ljava/lang/String;

.field static TN:I

.field private static TO:I

.field static TP:I

.field private static TQ:Ljava/lang/String;

.field static TR:I

.field public static TW:I

.field static Te:I

.field static Tn:I

.field private static To:Ljava/lang/String;

.field static Tr:I

.field static Tw:I

.field static Ty:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    sput v1, Lcom/txznet/comm/ui/TG/T;->TO:I

    const/4 v0, 0x2

    sput v0, Lcom/txznet/comm/ui/TG/T;->T:I

    sput-boolean v1, Lcom/txznet/comm/ui/TG/T;->T3:Z

    const/16 v0, 0x78

    sput v0, Lcom/txznet/comm/ui/TG/T;->T2:I

    sput v1, Lcom/txznet/comm/ui/TG/T;->TN:I

    sput-object v2, Lcom/txznet/comm/ui/TG/T;->TH:Ljava/lang/String;

    sput-object v2, Lcom/txznet/comm/ui/TG/T;->T0:Ljava/lang/Boolean;

    return-void
.end method

.method public static T()I
    .locals 1

    sget v0, Lcom/txznet/comm/ui/TG/T;->T:I

    return v0
.end method

.method public static T(Z)I
    .locals 6

    const/4 v3, 0x1

    sget v1, Lcom/txznet/comm/ui/TG/T;->TB:I

    if-lez v1, :cond_0

    if-nez p0, :cond_0

    sget v1, Lcom/txznet/comm/ui/TG/T;->TB:I

    :goto_0
    return v1

    :cond_0
    sget v1, Lcom/txznet/comm/ui/TG/T;->TG:I

    sget v2, Lcom/txznet/comm/ui/TG/T;->T2:I

    if-le v1, v2, :cond_1

    sget v1, Lcom/txznet/comm/ui/TG/T;->T2:I

    sput v1, Lcom/txznet/comm/ui/TG/T;->TG:I

    :cond_1
    sget v1, Lcom/txznet/comm/ui/TG/T;->TW:I

    if-lez v1, :cond_3

    sget v1, Lcom/txznet/comm/ui/TG/T;->TG:I

    if-nez v1, :cond_2

    sput v3, Lcom/txznet/comm/ui/TG/T;->TG:I

    :cond_2
    sget v1, Lcom/txznet/comm/ui/TG/T;->TW:I

    sget v2, Lcom/txznet/comm/ui/TG/T;->TG:I

    div-int v0, v1, v2

    sget v1, Lcom/txznet/comm/ui/TG/T;->TR:I

    if-le v0, v1, :cond_5

    sget v0, Lcom/txznet/comm/ui/TG/T;->TR:I

    sget-boolean v1, Lcom/txznet/comm/ui/TG/T;->T3:Z

    if-eqz v1, :cond_4

    sget v1, Lcom/txznet/comm/ui/TG/T;->TW:I

    div-int/2addr v1, v0

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    sput v1, Lcom/txznet/comm/ui/TG/T;->TB:I

    :goto_1
    sput v0, Lcom/txznet/comm/ui/TG/T;->TP:I

    sget v1, Lcom/txznet/comm/ui/TG/T;->TP:I

    sget v2, Lcom/txznet/comm/ui/TG/T;->TB:I

    mul-int/2addr v1, v2

    sput v1, Lcom/txznet/comm/ui/TG/T;->Tr:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RectHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/txznet/comm/ui/TG/T;->TW:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",ItemH:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/txznet/comm/ui/TG/T;->TB:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.record.ui.event.display.count"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/txznet/comm/ui/TG/T;->TP:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    sget v1, Lcom/txznet/comm/ui/TG/T;->TB:I

    goto/16 :goto_0

    :cond_4
    sget v1, Lcom/txznet/comm/ui/TG/T;->TG:I

    sput v1, Lcom/txznet/comm/ui/TG/T;->TB:I

    goto :goto_1

    :cond_5
    if-nez v0, :cond_7

    sget v1, Lcom/txznet/comm/ui/TG/T;->TB:I

    if-lez v1, :cond_6

    sget v1, Lcom/txznet/comm/ui/TG/T;->TB:I

    goto/16 :goto_0

    :cond_6
    sput v3, Lcom/txznet/comm/ui/TG/T;->TB:I

    :cond_7
    sget v1, Lcom/txznet/comm/ui/TG/T;->TW:I

    div-int/2addr v1, v0

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    sput v1, Lcom/txznet/comm/ui/TG/T;->TB:I

    goto :goto_1
.end method

.method public static T(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6

    const/4 v1, 0x0

    const-string v3, "#"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FF"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/16 v3, 0x10

    :try_start_0
    invoke-static {v0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    move-object v3, v1

    :goto_1
    return-object v3

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "number format error!"

    invoke-static {v3}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static T(Ljava/io/File;)Ljava/lang/String;
    .locals 9

    const/4 v3, 0x0

    const/4 v6, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, ""

    :goto_0
    return-object v8

    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v6, v7

    move-object v3, v4

    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_3
    const/4 v8, 0x0

    goto :goto_0

    :cond_3
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v8

    if-eqz v4, :cond_4

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    :cond_4
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_5
    :goto_4
    move-object v6, v7

    move-object v3, v4

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v3, :cond_6

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_7
    :goto_6
    throw v8

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception v8

    move-object v3, v4

    goto :goto_5

    :catchall_2
    move-exception v8

    move-object v6, v7

    move-object v3, v4

    goto :goto_5

    :catch_4
    move-exception v2

    goto :goto_2

    :catch_5
    move-exception v2

    move-object v3, v4

    goto :goto_2
.end method

.method public static T(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v4, p0

    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_1

    :cond_0
    move-object v5, v4

    :goto_0
    return-object v5

    :cond_1
    invoke-static {v7}, Lcom/txznet/comm/ui/TG/T;->T(Ljava/io/File;)Ljava/lang/String;

    move-result-object v11

    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v14, "attrs"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v4, :cond_2

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v4, v5

    :cond_2
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v8, v14, :cond_4

    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_2
    :pswitch_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/txznet/comm/ui/TG/T;->T3(Ljava/lang/String;)I

    move-result v14

    packed-switch v14, :pswitch_data_0

    :pswitch_1
    goto :goto_2

    :pswitch_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/txznet/comm/ui/TG/T;->T(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v4, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    move-object v5, v4

    goto :goto_0

    :pswitch_3
    :try_start_1
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static T(I)V
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x1

    sput v0, Lcom/txznet/comm/ui/TG/T;->TO:I

    :goto_0
    return-void

    :pswitch_0
    sput p0, Lcom/txznet/comm/ui/TG/T;->TO:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static T(Landroid/view/View;)V
    .locals 2

    const-string v1, "orientation"

    invoke-static {v1}, Lcom/txznet/comm/ui/TG/T3;->Te(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "horizontal"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/txznet/comm/ui/TG/T;->T2(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "vertical"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/txznet/comm/ui/TG/T;->T3(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/txznet/comm/ui/TG/T;->TN(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static T2()I
    .locals 1

    sget v0, Lcom/txznet/comm/ui/TG/T;->TO:I

    return v0
.end method

.method private static T2(I)V
    .locals 2

    if-gtz p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T3()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T2()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sput p0, Lcom/txznet/comm/ui/TG/T;->TJ:I

    sget v0, Lcom/txznet/comm/ui/TG/T;->Te:I

    sub-int v0, p0, v0

    sput v0, Lcom/txznet/comm/ui/TG/T;->TW:I

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T2()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_3
    sget v0, Lcom/txznet/comm/ui/TG/T;->Tn:I

    sub-int v0, p0, v0

    sput v0, Lcom/txznet/comm/ui/TG/T;->TJ:I

    sget v0, Lcom/txznet/comm/ui/TG/T;->Te:I

    sub-int v0, p0, v0

    sget v1, Lcom/txznet/comm/ui/TG/T;->Tn:I

    sub-int/2addr v0, v1

    sput v0, Lcom/txznet/comm/ui/TG/T;->TW:I

    goto :goto_0

    :pswitch_4
    sget v0, Lcom/txznet/comm/ui/TG/T;->Tn:I

    sub-int v0, p0, v0

    sget v1, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sub-int/2addr v0, v1

    sput v0, Lcom/txznet/comm/ui/TG/T;->TJ:I

    sget v0, Lcom/txznet/comm/ui/TG/T;->Te:I

    sub-int v0, p0, v0

    sget v1, Lcom/txznet/comm/ui/TG/T;->Tn:I

    sub-int/2addr v0, v1

    sget v1, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sub-int/2addr v0, v1

    sput v0, Lcom/txznet/comm/ui/TG/T;->TW:I

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T()I

    move-result v0

    packed-switch v0, :pswitch_data_3

    sput p0, Lcom/txznet/comm/ui/TG/T;->TJ:I

    sget v0, Lcom/txznet/comm/ui/TG/T;->Te:I

    sub-int v0, p0, v0

    sget v1, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sub-int/2addr v0, v1

    sput v0, Lcom/txznet/comm/ui/TG/T;->TW:I

    goto :goto_0

    :pswitch_6
    sput p0, Lcom/txznet/comm/ui/TG/T;->TJ:I

    sget v0, Lcom/txznet/comm/ui/TG/T;->Te:I

    sub-int v0, p0, v0

    sget v1, Lcom/txznet/comm/ui/TG/T;->Tn:I

    sub-int/2addr v0, v1

    sput v0, Lcom/txznet/comm/ui/TG/T;->TW:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method public static T2(Landroid/view/View;)V
    .locals 11

    const/4 v10, 0x0

    const v9, 0x3fd1eb85    # 1.64f

    const/4 v8, 0x4

    const/16 v7, 0x1e0

    const/4 v6, 0x1

    const-string v4, "y64"

    invoke-static {v4}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/txznet/comm/ui/TG/T;->Te:I

    const-string v4, "y66"

    invoke-static {v4}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/txznet/comm/ui/TG/T;->Tw:I

    const-string v4, "y80"

    invoke-static {v4}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    const-string v4, "y100"

    invoke-static {v4}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/txznet/comm/ui/TG/T;->Tn:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    int-to-float v4, v3

    int-to-float v5, v0

    div-float v1, v4, v5

    sput v6, Lcom/txznet/comm/ui/TG/T;->TN:I

    if-ge v3, v7, :cond_0

    if-ge v0, v7, :cond_0

    sput v6, Lcom/txznet/comm/ui/TG/T;->T:I

    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    sput v8, Lcom/txznet/comm/ui/TG/T;->TR:I

    sput-boolean v6, Lcom/txznet/comm/ui/TG/T;->T3:Z

    :goto_0
    invoke-static {v0}, Lcom/txznet/comm/ui/TG/T;->T2(I)V

    invoke-static {v6}, Lcom/txznet/comm/ui/TG/T;->T(Z)I

    return-void

    :cond_0
    const/16 v4, 0x316

    if-lt v3, v4, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v4

    if-gtz v4, :cond_2

    :cond_1
    cmpl-float v4, v1, v9

    if-lez v4, :cond_6

    :cond_2
    const/16 v4, 0x190

    if-lt v0, v4, :cond_3

    if-ge v0, v7, :cond_3

    sput v6, Lcom/txznet/comm/ui/TG/T;->T:I

    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    sput-boolean v6, Lcom/txznet/comm/ui/TG/T;->T3:Z

    :goto_1
    sput v8, Lcom/txznet/comm/ui/TG/T;->TR:I

    goto :goto_0

    :cond_3
    if-lt v0, v7, :cond_4

    const/16 v4, 0x258

    if-ge v0, v4, :cond_4

    const/4 v4, 0x3

    sput v4, Lcom/txznet/comm/ui/TG/T;->T:I

    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    sput-boolean v6, Lcom/txznet/comm/ui/TG/T;->T3:Z

    goto :goto_1

    :cond_4
    const/16 v4, 0x258

    if-lt v0, v4, :cond_5

    sput v8, Lcom/txznet/comm/ui/TG/T;->T:I

    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    sput-boolean v10, Lcom/txznet/comm/ui/TG/T;->T3:Z

    goto :goto_1

    :cond_5
    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    sput-boolean v6, Lcom/txznet/comm/ui/TG/T;->T3:Z

    goto :goto_1

    :cond_6
    if-lt v3, v7, :cond_7

    const/16 v4, 0x320

    if-lt v3, v4, :cond_8

    :cond_7
    cmpg-float v4, v1, v9

    if-gtz v4, :cond_9

    :cond_8
    const/4 v4, 0x3

    sput v4, Lcom/txznet/comm/ui/TG/T;->T:I

    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    sput v8, Lcom/txznet/comm/ui/TG/T;->TR:I

    sput-boolean v10, Lcom/txznet/comm/ui/TG/T;->T3:Z

    goto :goto_0

    :cond_9
    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    sput-boolean v6, Lcom/txznet/comm/ui/TG/T;->T3:Z

    goto :goto_0
.end method

.method public static T3()I
    .locals 1

    sget v0, Lcom/txznet/comm/ui/TG/T;->TN:I

    return v0
.end method

.method public static T3(Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "comment"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, -0x2

    goto :goto_0

    :cond_2
    const-string v1, "color"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "size"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic T3(I)V
    .locals 0

    invoke-static {p0}, Lcom/txznet/comm/ui/TG/T;->T2(I)V

    return-void
.end method

.method public static T3(Landroid/view/View;)V
    .locals 11

    const/4 v10, 0x3

    const v9, 0x3fd1eb85    # 1.64f

    const/4 v8, 0x4

    const/16 v7, 0x1e0

    const/4 v6, 0x1

    const-string v4, "y64"

    invoke-static {v4}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/txznet/comm/ui/TG/T;->Te:I

    const-string v4, "y66"

    invoke-static {v4}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/txznet/comm/ui/TG/T;->Tw:I

    const-string v4, "y80"

    invoke-static {v4}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    const-string v4, "y100"

    invoke-static {v4}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/txznet/comm/ui/TG/T;->Tn:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    int-to-float v4, v3

    int-to-float v5, v0

    div-float v1, v4, v5

    const/4 v4, 0x2

    sput v4, Lcom/txznet/comm/ui/TG/T;->TN:I

    if-ge v3, v7, :cond_0

    if-ge v0, v7, :cond_0

    sput v6, Lcom/txznet/comm/ui/TG/T;->T:I

    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    sput v8, Lcom/txznet/comm/ui/TG/T;->TR:I

    sput-boolean v6, Lcom/txznet/comm/ui/TG/T;->T3:Z

    :goto_0
    invoke-static {v0}, Lcom/txznet/comm/ui/TG/T;->T2(I)V

    invoke-static {v6}, Lcom/txznet/comm/ui/TG/T;->T(Z)I

    return-void

    :cond_0
    const/16 v4, 0x316

    if-lt v3, v4, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v4

    if-gtz v4, :cond_2

    :cond_1
    cmpl-float v4, v1, v9

    if-lez v4, :cond_6

    :cond_2
    const/16 v4, 0x190

    if-lt v0, v4, :cond_3

    if-ge v0, v7, :cond_3

    sput v6, Lcom/txznet/comm/ui/TG/T;->T:I

    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    sput-boolean v6, Lcom/txznet/comm/ui/TG/T;->T3:Z

    :goto_1
    sput v8, Lcom/txznet/comm/ui/TG/T;->TR:I

    goto :goto_0

    :cond_3
    if-lt v0, v7, :cond_4

    const/16 v4, 0x258

    if-ge v0, v4, :cond_4

    sput v10, Lcom/txznet/comm/ui/TG/T;->T:I

    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    sput-boolean v6, Lcom/txznet/comm/ui/TG/T;->T3:Z

    goto :goto_1

    :cond_4
    const/16 v4, 0x258

    if-lt v0, v4, :cond_5

    sput v8, Lcom/txznet/comm/ui/TG/T;->T:I

    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    const/4 v4, 0x0

    sput-boolean v4, Lcom/txznet/comm/ui/TG/T;->T3:Z

    goto :goto_1

    :cond_5
    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    sput-boolean v6, Lcom/txznet/comm/ui/TG/T;->T3:Z

    goto :goto_1

    :cond_6
    if-lt v3, v7, :cond_7

    const/16 v4, 0x320

    if-lt v3, v4, :cond_8

    :cond_7
    cmpg-float v4, v1, v9

    if-gtz v4, :cond_9

    :cond_8
    sput v10, Lcom/txznet/comm/ui/TG/T;->T:I

    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    sput v8, Lcom/txznet/comm/ui/TG/T;->TR:I

    sput-boolean v6, Lcom/txznet/comm/ui/TG/T;->T3:Z

    goto :goto_0

    :cond_9
    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    sput-boolean v6, Lcom/txznet/comm/ui/TG/T;->T3:Z

    goto :goto_0
.end method

.method public static TN()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/txznet/comm/ui/TG/T;->To:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcom/txznet/comm/ui/TG/T;->TH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "theme_package"

    invoke-static {v0}, Lcom/txznet/comm/ui/TG/T3;->Te(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/txznet/comm/ui/TG/T;->TH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mThemePackage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/txznet/comm/ui/TG/T;->TH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/txznet/comm/ui/TG/T;->TH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/txznet/comm/ui/TG/T;->TH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".view."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/txznet/comm/ui/TG/T;->To:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/txznet/comm/ui/TG/T;->To:Ljava/lang/String;

    return-object v0
.end method

.method public static TN(Landroid/view/View;)V
    .locals 11

    const/4 v10, 0x2

    const v9, 0x3fd1eb85    # 1.64f

    const/4 v8, 0x4

    const/16 v7, 0x1e0

    const/4 v6, 0x1

    const-string v4, "y64"

    invoke-static {v4}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/txznet/comm/ui/TG/T;->Te:I

    const-string v4, "y66"

    invoke-static {v4}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/txznet/comm/ui/TG/T;->Tw:I

    const-string v4, "y80"

    invoke-static {v4}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    const-string v4, "y100"

    invoke-static {v4}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/txznet/comm/ui/TG/T;->Tn:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    int-to-float v4, v3

    int-to-float v5, v0

    div-float v1, v4, v5

    if-ge v3, v7, :cond_0

    if-ge v0, v7, :cond_0

    sput v6, Lcom/txznet/comm/ui/TG/T;->T:I

    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    sput v8, Lcom/txznet/comm/ui/TG/T;->TR:I

    sput-boolean v6, Lcom/txznet/comm/ui/TG/T;->T3:Z

    :goto_0
    invoke-static {v0}, Lcom/txznet/comm/ui/TG/T;->T2(I)V

    invoke-static {v6}, Lcom/txznet/comm/ui/TG/T;->T(Z)I

    return-void

    :cond_0
    const/16 v4, 0x316

    if-lt v3, v4, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v4

    if-gtz v4, :cond_2

    :cond_1
    cmpl-float v4, v1, v9

    if-lez v4, :cond_6

    :cond_2
    const/16 v4, 0x190

    if-lt v0, v4, :cond_3

    if-ge v0, v7, :cond_3

    sput v6, Lcom/txznet/comm/ui/TG/T;->T:I

    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    sput-boolean v6, Lcom/txznet/comm/ui/TG/T;->T3:Z

    :goto_1
    sput v6, Lcom/txznet/comm/ui/TG/T;->TN:I

    sput v8, Lcom/txznet/comm/ui/TG/T;->TR:I

    goto :goto_0

    :cond_3
    if-lt v0, v7, :cond_4

    const/16 v4, 0x258

    if-ge v0, v4, :cond_4

    const/4 v4, 0x3

    sput v4, Lcom/txznet/comm/ui/TG/T;->T:I

    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    sput-boolean v6, Lcom/txznet/comm/ui/TG/T;->T3:Z

    goto :goto_1

    :cond_4
    const/16 v4, 0x258

    if-lt v0, v4, :cond_5

    sput v8, Lcom/txznet/comm/ui/TG/T;->T:I

    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    const/4 v4, 0x0

    sput-boolean v4, Lcom/txznet/comm/ui/TG/T;->T3:Z

    goto :goto_1

    :cond_5
    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    sput-boolean v6, Lcom/txznet/comm/ui/TG/T;->T3:Z

    goto :goto_1

    :cond_6
    if-lt v3, v7, :cond_7

    const/16 v4, 0x320

    if-lt v3, v4, :cond_8

    :cond_7
    cmpg-float v4, v1, v9

    if-gtz v4, :cond_9

    :cond_8
    const/4 v4, 0x3

    sput v4, Lcom/txznet/comm/ui/TG/T;->T:I

    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    sput v10, Lcom/txznet/comm/ui/TG/T;->TN:I

    sput v8, Lcom/txznet/comm/ui/TG/T;->TR:I

    sput-boolean v6, Lcom/txznet/comm/ui/TG/T;->T3:Z

    goto :goto_0

    :cond_9
    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    sput-boolean v6, Lcom/txznet/comm/ui/TG/T;->T3:Z

    sput v10, Lcom/txznet/comm/ui/TG/T;->T:I

    goto :goto_0
.end method

.method public static Te()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/txznet/comm/ui/TG/T;->TQ:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcom/txznet/comm/ui/TG/T;->TH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "theme_package"

    invoke-static {v0}, Lcom/txznet/comm/ui/TG/T3;->Te(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/txznet/comm/ui/TG/T;->TH:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/txznet/comm/ui/TG/T;->TH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/txznet/comm/ui/TG/T;->TH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".config."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/txznet/comm/ui/TG/T;->TQ:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/txznet/comm/ui/TG/T;->TQ:Ljava/lang/String;

    return-object v0
.end method

.method public static Te(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/txznet/comm/ui/TG/T$1;

    invoke-direct {v1, p0}, Lcom/txznet/comm/ui/TG/T$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static Tw()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/txznet/comm/ui/TG/T;->TL:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcom/txznet/comm/ui/TG/T;->TH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "theme_package"

    invoke-static {v0}, Lcom/txznet/comm/ui/TG/T3;->Te(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/txznet/comm/ui/TG/T;->TH:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/txznet/comm/ui/TG/T;->TH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/txznet/comm/ui/TG/T;->TH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".keyevent.KeyEventDispatcher"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/txznet/comm/ui/TG/T;->TL:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/txznet/comm/ui/TG/T;->TL:Ljava/lang/String;

    return-object v0
.end method
