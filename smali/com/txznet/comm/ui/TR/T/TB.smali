.class public Lcom/txznet/comm/ui/TR/T/TB;
.super Lcom/txznet/comm/ui/TR/T/TQ;
.source "Proguard"


# instance fields
.field public T:Ljava/lang/String;

.field public T2:I

.field public T3:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/txznet/comm/ui/TR/T/TQ;-><init>(I)V

    return-void
.end method


# virtual methods
.method public T(I)V
    .locals 0

    iput p1, p0, Lcom/txznet/comm/ui/TR/T/TB;->T2:I

    return-void
.end method

.method public T(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/comm/ui/TR/T/TB;->T:Ljava/lang/String;

    return-void
.end method

.method public T3(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/comm/ui/TR/T/TB;->T3:Ljava/lang/String;

    return-void
.end method