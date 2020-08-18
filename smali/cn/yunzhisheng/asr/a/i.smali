.class public Lcn/yunzhisheng/asr/a/i;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcn/yunzhisheng/asr/a/a;

.field public static b:Lcn/yunzhisheng/asr/a/a;

.field public static c:Lcn/yunzhisheng/asr/a/a;

.field public static d:Lcn/yunzhisheng/asr/a/a;

.field public static e:Lcn/yunzhisheng/asr/a/a;

.field public static f:Lcn/yunzhisheng/asr/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x232c

    const/16 v4, 0x2329

    const/16 v3, 0x50

    new-instance v0, Lcn/yunzhisheng/asr/a/a;

    const-string v1, "v2.hivoice.cn"

    const-string v2, "117.121.49.44"

    invoke-direct {v0, v1, v3, v2, v3}, Lcn/yunzhisheng/asr/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcn/yunzhisheng/asr/a/i;->a:Lcn/yunzhisheng/asr/a/a;

    new-instance v0, Lcn/yunzhisheng/asr/a/a;

    const-string v1, "v_eng.hivoice.cn"

    const-string v2, "117.121.55.43"

    invoke-direct {v0, v1, v3, v2, v3}, Lcn/yunzhisheng/asr/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcn/yunzhisheng/asr/a/i;->b:Lcn/yunzhisheng/asr/a/a;

    new-instance v0, Lcn/yunzhisheng/asr/a/a;

    const-string v1, "v_cnt.hivoice.cn"

    const-string v2, "117.121.55.41"

    invoke-direct {v0, v1, v3, v2, v3}, Lcn/yunzhisheng/asr/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcn/yunzhisheng/asr/a/i;->c:Lcn/yunzhisheng/asr/a/a;

    new-instance v0, Lcn/yunzhisheng/asr/a/a;

    const-string v1, "eval.hivoice.cn"

    const-string v2, "140.207.193.59"

    invoke-direct {v0, v1, v3, v2, v3}, Lcn/yunzhisheng/asr/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcn/yunzhisheng/asr/a/i;->d:Lcn/yunzhisheng/asr/a/a;

    new-instance v0, Lcn/yunzhisheng/asr/a/a;

    const-string v1, "117.121.55.39"

    const-string v2, "117.121.55.39"

    invoke-direct {v0, v1, v4, v2, v4}, Lcn/yunzhisheng/asr/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcn/yunzhisheng/asr/a/i;->e:Lcn/yunzhisheng/asr/a/a;

    new-instance v0, Lcn/yunzhisheng/asr/a/a;

    const-string v1, "v_zhen.hivoice.cn"

    const-string v2, "v_zhen.hivoice.cn"

    invoke-direct {v0, v1, v5, v2, v5}, Lcn/yunzhisheng/asr/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcn/yunzhisheng/asr/a/i;->f:Lcn/yunzhisheng/asr/a/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcn/yunzhisheng/asr/a/a;
    .locals 1

    const-string v0, "english"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/yunzhisheng/asr/a/i;->b:Lcn/yunzhisheng/asr/a/a;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "cantonese"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/yunzhisheng/asr/a/i;->c:Lcn/yunzhisheng/asr/a/a;

    goto :goto_0

    :cond_1
    const-string v0, "oral"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcn/yunzhisheng/asr/a/i;->d:Lcn/yunzhisheng/asr/a/a;

    goto :goto_0

    :cond_2
    const-string v0, "cn_en_mix"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcn/yunzhisheng/asr/a/i;->f:Lcn/yunzhisheng/asr/a/a;

    goto :goto_0

    :cond_3
    sget-object v0, Lcn/yunzhisheng/asr/a/i;->a:Lcn/yunzhisheng/asr/a/a;

    goto :goto_0
.end method
