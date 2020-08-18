.class public Lcom/T/T/T3/T/T3N;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T3/T/TS;


# static fields
.field public static final T:Lcom/T/T/T3/T/T3N;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T3/T/T3N;

    invoke-direct {v0}, Lcom/T/T/T3/T/T3N;-><init>()V

    sput-object v0, Lcom/T/T/T3/T/T3N;->T:Lcom/T/T/T3/T/T3N;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/T/T/T3/T2;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TW()Lcom/T/T/T3/Te;

    move-result-object v4

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->T()V

    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_0
    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v7

    const/16 v8, 0xc

    if-eq v7, v8, :cond_1

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v7

    const/16 v8, 0x10

    if-eq v7, v8, :cond_1

    new-instance v7, Lcom/T/T/TN;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "syntax error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v9

    invoke-static {v9}, Lcom/T/T/T3/Ty;->T(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    :cond_2
    invoke-virtual {p1}, Lcom/T/T/T3/T2;->T3()Lcom/T/T/T3/TB;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/T/T/T3/Te;->T(Lcom/T/T/T3/TB;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v7

    const/16 v8, 0xd

    if-ne v7, v8, :cond_3

    const/16 v7, 0x10

    invoke-virtual {v4, v7}, Lcom/T/T/T3/Te;->T(I)V

    :goto_1
    new-instance v7, Ljava/lang/StackTraceElement;

    invoke-direct {v7, v0, v6, v2, v5}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v7

    const/16 v8, 0x10

    if-ne v7, v8, :cond_4

    sget-object v7, Lcom/T/T/T3/TN;->Ty:Lcom/T/T/T3/TN;

    invoke-virtual {v4, v7}, Lcom/T/T/T3/Te;->T(Lcom/T/T/T3/TN;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_4
    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Lcom/T/T/T3/Te;->T3(I)V

    const-string v7, "className"

    if-ne v3, v7, :cond_8

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_6

    const/4 v0, 0x0

    :cond_5
    :goto_2
    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v7

    const/16 v8, 0xd

    if-ne v7, v8, :cond_2

    const/16 v7, 0x10

    invoke-virtual {v4, v7}, Lcom/T/T/T3/Te;->T(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_7

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->Tt()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    new-instance v7, Lcom/T/T/TN;

    const-string v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_8
    const-string v7, "methodName"

    if-ne v3, v7, :cond_b

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_9

    const/4 v6, 0x0

    goto :goto_2

    :cond_9
    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_a

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->Tt()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_a
    new-instance v7, Lcom/T/T/TN;

    const-string v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_b
    const-string v7, "fileName"

    if-ne v3, v7, :cond_e

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_c

    const/4 v2, 0x0

    goto :goto_2

    :cond_c
    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_d

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->Tt()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_d
    new-instance v7, Lcom/T/T/TN;

    const-string v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_e
    const-string v7, "lineNumber"

    if-ne v3, v7, :cond_11

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_f

    const/4 v5, 0x0

    goto :goto_2

    :cond_f
    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_10

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->To()I

    move-result v5

    goto :goto_2

    :cond_10
    new-instance v7, Lcom/T/T/TN;

    const-string v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_11
    const-string v7, "nativeMethod"

    if-ne v3, v7, :cond_15

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_12

    const/16 v7, 0x10

    invoke-virtual {v4, v7}, Lcom/T/T/T3/Te;->T(I)V

    goto/16 :goto_2

    :cond_12
    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_13

    const/16 v7, 0x10

    invoke-virtual {v4, v7}, Lcom/T/T/T3/Te;->T(I)V

    goto/16 :goto_2

    :cond_13
    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_14

    const/16 v7, 0x10

    invoke-virtual {v4, v7}, Lcom/T/T/T3/Te;->T(I)V

    goto/16 :goto_2

    :cond_14
    new-instance v7, Lcom/T/T/TN;

    const-string v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_15
    sget-object v7, Lcom/T/T/T;->T:Ljava/lang/String;

    if-ne v3, v7, :cond_17

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_16

    invoke-virtual {v4}, Lcom/T/T/T3/Te;->Tt()Ljava/lang/String;

    move-result-object v1

    const-string v7, "java.lang.StackTraceElement"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    new-instance v7, Lcom/T/T/TN;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "syntax error : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_16
    invoke-virtual {v4}, Lcom/T/T/T3/Te;->TN()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_5

    new-instance v7, Lcom/T/T/TN;

    const-string v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_17
    new-instance v7, Lcom/T/T/TN;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "syntax error : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v7
.end method
