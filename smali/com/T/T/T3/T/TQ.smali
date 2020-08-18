.class public Lcom/T/T/T3/T/TQ;
.super Lcom/T/T/T3/T/T;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T3/T/TS;


# static fields
.field public static final T:Lcom/T/T/T3/T/TQ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T3/T/TQ;

    invoke-direct {v0}, Lcom/T/T/T3/T/TQ;-><init>()V

    sput-object v0, Lcom/T/T/T3/T/TQ;->T:Lcom/T/T/T3/T/TQ;

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

    const/4 v0, 0x4

    return v0
.end method

.method protected T(Lcom/T/T/T3/T2;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
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

    const/4 v1, 0x0

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    instance-of v2, p4, Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object v0, p4

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/T/T/TN;

    const-string v2, "parse error"

    invoke-direct {v1, v2}, Lcom/T/T/TN;-><init>(Ljava/lang/String;)V

    throw v1
.end method
