.class public Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator$SortedMapIterator;
.super Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/collections4/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortedMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter",
        "<TK;TV;>;",
        "Lorg/apache/commons/collections4/j",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public hasPrevious()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator$SortedMapIterator;->iterator:Ljava/util/Iterator;

    check-cast v0, Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator$SortedMapIterator;->iterator:Ljava/util/Iterator;

    check-cast v0, Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator$SortedMapIterator;->entry:Ljava/util/Map$Entry;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator$SortedMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/collections4/map/EntrySetToMapIteratorAdapter;->reset()V

    new-instance v0, Lorg/apache/commons/collections4/p;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator$SortedMapIterator;->iterator:Ljava/util/Iterator;

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/p;-><init>(Ljava/util/Iterator;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator$SortedMapIterator;->iterator:Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method