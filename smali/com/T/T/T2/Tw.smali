.class public Lcom/T/T/T2/Tw;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2/T3B;


# static fields
.field public static final T:Lcom/T/T/T2/Tw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T2/Tw;

    invoke-direct {v0}, Lcom/T/T/T2/Tw;-><init>()V

    sput-object v0, Lcom/T/T/T2/Tw;->T:Lcom/T/T/T2/Tw;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Lcom/T/T/T2/TS;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/T/T/T2/TS;->TR()Lcom/T/T/T2/T30;

    move-result-object v3

    if-nez p2, :cond_1

    sget-object v6, Lcom/T/T/T2/T3c;->Tw:Lcom/T/T/T2/T3c;

    invoke-virtual {v3, v6}, Lcom/T/T/T2/T30;->T(Lcom/T/T/T2/T3c;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "[]"

    invoke-virtual {v3, v6}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v3}, Lcom/T/T/T2/T30;->T()V

    goto :goto_0

    :cond_1
    move-object v0, p2

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v2

    const/16 v6, 0x5b

    invoke-virtual {v3, v6}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v4

    if-eqz v1, :cond_2

    const/16 v6, 0x2c

    invoke-virtual {v3, v6}, Lcom/T/T/T2/T30;->T(C)V

    :cond_2
    invoke-virtual {v3, v4, v5}, Lcom/T/T/T2/T30;->T(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/16 v6, 0x5d

    invoke-virtual {v3, v6}, Lcom/T/T/T2/T30;->T3(C)Lcom/T/T/T2/T30;

    goto :goto_0
.end method