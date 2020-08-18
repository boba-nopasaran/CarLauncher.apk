.class public Lcn/yunzhisheng/tts/online/q;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x65


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Lcn/yunzhisheng/tts/JniClient;->codeToString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "\u64ad\u653e\u5f02\u5e38"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method public static b(I)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcn/yunzhisheng/tts/online/q;->a(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9519\u8bef:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(I)Lcn/yunzhisheng/common/USCError;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcn/yunzhisheng/common/USCError;

    invoke-static {p0}, Lcn/yunzhisheng/tts/online/q;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/common/USCError;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method
