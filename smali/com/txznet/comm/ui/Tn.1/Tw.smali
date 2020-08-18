.class public Lcom/txznet/comm/ui/Tn/Tw;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static T0:I

.field public static T1:I

.field public static T2:I

.field public static T3:I

.field public static T5:I

.field public static T7:I

.field public static T9:I

.field private static TA:Lcom/txznet/comm/ui/Tn/Tw;

.field public static TB:I

.field public static TF:I

.field public static TG:I

.field public static TH:I

.field public static TJ:I

.field public static TL:I

.field public static TM:I

.field public static TN:I

.field public static TO:I

.field public static TP:I

.field public static TQ:I

.field public static TR:I

.field public static TU:I

.field public static TW:I

.field public static TY:I

.field public static TZ:I

.field public static Tc:I

.field public static Te:I

.field public static Tf:I

.field public static Tg:I

.field public static Tk:I

.field public static Tn:I

.field public static To:I

.field public static Tr:I

.field public static Tt:I

.field public static Tu:I

.field public static Tw:I

.field public static Tx:I

.field public static Ty:I


# instance fields
.field T:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/txznet/comm/ui/Tn/Tw;->T:Ljava/lang/String;

    return-void
.end method

.method public static T(I)F
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method private T2()V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->Te()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/txznet/comm/ui/Tn/Tw;->T:Ljava/lang/String;

    iget-object v4, p0, Lcom/txznet/comm/ui/Tn/Tw;->T:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T3()I

    move-result v4

    if-ne v4, v7, :cond_9

    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/txznet/comm/ui/Tn/Tw;->T:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ThemeConfigHorizontal"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/txznet/comm/ui/Ty/T;->TN(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v4, "get ThemeConfigVertical error!"

    invoke-static {v4}, Lcom/txznet/comm/T3/T/Te;->T2(Ljava/lang/String;)I

    const-class v1, Lcom/txznet/comm/ui/Tn/TN;

    :cond_1
    :goto_1
    const-string v4, "RECORD_WIN_CIRCLE_LY_HEIGHT"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    sput v4, Lcom/txznet/comm/ui/Tn/Tw;->TM:I

    const-string v4, "RECORD_WIN_CIRCLE_LY_HEIGHT"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    sput v4, Lcom/txznet/comm/ui/Tn/Tw;->TU:I

    const-string v4, "RECORD_WIN_VOICE_VIEW_WIDTH"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    sput v4, Lcom/txznet/comm/ui/Tn/Tw;->Tx:I

    const-string v4, "RECORD_WIN_VOICE_VIEW_HEIGHT"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    sput v4, Lcom/txznet/comm/ui/Tn/Tw;->T9:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "themeConfig:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    if-nez v3, :cond_2

    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T()I

    move-result v4

    if-ne v4, v9, :cond_a

    new-instance v3, Lcom/txznet/comm/ui/Tn/T/T2;

    invoke-direct {v3}, Lcom/txznet/comm/ui/Tn/T/T2;-><init>()V

    :cond_2
    :goto_3
    invoke-virtual {p0, v3}, Lcom/txznet/comm/ui/Tn/Tw;->T(Lcom/txznet/comm/ui/Tn/T2;)V

    if-nez v1, :cond_4

    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T3()I

    move-result v4

    if-ne v4, v7, :cond_d

    const-class v1, Lcom/txznet/comm/ui/Tn/TN;

    :cond_3
    :goto_4
    :try_start_1
    const-string v4, "RECORD_WIN_CIRCLE_LY_HEIGHT"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    sput v4, Lcom/txznet/comm/ui/Tn/Tw;->TM:I

    const-string v4, "RECORD_WIN_CIRCLE_LY_HEIGHT"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    sput v4, Lcom/txznet/comm/ui/Tn/Tw;->TU:I

    const-string v4, "RECORD_WIN_VOICE_VIEW_WIDTH"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    sput v4, Lcom/txznet/comm/ui/Tn/Tw;->Tx:I

    const-string v4, "RECORD_WIN_VOICE_VIEW_HEIGHT"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    sput v4, Lcom/txznet/comm/ui/Tn/Tw;->T9:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_4
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RECORD_WIN_CIRCLE_LY_WIDTH:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/txznet/comm/ui/Tn/Tw;->TM:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "RECORD_WIN_CIRCLE_LY_HEIGHT:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/txznet/comm/ui/Tn/Tw;->TU:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "RECORD_WIN_VOICE_VIEW_WIDTH:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/txznet/comm/ui/Tn/Tw;->Tx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "RECORD_WIN_VOICE_VIEW_HEIGHT:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/txznet/comm/ui/Tn/Tw;->T9:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    return-void

    :cond_5
    :try_start_2
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T()I

    move-result v4

    if-ne v4, v9, :cond_6

    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/txznet/comm/ui/Tn/Tw;->T:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ThemeConfigLarge"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/txznet/comm/ui/Ty/T;->T2(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/txznet/comm/ui/Tn/T2;

    move-object v3, v0

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T()I

    move-result v4

    if-ne v4, v7, :cond_7

    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/txznet/comm/ui/Tn/Tw;->T:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ThemeConfigSmall"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/txznet/comm/ui/Ty/T;->T2(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/txznet/comm/ui/Tn/T2;

    move-object v3, v0

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T()I

    move-result v4

    if-ne v4, v10, :cond_8

    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/txznet/comm/ui/Tn/Tw;->T:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ThemeConfigCar"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/txznet/comm/ui/Ty/T;->T2(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/txznet/comm/ui/Tn/T2;

    move-object v3, v0

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T()I

    move-result v4

    if-ne v4, v8, :cond_0

    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/txznet/comm/ui/Tn/Tw;->T:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ThemeConfig"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/txznet/comm/ui/Ty/T;->T2(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/txznet/comm/ui/Tn/T2;

    move-object v3, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string v4, "load theme config error"

    invoke-static {v4}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_9
    :try_start_3
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T3()I

    move-result v4

    if-ne v4, v8, :cond_1

    invoke-static {}, Lcom/txznet/comm/ui/Ty/T;->T3()Lcom/txznet/comm/ui/Ty/T;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/txznet/comm/ui/Tn/Tw;->T:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ThemeConfigVertical"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/txznet/comm/ui/Ty/T;->TN(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v4, "get ThemeConfigVertical error!"

    invoke-static {v4}, Lcom/txznet/comm/T3/T/Te;->T2(Ljava/lang/String;)I

    const-class v1, Lcom/txznet/comm/ui/Tn/TN;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_a
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T()I

    move-result v4

    if-ne v4, v7, :cond_b

    new-instance v3, Lcom/txznet/comm/ui/Tn/T/TN;

    invoke-direct {v3}, Lcom/txznet/comm/ui/Tn/T/TN;-><init>()V

    goto/16 :goto_3

    :cond_b
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T()I

    move-result v4

    if-ne v4, v10, :cond_c

    new-instance v3, Lcom/txznet/comm/ui/Tn/T/T3;

    invoke-direct {v3}, Lcom/txznet/comm/ui/Tn/T/T3;-><init>()V

    goto/16 :goto_3

    :cond_c
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T()I

    move-result v4

    if-ne v4, v8, :cond_2

    new-instance v3, Lcom/txznet/comm/ui/Tn/T/T;

    invoke-direct {v3}, Lcom/txznet/comm/ui/Tn/T/T;-><init>()V

    goto/16 :goto_3

    :cond_d
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T3()I

    move-result v4

    if-ne v4, v8, :cond_3

    const-class v1, Lcom/txznet/comm/ui/Tn/Te;

    goto/16 :goto_4

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5
.end method

.method public static T3(I)F
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "y"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static T3()Lcom/txznet/comm/ui/Tn/Tw;
    .locals 2

    sget-object v0, Lcom/txznet/comm/ui/Tn/Tw;->TA:Lcom/txznet/comm/ui/Tn/Tw;

    if-nez v0, :cond_1

    const-class v1, Lcom/txznet/comm/ui/Tn/Tw;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/txznet/comm/ui/Tn/Tw;->TA:Lcom/txznet/comm/ui/Tn/Tw;

    if-nez v0, :cond_0

    new-instance v0, Lcom/txznet/comm/ui/Tn/Tw;

    invoke-direct {v0}, Lcom/txznet/comm/ui/Tn/Tw;-><init>()V

    sput-object v0, Lcom/txznet/comm/ui/Tn/Tw;->TA:Lcom/txznet/comm/ui/Tn/Tw;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/txznet/comm/ui/Tn/Tw;->TA:Lcom/txznet/comm/ui/Tn/Tw;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public T()V
    .locals 0

    invoke-direct {p0}, Lcom/txznet/comm/ui/Tn/Tw;->T2()V

    return-void
.end method

.method public T(Lcom/txznet/comm/ui/Tn/T2;)V
    .locals 1

    iget v0, p1, Lcom/txznet/comm/ui/Tn/T2;->T:I

    sput v0, Lcom/txznet/comm/ui/Tn/Tw;->T3:I

    iget v0, p1, Lcom/txznet/comm/ui/Tn/T2;->T3:I

    sput v0, Lcom/txznet/comm/ui/Tn/Tw;->T2:I

    iget v0, p1, Lcom/txznet/comm/ui/Tn/T2;->T2:I

    sput v0, Lcom/txznet/comm/ui/Tn/Tw;->TN:I

    iget v0, p1, Lcom/txznet/comm/ui/Tn/T2;->TN:I

    sput v0, Lcom/txznet/comm/ui/Tn/Tw;->Te:I

    iget v0, p1, Lcom/txznet/comm/ui/Tn/T2;->Te:I

    sput v0, Lcom/txznet/comm/ui/Tn/Tw;->Tw:I

    iget v0, p1, Lcom/txznet/comm/ui/Tn/T2;->Tw:I

    sput v0, Lcom/txznet/comm/ui/Tn/Tw;->Ty:I

    iget v0, p1, Lcom/txznet/comm/ui/Tn/T2;->Ty:I

    sput v0, Lcom/txznet/comm/ui/Tn/Tw;->Tn:I

    iget v0, p1, Lcom/txznet/comm/ui/Tn/T2;->Tn:I

    sput v0, Lcom/txznet/comm/ui/Tn/Tw;->TG:I

    iget v0, p1, Lcom/txznet/comm/ui/Tn/T2;->TG:I

    sput v0, Lcom/txznet/comm/ui/Tn/Tw;->TR:I

    iget v0, p1, Lcom/txznet/comm/ui/Tn/T2;->TR:I

    sput v0, Lcom/txznet/comm/ui/Tn/Tw;->TW:I

    iget v0, p1, Lcom/txznet/comm/ui/Tn/T2;->TW:I

    sput v0, Lcom/txznet/comm/ui/Tn/Tw;->TJ:I

    iget v0, p1, Lcom/txznet/comm/ui/Tn/T2;->TW:I

    sput v0, Lcom/txznet/comm/ui/Tn/Tw;->TB:I

    iget v0, p1, Lcom/txznet/comm/ui/Tn/T2;->TB:I

    sput v0, Lcom/txznet/comm/ui/Tn/Tw;->TP:I

    iget v0, p1, Lcom/txznet/comm/ui/Tn/T2;->TP:I

    sput v0, Lcom/txznet/comm/ui/Tn/Tw;->Tr:I

    iget v0, p1, Lcom/txznet/comm/ui/Tn/T2;->Tr:I

    sput v0, Lcom/txznet/comm/ui/Tn/Tw;->T7:I

    iget v0, p1, Lcom/txznet/comm/ui/Tn/T2;->T7:I

    sput v0, Lcom/txznet/comm/ui/Tn/Tw;->TO:I

    iget v0, p1, Lcom/txznet/comm/ui/Tn/T2;->TO:I

    sput v0, Lcom/txznet/comm/ui/Tn/Tw;->To:I

    iget v0, p1, Lcom/txznet/comm/ui/Tn/T2;->To:I

    sput v0, Lcom/txznet/comm/ui/Tn/Tw;->TQ:I

    iget v0, p1, Lcom/txznet/comm/ui/Tn/T2;->TQ:I

    sput v0, Lcom/txznet/comm/ui/Tn/Tw;->TL:I

    iget v0, p1, Lcom/txznet/comm/ui/Tn/T2;->TL:I

    sput v0, Lcom/txznet/comm/ui/Tn/Tw;->TH:I

    iget v0, p1, Lcom/txznet/comm/ui/Tn/T2;->TH:I

    sput v0, Lcom/txznet/comm/ui/Tn/Tw;->T0:I

    iget v0, p1, Lcom/txznet/comm/ui/Tn/T2;->T0:I

    sput v0, Lcom/txznet/comm/ui/Tn/Tw;->Tc:I

    iget v0, p1, Lcom/txznet/comm/ui/Tn/T2;->Tc:I

    sput v0, Lcom/txznet/comm/ui/Tn/Tw;->Tk:I

    iget v0, p1, Lcom/txznet/comm/ui/Tn/T2;->Tk:I

    sput v0, Lcom/txznet/comm/ui/Tn/Tw;->TF:I

    iget v0, p1, Lcom/txznet/comm/ui/Tn/T2;->TF:I

    sput v0, Lcom/txznet/comm/ui/Tn/Tw;->Tt:I

    iget v0, p1, Lcom/txznet/comm/ui/Tn/T2;->Tt:I

    sput v0, Lcom/txznet/comm/ui/Tn/Tw;->T5:I

    iget v0, p1, Lcom/txznet/comm/ui/Tn/T2;->T5:I

    sput v0, Lcom/txznet/comm/ui/Tn/Tw;->Tu:I

    iget v0, p1, Lcom/txznet/comm/ui/Tn/T2;->Tu:I

    sput v0, Lcom/txznet/comm/ui/Tn/Tw;->Tf:I

    iget v0, p1, Lcom/txznet/comm/ui/Tn/T2;->Tf:I

    sput v0, Lcom/txznet/comm/ui/Tn/Tw;->T1:I

    iget v0, p1, Lcom/txznet/comm/ui/Tn/T2;->T1:I

    sput v0, Lcom/txznet/comm/ui/Tn/Tw;->Tg:I

    iget v0, p1, Lcom/txznet/comm/ui/Tn/T2;->Tg:I

    sput v0, Lcom/txznet/comm/ui/Tn/Tw;->TY:I

    iget v0, p1, Lcom/txznet/comm/ui/Tn/T2;->TY:I

    sput v0, Lcom/txznet/comm/ui/Tn/Tw;->TZ:I

    return-void
.end method
