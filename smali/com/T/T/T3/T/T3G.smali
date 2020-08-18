.class public Lcom/T/T/T3/T/T3G;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T3/T/TS;


# static fields
.field public static final T:Lcom/T/T/T3/T/T3G;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T3/T/T3G;

    invoke-direct {v0}, Lcom/T/T/T3/T/T3G;-><init>()V

    sput-object v0, Lcom/T/T/T3/T/T3G;->T:Lcom/T/T/T3/T/T3G;

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

    const/4 v0, 0x2

    return v0
.end method

.method public T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
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

    move-result-object v1

    invoke-virtual {v1}, Lcom/T/T/T3/Te;->TN()I

    move-result v8

    const/16 v9, 0x10

    if-ne v8, v9, :cond_4

    const/4 v8, 0x4

    invoke-virtual {v1, v8}, Lcom/T/T/T3/Te;->T(I)V

    invoke-virtual {v1}, Lcom/T/T/T3/Te;->TN()I

    move-result v8

    const/4 v9, 0x4

    if-eq v8, v9, :cond_0

    new-instance v8, Lcom/T/T/TN;

    const-string v9, "syntax error"

    invoke-direct {v8, v9}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Lcom/T/T/T3/Te;->T3(I)V

    invoke-virtual {v1}, Lcom/T/T/T3/Te;->TN()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    new-instance v8, Lcom/T/T/TN;

    const-string v9, "syntax error"

    invoke-direct {v8, v9}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    invoke-virtual {v1}, Lcom/T/T/T3/Te;->TY()J

    move-result-wide v6

    const/16 v8, 0xd

    invoke-virtual {v1, v8}, Lcom/T/T/T3/Te;->T(I)V

    invoke-virtual {v1}, Lcom/T/T/T3/Te;->TN()I

    move-result v8

    const/16 v9, 0xd

    if-eq v8, v9, :cond_2

    new-instance v8, Lcom/T/T/TN;

    const-string v9, "syntax error"

    invoke-direct {v8, v9}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    const/16 v8, 0x10

    invoke-virtual {v1, v8}, Lcom/T/T/T3/Te;->T(I)V

    new-instance v5, Ljava/sql/Time;

    invoke-direct {v5, v6, v7}, Ljava/sql/Time;-><init>(J)V

    :cond_3
    :goto_0
    return-object v5

    :cond_4
    invoke-virtual {p1}, Lcom/T/T/T3/T2;->TR()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5

    const/4 v5, 0x0

    goto :goto_0

    :cond_5
    instance-of v8, v5, Ljava/sql/Time;

    if-nez v8, :cond_3

    instance-of v8, v5, Ljava/lang/Number;

    if-eqz v8, :cond_6

    new-instance v8, Ljava/sql/Time;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Ljava/sql/Time;-><init>(J)V

    move-object v5, v8

    goto :goto_0

    :cond_6
    instance-of v8, v5, Ljava/lang/String;

    if-eqz v8, :cond_9

    move-object v4, v5

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_7

    const/4 v5, 0x0

    goto :goto_0

    :cond_7
    new-instance v0, Lcom/T/T/T3/Tw;

    invoke-direct {v0, v4}, Lcom/T/T/T3/Tw;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/T/T/T3/Tw;->TU()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v0}, Lcom/T/T/T3/Tw;->TO()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    :goto_1
    invoke-virtual {v0}, Lcom/T/T/T3/Tw;->close()V

    new-instance v5, Ljava/sql/Time;

    invoke-direct {v5, v2, v3}, Ljava/sql/Time;-><init>(J)V

    goto :goto_0

    :cond_8
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_1

    :cond_9
    new-instance v8, Lcom/T/T/TN;

    const-string v9, "parse error"

    invoke-direct {v8, v9}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v8
.end method
