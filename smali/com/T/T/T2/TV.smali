.class public Lcom/T/T/T2/TV;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T/T/T2/T3B;


# static fields
.field public static T:Lcom/T/T/T2/TV;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/T/T/T2/TV;

    invoke-direct {v0}, Lcom/T/T/T2/TV;-><init>()V

    sput-object v0, Lcom/T/T/T2/TV;->T:Lcom/T/T/T2/TV;

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

    move-result-object v1

    move-object v0, p2

    check-cast v0, Lcom/T/T/T2;

    invoke-interface {v0}, Lcom/T/T/T2;->T()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/T/T/T2/T30;->write(Ljava/lang/String;)V

    return-void
.end method
