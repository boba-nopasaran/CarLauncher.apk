.class public Lcn/yunzhisheng/asr/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = -0xee49

.field public static final c:I = -0xee4a

.field public static final d:I = -0xf231

.field public static final e:I = -0xf232

.field public static final f:I = -0xf619

.field public static final g:I = -0xf61a

.field public static final h:I = -0xf61b

.field public static final i:I = -0xf61f

.field public static final j:I = -0xf621

.field public static final k:I = -0xf622

.field public static final l:I = -0xf623

.field public static final m:I = -0xf624

.field public static final n:I = -0xf625

.field public static final o:I = -0xf626

.field public static final p:I = -0xf629

.field public static final q:I = -0xf62b

.field public static final r:I = -0xf62c

.field public static final s:I = -0xf62d

.field public static final t:I = -0xf62e

.field public static final u:I = -0xf62f

.field public static final v:I = -0xf630

.field public static final w:I = -0xf631

.field public static final x:I = -0xf632

.field public static final y:I = -0x11559

.field public static final z:I = -0x1155a


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static g(I)Lcn/yunzhisheng/common/USCError;
    .locals 3

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Lcn/yunzhisheng/common/USCError;

    const/16 v1, -0x2711

    const-string v2, "\u670d\u52a1\u5668\u8fde\u63a5\u9519\u8bef"

    invoke-direct {v0, v1, v2}, Lcn/yunzhisheng/common/USCError;-><init>(ILjava/lang/String;)V

    :goto_0
    return-object v0

    :sswitch_0
    new-instance v0, Lcn/yunzhisheng/common/USCError;

    const-string v1, "\u542f\u52a8\u5f55\u97f3\u5931\u8d25"

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/common/USCError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcn/yunzhisheng/common/USCError;

    const-string v1, "\u5f55\u97f3\u5f02\u5e38"

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/common/USCError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcn/yunzhisheng/common/USCError;

    const-string v1, "\u8bc4\u6d4b\u6587\u672c\u4e3a\u7a7a"

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/common/USCError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcn/yunzhisheng/common/USCError;

    const-string v1, "\u8bc4\u6d4b\u670d\u52a1\u5668\u9519\u8bef"

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/common/USCError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcn/yunzhisheng/common/USCError;

    const-string v1, "\u8bc4\u6d4b\u6587\u672c\u957f\u5ea6\u8d85\u8fc7\u9650\u5236"

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/common/USCError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcn/yunzhisheng/common/USCError;

    const-string v1, "\u5b57\u8bcd\u4e0d\u5728\u5b57\u5178\u4e2d"

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/common/USCError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_6
    new-instance v0, Lcn/yunzhisheng/common/USCError;

    const-string v1, "\u6570\u636e\u538b\u7f29\u9519\u8bef"

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/common/USCError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_7
    new-instance v0, Lcn/yunzhisheng/common/USCError;

    const-string v1, "\u65e0\u6548\u7684appKey"

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/common/USCError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_8
    new-instance v0, Lcn/yunzhisheng/common/USCError;

    const-string v1, "\u8bf4\u8bdd\u65f6\u95f4\u8d85\u51fa\u9650\u5236"

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/common/USCError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_9
    new-instance v0, Lcn/yunzhisheng/common/USCError;

    const-string v1, "\u8bc6\u522b\u5f02\u5e38"

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/common/USCError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_a
    new-instance v0, Lcn/yunzhisheng/common/USCError;

    const-string v1, "\u670d\u52a1\u5668\u6ca1\u6709\u8fd4\u56de"

    invoke-direct {v0, p0, v1}, Lcn/yunzhisheng/common/USCError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0xf231 -> :sswitch_9
        -0xee4a -> :sswitch_1
        -0xee49 -> :sswitch_0
        -0x7533 -> :sswitch_6
        -0x7532 -> :sswitch_8
        -0x4e23 -> :sswitch_a
        -0x4e21 -> :sswitch_7
        -0x2afc -> :sswitch_4
        -0x2afb -> :sswitch_5
        -0x2afa -> :sswitch_3
        -0x2af9 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "\u542f\u52a8\u5f55\u97f3\u5931\u8d25"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u5f55\u97f3\u5f02\u5e38"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u670d\u52a1\u5668\u901a\u8baf\u9519\u8bef"

    goto :goto_0

    :sswitch_4
    const-string v0, "\u6570\u636e\u538b\u7f29\u9519\u8bef"

    goto :goto_0

    :sswitch_5
    const-string v0, "\u670d\u52a1\u5668\u9a8c\u8bc1\u9519\u8bef"

    goto :goto_0

    :sswitch_6
    const-string v0, "\u8bf4\u8bdd\u65f6\u95f4\u8d85\u51fa\u9650\u5236"

    goto :goto_0

    :sswitch_7
    const-string v0, "\u8bed\u97f3\u8bc6\u522b\u9519\u8bef"

    goto :goto_0

    :sswitch_8
    const-string v0, "\u8bc6\u522b\u5f02\u5e38"

    goto :goto_0

    :sswitch_9
    const-string v0, "\u4e0a\u4f20\u4e2a\u6027\u5316\u6570\u636e:\u670d\u52a1\u5668\u62d2\u7edd"

    goto :goto_0

    :sswitch_a
    const-string v0, "\u4e0a\u4f20\u4e2a\u6027\u5316\u6570\u636e:\u7f51\u7edc\u8fde\u63a5\u5931\u8d25"

    goto :goto_0

    :sswitch_b
    const-string v0, "\u4e0a\u4f20\u4e2a\u6027\u5316\u6570\u636e:\u4e0d\u80fd\u4e3a\u7a7a"

    goto :goto_0

    :sswitch_c
    const-string v0, "\u4e0a\u4f20\u4e2a\u6027\u5316\u6570\u636e:\u5185\u5bb9\u592a\u591a"

    goto :goto_0

    :sswitch_d
    const-string v0, "\u4e0a\u4f20\u4e2a\u6027\u5316\u6570\u636e:\u7f16\u7801\u5931\u8d25"

    goto :goto_0

    :sswitch_e
    const-string v0, "\u4e0a\u4f20\u4e2a\u6027\u5316\u6570\u636e:\u4e0a\u4f20\u8fc7\u4e8e\u9891\u7e41"

    goto :goto_0

    :sswitch_f
    const-string v0, "\u4e0a\u4f20\u573a\u666f\u6570\u636e:\u670d\u52a1\u5668\u62d2\u7edd"

    goto :goto_0

    :sswitch_10
    const-string v0, "\u4e0a\u4f20\u573a\u666f\u6570\u636e:\u7f51\u7edc\u8fde\u63a5\u5931\u8d25"

    goto :goto_0

    :sswitch_11
    const-string v0, "\u4e0a\u4f20\u573a\u666f\u6570\u636e:\u4e0d\u80fd\u4e3a\u7a7a"

    goto :goto_0

    :sswitch_12
    const-string v0, "\u4e0a\u4f20\u573a\u666f\u6570\u636e:\u5185\u5bb9\u592a\u591a"

    goto :goto_0

    :sswitch_13
    const-string v0, "\u4e0a\u4f20\u573a\u666f\u6570\u636e:\u7f16\u7801\u5931\u8d25"

    goto :goto_0

    :sswitch_14
    const-string v0, "\u4e0a\u4f20\u573a\u666f\u6570\u636e:\u4e0a\u4f20\u8fc7\u4e8e\u9891\u7e41"

    goto :goto_0

    :sswitch_15
    const-string v0, "\u4e0a\u4f20\u573a\u666f\u6570\u636e:\u5e38\u89c1\u9519\u8bef"

    goto :goto_0

    :sswitch_16
    const-string v0, "\u4e0a\u4f20\u573a\u666f\u6570\u636e\u65e0\u6548\u7684AppKey"

    goto :goto_0

    :sswitch_17
    const-string v0, "\u4e0a\u4f20\u573a\u666f\u6570\u636e\u4e0a\u4f20\u7684\u6570\u636e\u6d41\u5f02\u5e38"

    goto :goto_0

    :sswitch_18
    const-string v0, "\u4e0a\u4f20\u573a\u666f\u6570\u636e\u672a\u77e5\u5f02\u5e38"

    goto :goto_0

    :sswitch_19
    const-string v0, "\u4e0a\u4f20\u573a\u666f\u6570\u636e\u4e0a\u4f20\u7684\u6570\u636e\u4f53\u79ef\u5f02\u5e38"

    goto :goto_0

    :sswitch_1a
    const-string v0, "\u4e0a\u4f20\u573a\u666f\u6570\u636e\u65e0\u6548\u7684SDK\u7248\u672c\u53f7"

    goto :goto_0

    :sswitch_1b
    const-string v0, "\u8bed\u4e49\u7406\u89e3: \u8bed\u4e49\u670d\u52a1\u5668\u8bbf\u95ee\u5931\u8d25"

    goto :goto_0

    :sswitch_1c
    const-string v0, "\u8bed\u4e49\u7406\u89e3:\u8bed\u4e49\u8bf7\u6c42\u4e3a\u7a7a"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x1155a -> :sswitch_1c
        -0x11559 -> :sswitch_1b
        -0xf632 -> :sswitch_1a
        -0xf631 -> :sswitch_19
        -0xf630 -> :sswitch_18
        -0xf62f -> :sswitch_17
        -0xf62e -> :sswitch_16
        -0xf62d -> :sswitch_15
        -0xf62c -> :sswitch_13
        -0xf62b -> :sswitch_14
        -0xf629 -> :sswitch_12
        -0xf625 -> :sswitch_11
        -0xf624 -> :sswitch_10
        -0xf623 -> :sswitch_f
        -0xf622 -> :sswitch_d
        -0xf621 -> :sswitch_e
        -0xf61f -> :sswitch_c
        -0xf61b -> :sswitch_b
        -0xf61a -> :sswitch_a
        -0xf619 -> :sswitch_9
        -0xf231 -> :sswitch_8
        -0xee4a -> :sswitch_1
        -0xee49 -> :sswitch_0
        -0xc356 -> :sswitch_7
        -0x7533 -> :sswitch_4
        -0x7532 -> :sswitch_6
        -0x4e21 -> :sswitch_5
        -0x2712 -> :sswitch_2
        -0x2711 -> :sswitch_3
    .end sparse-switch
.end method

.method public b(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcn/yunzhisheng/asr/c;->a(I)Ljava/lang/String;

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

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c(I)I
    .locals 0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    :sswitch_0
    return p1

    :sswitch_1
    const/16 p1, -0x2711

    goto :goto_0

    :sswitch_2
    const/16 p1, -0x4e21

    goto :goto_0

    :sswitch_3
    const/16 p1, -0x7533

    goto :goto_0

    :sswitch_4
    const p1, -0xc356

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x11172 -> :sswitch_1
        -0x11171 -> :sswitch_1
        -0xf232 -> :sswitch_1
        -0xc35b -> :sswitch_4
        -0xc35a -> :sswitch_4
        -0xc359 -> :sswitch_4
        -0xc358 -> :sswitch_4
        -0xc357 -> :sswitch_4
        -0xc356 -> :sswitch_4
        -0xc355 -> :sswitch_4
        -0xc354 -> :sswitch_4
        -0xc353 -> :sswitch_4
        -0xc352 -> :sswitch_4
        -0xc351 -> :sswitch_4
        -0x9c43 -> :sswitch_4
        -0x9c42 -> :sswitch_4
        -0x9c41 -> :sswitch_4
        -0x7534 -> :sswitch_3
        -0x7533 -> :sswitch_3
        -0x7532 -> :sswitch_0
        -0x7531 -> :sswitch_0
        -0x4e28 -> :sswitch_2
        -0x4e27 -> :sswitch_2
        -0x4e26 -> :sswitch_2
        -0x4e25 -> :sswitch_2
        -0x4e24 -> :sswitch_2
        -0x4e23 -> :sswitch_2
        -0x4e22 -> :sswitch_2
        -0x4e21 -> :sswitch_2
        -0x2719 -> :sswitch_1
        -0x2718 -> :sswitch_1
        -0x2717 -> :sswitch_1
        -0x2716 -> :sswitch_1
        -0x2715 -> :sswitch_1
        -0x2714 -> :sswitch_1
        -0x2711 -> :sswitch_1
    .end sparse-switch
.end method

.method public d(I)Lcn/yunzhisheng/common/USCError;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcn/yunzhisheng/asr/c;->c(I)I

    move-result v1

    new-instance v0, Lcn/yunzhisheng/common/USCError;

    invoke-virtual {p0, v1}, Lcn/yunzhisheng/asr/c;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcn/yunzhisheng/common/USCError;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public e(I)Lcn/yunzhisheng/common/USCError;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcn/yunzhisheng/asr/c;->c(I)I

    move-result v1

    new-instance v0, Lcn/yunzhisheng/common/USCError;

    invoke-virtual {p0, v1}, Lcn/yunzhisheng/asr/c;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcn/yunzhisheng/common/USCError;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public f(I)Lcn/yunzhisheng/common/USCError;
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcn/yunzhisheng/asr/c;->c(I)I

    move-result v1

    new-instance v0, Lcn/yunzhisheng/common/USCError;

    invoke-virtual {p0, v1}, Lcn/yunzhisheng/asr/c;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/yunzhisheng/common/USCError;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method
