.class public Lcom/txznet/comm/ui/TR/T/T2;
.super Lcom/txznet/comm/ui/TR/T/TQ;
.source "Proguard"


# instance fields
.field public T:Ljava/lang/String;

.field public T3:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/txznet/comm/ui/TR/T/TQ;-><init>(I)V

    return-void
.end method


# virtual methods
.method public T(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/comm/ui/TR/T/T2;->T3:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public T(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/comm/ui/TR/T/T2;->T:Ljava/lang/String;

    return-void
.end method
