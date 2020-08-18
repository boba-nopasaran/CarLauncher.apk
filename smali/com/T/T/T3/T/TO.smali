.class public Lcom/T/T/T3/T/TO;
.super Lcom/T/T/T3/T/T;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T3/T/TS;


# static fields
.field public static final T:Lcom/T/T/T3/T/TO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T3/T/TO;

    invoke-direct {v0}, Lcom/T/T/T3/T/TO;-><init>()V

    sput-object v0, Lcom/T/T/T3/T/TO;->T:Lcom/T/T/T3/T/TO;

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

    move-object p4, v5

    :cond_0
    :goto_0
    return-object p4

    :cond_1
    instance-of v6, p4, Ljava/util/Date;

    if-nez v6, :cond_0

    instance-of v6, p4, Ljava/lang/Number;

    if-eqz v6, :cond_2

    new-instance v5, Ljava/util/Date;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    move-object p4, v5

    goto :goto_0

    :cond_2
    instance-of v6, p4, Ljava/lang/String;

    if-eqz v6, :cond_5

    move-object v4, p4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    move-object p4, v5

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/T/T/T3/Tw;

    invoke-direct {v1, v4}, Lcom/T/T/T3/Tw;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v1, v5}, Lcom/T/T/T3/Tw;->T3(Z)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Lcom/T/T/T3/Tw;->TO()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p4

    invoke-virtual {v1}, Lcom/T/T/T3/Tw;->close()V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/T/T/T3/Tw;->close()V

    invoke-virtual {p1}, Lcom/T/T/T3/T2;->T()Ljava/text/DateFormat;

    move-result-object v0

    :try_start_1
    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p4

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Lcom/T/T/T3/Tw;->close()V

    throw v5

    :catch_0
    move-exception v5

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    new-instance p4, Ljava/util/Date;

    invoke-direct {p4, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_5
    new-instance v5, Lcom/T/T/TN;

    const-string v6, "parse error"

    invoke-direct {v5, v6}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v5
.end method
