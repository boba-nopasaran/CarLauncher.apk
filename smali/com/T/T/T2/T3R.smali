.class public Lcom/T/T/T2/T3R;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2/T3B;


# static fields
.field public static final T:Lcom/T/T/T2/T3R;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T2/T3R;

    invoke-direct {v0}, Lcom/T/T/T2/T3R;-><init>()V

    sput-object v0, Lcom/T/T/T2/T3R;->T:Lcom/T/T/T2/T3R;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/T/T/T2/TS;->TR()Lcom/T/T/T2/T30;

    move-result-object v6

    move-object v10, p2

    check-cast v10, [Ljava/lang/Object;

    move-object v0, v10

    check-cast v0, [Ljava/lang/Object;

    if-nez p2, :cond_1

    sget-object v10, Lcom/T/T/T2/T3c;->Tw:Lcom/T/T/T2/T3c;

    invoke-virtual {v6, v10}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "[]"

    invoke-virtual {v6, v10}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v6}, Lcom/T/T/T2/T30;->T()V

    goto :goto_0

    :cond_1
    array-length v9, v0

    add-int/lit8 v3, v9, -0x1

    const/4 v10, -0x1

    if-ne v3, v10, :cond_2

    const-string v10, "[]"

    invoke-virtual {v6, v10}, Lcom/T/T/T2/T30;->T(Ljava/lang/CharSequence;)Lcom/T/T/T2/T30;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/T/T/T2/TS;->T3()Lcom/T/T/T2/T3L;

    move-result-object v2

    invoke-virtual {p1, v2, p2, p3}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3L;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v10, 0x5b

    :try_start_0
    invoke-virtual {v6, v10}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;

    sget-object v10, Lcom/T/T/T2/T3c;->TB:Lcom/T/T/T2/T3c;

    invoke-virtual {v6, v10}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {p1}, Lcom/T/T/T2/TS;->TN()V

    invoke-virtual {p1}, Lcom/T/T/T2/TS;->Tw()V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v9, :cond_4

    if-eqz v4, :cond_3

    const/16 v10, 0x2c

    invoke-virtual {v6, v10}, Lcom/T/T/T2/T30;->T(C)V

    invoke-virtual {p1}, Lcom/T/T/T2/TS;->Tw()V

    :cond_3
    aget-object v10, v0, v4

    invoke-virtual {p1, v10}, Lcom/T/T/T2/TS;->TN(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/T/T/T2/TS;->Te()V

    invoke-virtual {p1}, Lcom/T/T/T2/TS;->Tw()V

    const/16 v10, 0x5d

    invoke-virtual {v6, v10}, Lcom/T/T/T2/T30;->T(C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v2}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3L;)V

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_9

    :try_start_1
    aget-object v5, v0, v4

    if-nez v5, :cond_6

    const-string v10, "null,"

    invoke-virtual {v6, v10}, Lcom/T/T/T2/T30;->T(Ljava/lang/CharSequence;)Lcom/T/T/T2/T30;

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v5}, Lcom/T/T/T2/TS;->T3(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {p1, v5}, Lcom/T/T/T2/TS;->T2(Ljava/lang/Object;)V

    :goto_4
    const/16 v10, 0x2c

    invoke-virtual {v6, v10}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v10

    invoke-virtual {p1, v2}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3L;)V

    throw v10

    :cond_7
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, v7, :cond_8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {v8, p1, v5, v10, v11}, Lcom/T/T/T2/T3B;->T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto :goto_4

    :cond_8
    move-object v7, v1

    invoke-virtual {p1, v1}, Lcom/T/T/T2/TS;->T(Ljava/lang/Class;)Lcom/T/T/T2/T3B;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {v8, p1, v5, v10, v11}, Lcom/T/T/T2/T3B;->T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto :goto_4

    :cond_9
    aget-object v5, v0, v3

    if-nez v5, :cond_a

    const-string v10, "null]"

    invoke-virtual {v6, v10}, Lcom/T/T/T2/T30;->T(Ljava/lang/CharSequence;)Lcom/T/T/T2/T30;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    invoke-virtual {p1, v2}, Lcom/T/T/T2/TS;->T(Lcom/T/T/T2/T3L;)V

    goto/16 :goto_0

    :cond_a
    :try_start_3
    invoke-virtual {p1, v5}, Lcom/T/T/T2/TS;->T3(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {p1, v5}, Lcom/T/T/T2/TS;->T2(Ljava/lang/Object;)V

    :goto_6
    const/16 v10, 0x5d

    invoke-virtual {v6, v10}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;

    goto :goto_5

    :cond_b
    invoke-virtual {p1, v5}, Lcom/T/T/T2/TS;->TN(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6
.end method
