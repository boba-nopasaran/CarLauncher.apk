.class public Lcom/txznet/comm/T3/T/TG;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/comm/T3/T/TG$T;
    }
.end annotation


# static fields
.field private static T:Lcom/txznet/comm/T3/T/TG$T;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/txznet/comm/T3/T/TG;->T:Lcom/txznet/comm/T3/T/TG$T;

    return-void
.end method

.method public static T(Ljava/lang/String;[B)V
    .locals 10

    sget-object v5, Lcom/txznet/comm/T3/T/TG;->T:Lcom/txznet/comm/T3/T/TG$T;

    if-nez v5, :cond_1

    const-string v5, "RecorderUtil"

    const-string v6, "recordCallBack == null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "end"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v2, Lcom/txznet/comm/TN/T;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v5}, Lcom/txznet/comm/TN/T;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/txznet/comm/T3/T/TG;->T:Lcom/txznet/comm/T3/T/TG$T;

    const-string v5, "length"

    const-class v7, Ljava/lang/Integer;

    invoke-virtual {v2, v5, v7}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/txznet/comm/T3/T/TG$T;->T(I)V

    goto :goto_0

    :cond_2
    const-string v5, "parse"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v2, Lcom/txznet/comm/TN/T;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v5}, Lcom/txznet/comm/TN/T;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/txznet/comm/T3/T/TG;->T:Lcom/txznet/comm/T3/T/TG$T;

    const-string v5, "length"

    const-class v6, Ljava/lang/Integer;

    invoke-virtual {v2, v5, v6}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v5, "text"

    const-class v6, Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "url"

    const-class v9, Ljava/lang/String;

    invoke-virtual {v2, v6, v9}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v8, v5, v6}, Lcom/txznet/comm/T3/T/TG$T;->T(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v5, "cancel"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/txznet/comm/T3/T/TG;->T:Lcom/txznet/comm/T3/T/TG$T;

    invoke-virtual {v5}, Lcom/txznet/comm/T3/T/TG$T;->TN()V

    goto :goto_0

    :cond_4
    const-string v5, "begin"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/txznet/comm/T3/T/TG;->T:Lcom/txznet/comm/T3/T/TG$T;

    invoke-virtual {v5}, Lcom/txznet/comm/T3/T/TG$T;->T()V

    goto :goto_0

    :cond_5
    const-string v5, "mute"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v3, 0x0

    :try_start_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_1
    sget-object v5, Lcom/txznet/comm/T3/T/TG;->T:Lcom/txznet/comm/T3/T/TG$T;

    invoke-virtual {v5, v3}, Lcom/txznet/comm/T3/T/TG$T;->TN(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v5, "RecorderUtil"

    const-string v6, "convert string to int error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    const-string v5, "mutetimeout"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Lcom/txznet/comm/T3/T/TG;->T:Lcom/txznet/comm/T3/T/TG$T;

    invoke-virtual {v5}, Lcom/txznet/comm/T3/T/TG$T;->T2()V

    goto/16 :goto_0

    :cond_7
    const-string v5, "speechtimeout"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Lcom/txznet/comm/T3/T/TG;->T:Lcom/txznet/comm/T3/T/TG$T;

    invoke-virtual {v5}, Lcom/txznet/comm/T3/T/TG$T;->T3()V

    goto/16 :goto_0

    :cond_8
    const-string v5, "volume"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v4, 0x0

    :try_start_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    :goto_2
    sget-object v5, Lcom/txznet/comm/T3/T/TG;->T:Lcom/txznet/comm/T3/T/TG$T;

    invoke-virtual {v5, v4}, Lcom/txznet/comm/T3/T/TG$T;->T2(I)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v5, "RecorderUtil"

    const-string v6, "convert string to int error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    const-string v5, "error"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v1, 0x0

    :try_start_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    :goto_3
    sget-object v5, Lcom/txznet/comm/T3/T/TG;->T:Lcom/txznet/comm/T3/T/TG$T;

    invoke-virtual {v5, v1}, Lcom/txznet/comm/T3/T/TG$T;->T3(I)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v5, "RecorderUtil"

    const-string v6, "convert string to int error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    const-string v5, "mp3buf"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/txznet/comm/T3/T/TG;->T:Lcom/txznet/comm/T3/T/TG$T;

    invoke-virtual {v5, p1}, Lcom/txznet/comm/T3/T/TG$T;->T([B)V

    goto/16 :goto_0
.end method
