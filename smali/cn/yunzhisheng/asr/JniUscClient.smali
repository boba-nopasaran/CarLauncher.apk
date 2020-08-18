.class public Lcn/yunzhisheng/asr/JniUscClient;
.super Ljava/lang/Object;


# static fields
.field public static final A:I = -0x9c41

.field public static final B:I = -0x9c42

.field public static final C:I = -0x9c43

.field public static final D:I = -0xc351

.field public static final E:I = -0xc352

.field public static final F:I = -0xc353

.field public static final G:I = -0xc354

.field public static final H:I = -0xc355

.field public static final I:I = -0xc356

.field public static final J:I = -0xc357

.field public static final K:I = -0xc358

.field public static final L:I = -0xc359

.field public static final M:I = -0xc35a

.field public static final N:I = -0xc35b

.field public static final O:I = -0x11171

.field public static final P:I = -0x11172

.field public static final Q:I = -0x2af9

.field public static final R:I = -0x2afa

.field public static final S:I = -0x2afb

.field public static final T:I = -0x2afc

.field public static U:I = 0x0

.field public static V:I = 0x0

.field public static final W:Ljava/lang/String; = "opus"

.field public static final X:Ljava/lang/String; = "opus-nb"

.field public static final Y:Ljava/lang/String; = "req_audio_url"

.field public static final Z:Ljava/lang/String; = "open"

.field public static final a:I = 0x0

.field public static final aA:I = 0x0

.field public static final aB:I = 0x1

.field public static final aC:I = 0x14

.field public static final aD:I = 0x15

.field public static final aE:I = 0x20

.field public static final aF:I = 0x21

.field public static final aG:I = 0x22

.field public static final aH:I = 0x23

.field public static final aI:I = 0x17

.field public static final aJ:I = 0x1a

.field public static final aK:I = 0x1b

.field public static final aL:I = 0x1c

.field public static final aM:I = 0x0

.field public static final aN:I = 0x1

.field public static final aO:I = 0x0

.field public static final aP:I = 0x1

.field public static final aQ:I = 0x2

.field public static final aR:I = 0x3

.field public static final aS:I = 0x4

.field public static final aa:Ljava/lang/String; = "close"

.field public static final ab:I = 0x0

.field public static final ac:I = 0x1

.field public static final ad:I = 0x2

.field public static final ae:I = 0x3

.field public static final af:I = 0x4

.field public static final ag:I = 0x5

.field public static final ah:I = 0x6

.field public static final ai:I = 0x7

.field public static final aj:I = 0x8

.field public static final ak:I = 0x9

.field public static final al:I = 0xa

.field public static final am:I = 0xb

.field public static final an:I = 0xc

.field public static final ao:I = 0xd

.field public static final ap:I = 0xe

.field public static final aq:I = 0xf

.field public static final ar:I = 0x10

.field public static final as:I = 0x11

.field public static final at:I = 0x12

.field public static final au:I = 0x13

.field public static final av:I = 0x1f

.field public static final aw:I = 0x15

.field public static final ax:I = 0x16

.field public static final ay:I = 0x19

.field public static final az:I = 0x1a

.field public static final b:I = 0x0

.field public static final c:I = 0x0

.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = -0x2711

.field public static final g:I = -0x2712

.field public static final h:I = -0x2713

.field public static final i:I = -0x2714

.field public static final j:I = -0x2715

.field public static final k:I = -0x2716

.field public static final l:I = -0x2717

.field public static final m:I = -0x2718

.field public static final n:I = -0x2719

.field public static final o:I = -0x4e21

.field public static final p:I = -0x4e22

.field public static final q:I = -0x4e23

.field public static final r:I = -0x4e24

.field public static final s:I = -0x4e25

.field public static final t:I = -0x4e26

.field public static final u:I = -0x4e27

.field public static final v:I = -0x4e28

.field public static final w:I = -0x7531

.field public static final x:I = -0x7532

.field public static final y:I = -0x7533

.field public static final z:I = -0x7534


# instance fields
.field private aT:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcn/yunzhisheng/asr/JniUscClient;->U:I

    sput v0, Lcn/yunzhisheng/asr/JniUscClient;->V:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aT:J

    return-void
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "NETWORK_TYPE_NONE"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "NETWORK_TYPE_NONE"

    goto :goto_0

    :pswitch_1
    const-string v0, "NETWORK_TYPE_WIFI"

    goto :goto_0

    :pswitch_2
    const-string v0, "NETWORK_TYPE_3G"

    goto :goto_0

    :pswitch_3
    const-string v0, "NETWORK_TYPE_2G"

    goto :goto_0

    :pswitch_4
    const-string v0, "NETWORK_TYPE_MOBILE"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private native cancel(J)I
.end method

.method private native createNative(Ljava/lang/String;I)J
.end method

.method private native destroyNative(J)V
.end method

.method private native getLastErrno(J)I
.end method

.method private native getOptionValue(JI)Ljava/lang/String;
.end method

.method private native getResult(J)Ljava/lang/String;
.end method

.method private native recognize(J[BI)I
.end method

.method private native setOptionInt(JII)I
.end method

.method private native setOptionString(JILjava/lang/String;)I
.end method

.method private native start(J)I
.end method

.method private native stop(J)I
.end method


# virtual methods
.method public a()I
    .locals 4

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aT:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aT:J

    invoke-direct {p0, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->start(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/JniUscClient;->a(I)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a(II)I
    .locals 4

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aT:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aT:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcn/yunzhisheng/asr/JniUscClient;->setOptionInt(JII)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a(ILjava/lang/String;)I
    .locals 4

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aT:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aT:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcn/yunzhisheng/asr/JniUscClient;->setOptionString(JILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a([BI)I
    .locals 4

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aT:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aT:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcn/yunzhisheng/asr/JniUscClient;->recognize(J[BI)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/JniUscClient;->a(I)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)J
    .locals 4

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aT:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcn/yunzhisheng/asr/JniUscClient;->createNative(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aT:J

    :cond_0
    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aT:J

    return-wide v0
.end method

.method public a(I)V
    .locals 1

    sput p1, Lcn/yunzhisheng/asr/JniUscClient;->U:I

    sget v0, Lcn/yunzhisheng/asr/JniUscClient;->U:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/JniUscClient;->f()I

    move-result v0

    sput v0, Lcn/yunzhisheng/asr/JniUscClient;->V:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    sput v0, Lcn/yunzhisheng/asr/JniUscClient;->V:I

    goto :goto_0
.end method

.method public b()I
    .locals 4

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aT:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aT:J

    invoke-direct {p0, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->stop(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/JniUscClient;->a(I)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aT:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aT:J

    invoke-direct {p0, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->getResult(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public c(I)Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aT:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aT:J

    invoke-direct {p0, v0, v1, p1}, Lcn/yunzhisheng/asr/JniUscClient;->getOptionValue(JI)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public d()I
    .locals 4

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aT:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aT:J

    invoke-direct {p0, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->cancel(J)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aT:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aT:J

    invoke-direct {p0, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->destroyNative(J)V

    iput-wide v2, p0, Lcn/yunzhisheng/asr/JniUscClient;->aT:J

    :cond_0
    return-void
.end method

.method public f()I
    .locals 4

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aT:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcn/yunzhisheng/asr/JniUscClient;->aT:J

    invoke-direct {p0, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->getLastErrno(J)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
