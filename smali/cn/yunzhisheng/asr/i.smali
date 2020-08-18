.class public Lcn/yunzhisheng/asr/i;
.super Ljava/lang/Object;


# static fields
.field public static a:J = 0x0L

.field public static b:J = 0x0L

.field public static final c:I = 0x64

.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x3


# instance fields
.field public d:I

.field private h:J

.field private i:J

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1388

    sput-wide v0, Lcn/yunzhisheng/asr/i;->a:J

    const-wide/16 v0, 0x7d0

    sput-wide v0, Lcn/yunzhisheng/asr/i;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x3e80

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcn/yunzhisheng/asr/i;->j:I

    iput v0, p0, Lcn/yunzhisheng/asr/i;->d:I

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 5

    const/16 v4, 0x3e80

    iget v0, p0, Lcn/yunzhisheng/asr/i;->j:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    iput v4, p0, Lcn/yunzhisheng/asr/i;->d:I

    :cond_0
    :goto_0
    iget v0, p0, Lcn/yunzhisheng/asr/i;->d:I

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcn/yunzhisheng/asr/i;->c()J

    move-result-wide v0

    sget-wide v2, Lcn/yunzhisheng/asr/i;->a:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const/16 v0, 0x1f40

    iput v0, p0, Lcn/yunzhisheng/asr/i;->d:I

    goto :goto_0

    :cond_1
    sget-wide v2, Lcn/yunzhisheng/asr/i;->b:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iput v4, p0, Lcn/yunzhisheng/asr/i;->d:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcn/yunzhisheng/asr/i;->j:I

    iput v0, p0, Lcn/yunzhisheng/asr/i;->d:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/yunzhisheng/asr/i;->h:J

    return-void
.end method

.method public b()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/yunzhisheng/asr/i;->i:J

    return-void
.end method

.method public b(I)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    iput p1, p0, Lcn/yunzhisheng/asr/i;->j:I

    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x1f40 -> :sswitch_0
        0x3e80 -> :sswitch_0
    .end sparse-switch
.end method

.method public c()J
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RateSwitch:  recognizerEnd-recognizerStart= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcn/yunzhisheng/asr/i;->i:J

    iget-wide v4, p0, Lcn/yunzhisheng/asr/i;->h:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/yunzhisheng/utils/c;->b(Ljava/lang/String;)V

    iget-wide v0, p0, Lcn/yunzhisheng/asr/i;->i:J

    iget-wide v2, p0, Lcn/yunzhisheng/asr/i;->h:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
