.class public Lcom/T/T/T2/Tc;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2/T3B;


# static fields
.field public static final T:Lcom/T/T/T2/Tc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T2/Tc;

    invoke-direct {v0}, Lcom/T/T/T2/Tc;-><init>()V

    sput-object v0, Lcom/T/T/T2/Tc;->T:Lcom/T/T/T2/Tc;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/T/T/T2/TS;->TR()Lcom/T/T/T2/T30;

    move-result-object v0

    if-nez p2, :cond_0

    invoke-virtual {v0}, Lcom/T/T/T2/T30;->T()V

    :goto_0
    return-void

    :cond_0
    move-object v2, p2

    check-cast v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/T/T/T2/T3c;->TP:Lcom/T/T/T2/T3c;

    invoke-virtual {v0, v2}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, p4, :cond_1

    const/16 v2, 0x7b

    invoke-virtual {v0, v2}, Lcom/T/T/T2/T30;->T(C)V

    sget-object v2, Lcom/T/T/T;->T:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/T/T/T2/T30;->T3(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/T/T/T2/TS;->T(Ljava/lang/String;)V

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Lcom/T/T/T2/T30;->T(C)V

    const-string v2, "val"

    invoke-virtual {v0, v2}, Lcom/T/T/T2/T30;->T3(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/T/T/T2/T30;->T(Ljava/lang/String;)V

    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Lcom/T/T/T2/T30;->T(C)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/T/T/T2/T30;->T(Ljava/lang/String;)V

    goto :goto_0
.end method
