.class public Lcom/txznet/txz/T/TN;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/txz/T/TN$T;
    }
.end annotation


# static fields
.field static final T:Ljava/util/concurrent/locks/ReadWriteLock;

.field public static T2:I

.field static T3:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/txznet/txz/T/TN$T;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    sput-object v0, Lcom/txznet/txz/T/TN;->T:Ljava/util/concurrent/locks/ReadWriteLock;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/txznet/txz/T/TN;->T3:Ljava/util/Map;

    const/4 v0, 0x1

    sput v0, Lcom/txznet/txz/T/TN;->T2:I

    invoke-static {}, Lcom/txznet/comm/T3/T/Te;->T()V

    invoke-static {}, Lcom/txznet/comm/T3/T/Tw;->T()V

    invoke-static {}, Lcom/txznet/comm/T3/T/TP;->T()V

    invoke-static {}, Lcom/txznet/comm/T3/T/T2;->T()V

    invoke-static {}, Lcom/txznet/comm/T3/T/T;->Tw()V

    return-void
.end method

.method public static T(Ljava/lang/String;Lcom/txznet/txz/T/TN$T;)V
    .locals 1

    sget-object v0, Lcom/txznet/txz/T/TN;->T:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    sget-object v0, Lcom/txznet/txz/T/TN;->T3:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/txznet/txz/T/TN;->T:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
