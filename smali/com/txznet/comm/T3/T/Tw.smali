.class public Lcom/txznet/comm/T3/T/Tw;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/comm/T3/T/Tw$1;,
        Lcom/txznet/comm/T3/T/Tw$T;
    }
.end annotation


# static fields
.field private static T:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static T2:Lcom/txznet/comm/T3/T/Tw$T;

.field private static T3:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/txznet/comm/T3/T/Tw;->T:Ljava/lang/Class;

    sput-object v1, Lcom/txznet/comm/T3/T/Tw;->T3:Ljava/lang/reflect/Method;

    new-instance v0, Lcom/txznet/comm/T3/T/Tw$T;

    invoke-direct {v0, v1}, Lcom/txznet/comm/T3/T/Tw$T;-><init>(Lcom/txznet/comm/T3/T/Tw$1;)V

    sput-object v0, Lcom/txznet/comm/T3/T/Tw;->T2:Lcom/txznet/comm/T3/T/Tw$T;

    return-void
.end method

.method public static T()V
    .locals 2

    const-string v0, "comm.monitor."

    sget-object v1, Lcom/txznet/comm/T3/T/Tw;->T2:Lcom/txznet/comm/T3/T/Tw$T;

    invoke-static {v0, v1}, Lcom/txznet/txz/T/TN;->T(Ljava/lang/String;Lcom/txznet/txz/T/TN$T;)V

    return-void
.end method
