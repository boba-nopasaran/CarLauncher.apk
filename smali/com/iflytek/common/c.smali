.class final Lcom/iflytek/common/c;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/iflytek/cloud/thirdparty/aQ;


# direct methods
.method protected static a()Lcom/iflytek/cloud/thirdparty/aQ;
    .locals 2

    sget-object v0, Lcom/iflytek/common/c;->a:Lcom/iflytek/cloud/thirdparty/aQ;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iflytek/common/c;->a:Lcom/iflytek/cloud/thirdparty/aQ;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "com.iflytek.common.push.impl.PushImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/aQ;

    sput-object v0, Lcom/iflytek/common/c;->a:Lcom/iflytek/cloud/thirdparty/aQ;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/iflytek/common/c;->a:Lcom/iflytek/cloud/thirdparty/aQ;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "PushFactory"

    const-string v1, "getPushInstance not found push instance."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
