.class public Lcom/T/T/T3/T/T3J;
.super Lcom/T/T/T3/T/T;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T3/T/TS;


# static fields
.field public static final T:Lcom/T/T/T3/T/T3J;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T3/T/T3J;

    invoke-direct {v0}, Lcom/T/T/T3/T/T3J;-><init>()V

    sput-object v0, Lcom/T/T/T3/T/T3J;->T:Lcom/T/T/T3/T/T3J;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/T/T/T3/T/T;-><init>()V

    return-void
.end method


# virtual methods
.method public T()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/T/T/T3/T2;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v5, 0x0

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    instance-of v6, p4, Ljava/util/Date;

    if-eqz v6, :cond_2

    new-instance v5, Ljava/sql/Timestamp;

    check-cast p4, Ljava/util/Date;

    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0

    :cond_2
    instance-of v6, p4, Ljava/lang/Number;

    if-eqz v6, :cond_3

    new-instance v5, Ljava/sql/Timestamp;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0

    :cond_3
    instance-of v6, p4, Ljava/lang/String;

    if-eqz v6, :cond_4

    move-object v4, p4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/T/T/T3/T2;->T()Ljava/text/DateFormat;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    new-instance v5, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/sql/Timestamp;-><init>(J)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    new-instance v5, Ljava/sql/Timestamp;

    invoke-direct {v5, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0

    :cond_4
    new-instance v5, Lcom/T/T/TN;

    const-string v6, "parse error"

    invoke-direct {v5, v6}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v5
.end method
