.class public abstract Lorg/eclipse/jetty/io/nio/SelectorManager;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "SelectorManager.java"

# interfaces
.implements Lorg/eclipse/jetty/util/component/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/io/nio/SelectorManager$ChangeTask;,
        Lorg/eclipse/jetty/io/nio/SelectorManager$ChannelAndAttachment;,
        Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    }
.end annotation


# static fields
.field public static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final __BUSY_PAUSE:I

.field private static final __IDLE_TICK:I

.field private static final __MAX_SELECTS:I

.field private static final __MONITOR_PERIOD:I


# instance fields
.field private _deferringInterestedOps0:Z

.field private _lowResourcesConnections:J

.field private _lowResourcesMaxIdleTime:I

.field private _maxIdleTime:I

.field private _selectSet:[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

.field private _selectSets:I

.field private _selectorPriorityDelta:I

.field private volatile _set:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    const-string v0, "org.eclipse.jetty.io.nio"

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 58
    const-string v0, "org.eclipse.jetty.io.nio.MONITOR_PERIOD"

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/eclipse/jetty/io/nio/SelectorManager;->__MONITOR_PERIOD:I

    .line 59
    const-string v0, "org.eclipse.jetty.io.nio.MAX_SELECTS"

    const v1, 0x186a0

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/eclipse/jetty/io/nio/SelectorManager;->__MAX_SELECTS:I

    .line 60
    const-string v0, "org.eclipse.jetty.io.nio.BUSY_PAUSE"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/eclipse/jetty/io/nio/SelectorManager;->__BUSY_PAUSE:I

    .line 61
    const-string v0, "org.eclipse.jetty.io.nio.IDLE_TICK"

    const/16 v1, 0x190

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/eclipse/jetty/io/nio/SelectorManager;->__IDLE_TICK:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 67
    iput v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSets:I

    .line 68
    iput v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_set:I

    .line 69
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_deferringInterestedOps0:Z

    .line 70
    iput v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectorPriorityDelta:I

    .line 1025
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/io/nio/SelectorManager;)[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SelectorManager;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSet:[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lorg/eclipse/jetty/io/nio/SelectorManager;->__MONITOR_PERIOD:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lorg/eclipse/jetty/io/nio/SelectorManager;->__BUSY_PAUSE:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lorg/eclipse/jetty/io/nio/SelectorManager;->__IDLE_TICK:I

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lorg/eclipse/jetty/io/nio/SelectorManager;->__MAX_SELECTS:I

    return v0
.end method

.method static synthetic access$500(Lorg/eclipse/jetty/io/nio/SelectorManager;)J
    .locals 2
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SelectorManager;

    .prologue
    .line 54
    iget-wide v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_lowResourcesConnections:J

    return-wide v0
.end method

.method static synthetic access$600(Lorg/eclipse/jetty/io/nio/SelectorManager;)I
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SelectorManager;

    .prologue
    .line 54
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_maxIdleTime:I

    return v0
.end method

.method static synthetic access$700(Lorg/eclipse/jetty/io/nio/SelectorManager;)I
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/io/nio/SelectorManager;

    .prologue
    .line 54
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_lowResourcesMaxIdleTime:I

    return v0
.end method


# virtual methods
.method protected connectionFailed(Ljava/nio/channels/SocketChannel;Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "ex"    # Ljava/lang/Throwable;
    .param p3, "attachment"    # Ljava/lang/Object;

    .prologue
    .line 363
    sget-object v0, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    sget-object v0, Lorg/eclipse/jetty/io/nio/SelectorManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 365
    return-void
.end method

.method public abstract dispatch(Ljava/lang/Runnable;)Z
.end method

.method protected doStart()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 254
    iget v3, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSets:I

    new-array v3, v3, [Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    iput-object v3, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSet:[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    .line 255
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSet:[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 256
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSet:[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    new-instance v4, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-direct {v4, p0, v0}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;-><init>(Lorg/eclipse/jetty/io/nio/SelectorManager;I)V

    aput-object v4, v3, v0

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStart()V

    .line 261
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/SelectorManager;->getSelectSets()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 263
    move v1, v0

    .line 264
    .local v1, "id":I
    new-instance v3, Lorg/eclipse/jetty/io/nio/SelectorManager$1;

    invoke-direct {v3, p0, v1}, Lorg/eclipse/jetty/io/nio/SelectorManager$1;-><init>(Lorg/eclipse/jetty/io/nio/SelectorManager;I)V

    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/io/nio/SelectorManager;->dispatch(Ljava/lang/Runnable;)Z

    move-result v2

    .line 308
    .local v2, "selecting":Z
    if-nez v2, :cond_1

    .line 309
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "!Selecting"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 261
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 311
    .end local v1    # "id":I
    .end local v2    # "selecting":Z
    :cond_2
    return-void
.end method

.method protected doStop()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 318
    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSet:[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    .line 319
    .local v4, "sets":[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSet:[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    .line 320
    if-eqz v4, :cond_1

    .line 322
    move-object v0, v4

    .local v0, "arr$":[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 324
    .local v3, "set":Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    if-eqz v3, :cond_0

    .line 325
    invoke-virtual {v3}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->stop()V

    .line 322
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    .end local v0    # "arr$":[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "set":Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    :cond_1
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStop()V

    .line 329
    return-void
.end method

.method public dump()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    invoke-static {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Lorg/eclipse/jetty/util/component/Dumpable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 3
    .param p1, "out"    # Ljava/lang/Appendable;
    .param p2, "indent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    invoke-static {p1, p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dumpObject(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 377
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Collection;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSet:[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 378
    return-void
.end method

.method protected abstract endPointClosed(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
.end method

.method protected abstract endPointOpened(Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;)V
.end method

.method protected abstract endPointUpgraded(Lorg/eclipse/jetty/io/ConnectedEndPoint;Lorg/eclipse/jetty/io/Connection;)V
.end method

.method public getLowResourcesConnections()J
    .locals 4

    .prologue
    .line 209
    iget-wide v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_lowResourcesConnections:J

    iget v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSets:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getLowResourcesMaxIdleTime()J
    .locals 2

    .prologue
    .line 230
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_lowResourcesMaxIdleTime:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getMaxIdleTime()J
    .locals 2

    .prologue
    .line 99
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_maxIdleTime:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSelectSet(I)Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSet:[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSelectSets()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSets:I

    return v0
.end method

.method public getSelectorPriorityDelta()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectorPriorityDelta:I

    return v0
.end method

.method public isDeferringInterestedOps0()Z
    .locals 1

    .prologue
    .line 1012
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_deferringInterestedOps0:Z

    return v0
.end method

.method public abstract newConnection(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/AsyncEndPoint;Ljava/lang/Object;)Lorg/eclipse/jetty/io/nio/AsyncConnection;
.end method

.method protected abstract newEndPoint(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;Ljava/nio/channels/SelectionKey;)Lorg/eclipse/jetty/io/nio/SelectChannelEndPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public register(Ljava/nio/channels/ServerSocketChannel;)V
    .locals 3
    .param p1, "acceptChannel"    # Ljava/nio/channels/ServerSocketChannel;

    .prologue
    .line 175
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_set:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_set:I

    .line 176
    .local v0, "s":I
    if-gez v0, :cond_0

    .line 177
    neg-int v0, v0

    .line 178
    :cond_0
    iget v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSets:I

    rem-int/2addr v0, v2

    .line 179
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSet:[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    aget-object v1, v2, v0

    .line 180
    .local v1, "set":Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    .line 181
    invoke-virtual {v1}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->wakeup()V

    .line 182
    return-void
.end method

.method public register(Ljava/nio/channels/SocketChannel;)V
    .locals 4
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;

    .prologue
    .line 156
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_set:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_set:I

    .line 157
    .local v0, "s":I
    if-gez v0, :cond_0

    .line 158
    neg-int v0, v0

    .line 159
    :cond_0
    iget v3, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSets:I

    rem-int/2addr v0, v3

    .line 160
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSet:[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    .line 161
    .local v2, "sets":[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    if-eqz v2, :cond_1

    .line 163
    aget-object v1, v2, v0

    .line 164
    .local v1, "set":Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->addChange(Ljava/lang/Object;)V

    .line 165
    invoke-virtual {v1}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->wakeup()V

    .line 167
    .end local v1    # "set":Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    :cond_1
    return-void
.end method

.method public register(Ljava/nio/channels/SocketChannel;Ljava/lang/Object;)V
    .locals 4
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "att"    # Ljava/lang/Object;

    .prologue
    .line 132
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_set:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_set:I

    .line 133
    .local v0, "s":I
    if-gez v0, :cond_0

    .line 134
    neg-int v0, v0

    .line 135
    :cond_0
    iget v3, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSets:I

    rem-int/2addr v0, v3

    .line 136
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSet:[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;

    .line 137
    .local v2, "sets":[Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    if-eqz v2, :cond_1

    .line 139
    aget-object v1, v2, v0

    .line 140
    .local v1, "set":Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    invoke-virtual {v1, p1, p2}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->addChange(Ljava/nio/channels/SelectableChannel;Ljava/lang/Object;)V

    .line 141
    invoke-virtual {v1}, Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;->wakeup()V

    .line 143
    .end local v1    # "set":Lorg/eclipse/jetty/io/nio/SelectorManager$SelectSet;
    :cond_1
    return-void
.end method

.method public setDeferringInterestedOps0(Z)V
    .locals 0
    .param p1, "deferringInterestedOps0"    # Z

    .prologue
    .line 1018
    iput-boolean p1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_deferringInterestedOps0:Z

    .line 1019
    return-void
.end method

.method public setLowResourcesConnections(J)V
    .locals 4
    .param p1, "lowResourcesConnections"    # J

    .prologue
    .line 221
    iget v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSets:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iget v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSets:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_lowResourcesConnections:J

    .line 222
    return-void
.end method

.method public setLowResourcesMaxIdleTime(J)V
    .locals 1
    .param p1, "lowResourcesMaxIdleTime"    # J

    .prologue
    .line 240
    long-to-int v0, p1

    iput v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_lowResourcesMaxIdleTime:I

    .line 241
    return-void
.end method

.method public setMaxIdleTime(J)V
    .locals 1
    .param p1, "maxIdleTime"    # J

    .prologue
    .line 79
    long-to-int v0, p1

    iput v0, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_maxIdleTime:I

    .line 80
    return-void
.end method

.method public setSelectSets(I)V
    .locals 6
    .param p1, "selectSets"    # I

    .prologue
    .line 88
    iget-wide v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_lowResourcesConnections:J

    iget v4, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSets:I

    int-to-long v4, v4

    mul-long v0, v2, v4

    .line 89
    .local v0, "lrc":J
    iput p1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSets:I

    .line 90
    iget v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectSets:I

    int-to-long v2, v2

    div-long v2, v0, v2

    iput-wide v2, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_lowResourcesConnections:J

    .line 91
    return-void
.end method

.method public setSelectorPriorityDelta(I)V
    .locals 0
    .param p1, "delta"    # I

    .prologue
    .line 199
    iput p1, p0, Lorg/eclipse/jetty/io/nio/SelectorManager;->_selectorPriorityDelta:I

    .line 200
    return-void
.end method
