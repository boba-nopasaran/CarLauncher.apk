.class public Lcom/T/T/T3/T/T32;
.super Lcom/T/T/T3/T/T;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T3/T/TS;


# static fields
.field public static final T:Lcom/T/T/T3/T/T32;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T3/T/T32;

    invoke-direct {v0}, Lcom/T/T/T3/T/T32;-><init>()V

    sput-object v0, Lcom/T/T/T3/T/T32;->T:Lcom/T/T/T3/T/T32;

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
    .locals 11
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

    const/4 v3, 0x0

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    instance-of v8, p4, Ljava/util/Date;

    if-eqz v8, :cond_2

    new-instance v7, Ljava/sql/Date;

    check-cast p4, Ljava/util/Date;

    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/sql/Date;-><init>(J)V

    move-object p4, v7

    :goto_1
    move-object v3, p4

    goto :goto_0

    :cond_2
    instance-of v8, p4, Ljava/lang/Number;

    if-eqz v8, :cond_3

    new-instance v7, Ljava/sql/Date;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/sql/Date;-><init>(J)V

    move-object p4, v7

    goto :goto_1

    :cond_3
    instance-of v8, p4, Ljava/lang/String;

    if-eqz v8, :cond_5

    move-object v6, p4

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    new-instance v2, Lcom/T/T/T3/Tw;

    invoke-direct {v2, v6}, Lcom/T/T/T3/Tw;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v2}, Lcom/T/T/T3/Tw;->TU()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v2}, Lcom/T/T/T3/Tw;->TO()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    :goto_2
    invoke-virtual {v2}, Lcom/T/T/T3/Tw;->close()V

    new-instance v3, Ljava/sql/Date;

    invoke-direct {v3, v4, v5}, Ljava/sql/Date;-><init>(J)V

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {p1}, Lcom/T/T/T3/T2;->T()Ljava/text/DateFormat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    invoke-virtual {v1, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    new-instance v3, Ljava/sql/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-direct {v3, v8, v9}, Ljava/sql/Date;-><init>(J)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Lcom/T/T/T3/Tw;->close()V

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_3
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v4

    goto :goto_2

    :catchall_0
    move-exception v8

    invoke-virtual {v2}, Lcom/T/T/T3/Tw;->close()V

    throw v8

    :cond_5
    new-instance v8, Lcom/T/T/TN;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parse error : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v8
.end method
