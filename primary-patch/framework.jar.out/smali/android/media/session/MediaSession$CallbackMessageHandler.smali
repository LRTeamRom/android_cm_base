.class Landroid/media/session/MediaSession$CallbackMessageHandler;
.super Landroid/os/Handler;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackMessageHandler"
.end annotation


# static fields
.field private static final MSG_ADJUST_VOLUME:I = 0x10

.field private static final MSG_COMMAND:I = 0xf

.field private static final MSG_CUSTOM_ACTION:I = 0xd

.field private static final MSG_FAST_FORWARD:I = 0x9

.field private static final MSG_GET_NOW_PLAYING_ITEMS:I = 0x15

.field private static final MSG_MEDIA_BUTTON:I = 0xe

.field private static final MSG_NEXT:I = 0x7

.field private static final MSG_PAUSE:I = 0x5

.field private static final MSG_PLAY:I = 0x1

.field private static final MSG_PLAY_MEDIA_ID:I = 0x2

.field private static final MSG_PLAY_SEARCH:I = 0x3

.field private static final MSG_PLAY_URI:I = 0x12

.field private static final MSG_PREVIOUS:I = 0x8

.field private static final MSG_RATE:I = 0xc

.field private static final MSG_REWIND:I = 0xa

.field private static final MSG_SEEK_TO:I = 0xb

.field private static final MSG_SET_BROWSED_PLAYER:I = 0x13

.field private static final MSG_SET_PLAY_ITEM:I = 0x14

.field private static final MSG_SET_VOLUME:I = 0x11

.field private static final MSG_SKIP_TO_ITEM:I = 0x4

.field private static final MSG_STOP:I = 0x6


# instance fields
.field private mCallback:Landroid/media/session/MediaSession$Callback;

.field final synthetic this$0:Landroid/media/session/MediaSession;


# direct methods
.method static synthetic -get0(Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSession$Callback;
    .locals 1

    iget-object v0, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    return-object v0
.end method

.method public constructor <init>(Landroid/media/session/MediaSession;Landroid/os/Looper;Landroid/media/session/MediaSession$Callback;)V
    .locals 2
    .param p1, "this$0"    # Landroid/media/session/MediaSession;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callback"    # Landroid/media/session/MediaSession$Callback;

    .prologue
    iput-object p1, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->this$0:Landroid/media/session/MediaSession;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object p3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v3}, Landroid/media/session/MediaSession$Callback;->onPlay()V

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/media/session/MediaSession$Callback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/media/session/MediaSession$Callback;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/media/session/MediaSession$Callback;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_4
    iget-object v4, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/media/session/MediaSession$Callback;->onSkipToQueueItem(J)V

    goto :goto_0

    :pswitch_5
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v3}, Landroid/media/session/MediaSession$Callback;->onPause()V

    goto :goto_0

    :pswitch_6
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v3}, Landroid/media/session/MediaSession$Callback;->onStop()V

    goto :goto_0

    :pswitch_7
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v3}, Landroid/media/session/MediaSession$Callback;->onSkipToNext()V

    goto :goto_0

    :pswitch_8
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v3}, Landroid/media/session/MediaSession$Callback;->onSkipToPrevious()V

    goto :goto_0

    :pswitch_9
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v3}, Landroid/media/session/MediaSession$Callback;->onFastForward()V

    goto :goto_0

    :pswitch_a
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v3}, Landroid/media/session/MediaSession$Callback;->onRewind()V

    goto :goto_0

    :pswitch_b
    iget-object v4, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/media/session/MediaSession$Callback;->onSeekTo(J)V

    goto :goto_0

    :pswitch_c
    iget-object v4, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/media/Rating;

    invoke-virtual {v4, v3}, Landroid/media/session/MediaSession$Callback;->onSetRating(Landroid/media/Rating;)V

    goto :goto_0

    :pswitch_d
    iget-object v4, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/media/session/MediaSession$Callback;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v4, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/Intent;

    invoke-virtual {v4, v3}, Landroid/media/session/MediaSession$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/session/MediaSession$Command;

    .local v0, "cmd":Landroid/media/session/MediaSession$Command;
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    iget-object v4, v0, Landroid/media/session/MediaSession$Command;->command:Ljava/lang/String;

    iget-object v5, v0, Landroid/media/session/MediaSession$Command;->extras:Landroid/os/Bundle;

    iget-object v6, v0, Landroid/media/session/MediaSession$Command;->stub:Landroid/os/ResultReceiver;

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/session/MediaSession$Callback;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    goto/16 :goto_0

    .end local v0    # "cmd":Landroid/media/session/MediaSession$Command;
    :pswitch_10
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->this$0:Landroid/media/session/MediaSession;

    invoke-static {v3}, Landroid/media/session/MediaSession;->-get0(Landroid/media/session/MediaSession;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->this$0:Landroid/media/session/MediaSession;

    invoke-static {v3}, Landroid/media/session/MediaSession;->-get2(Landroid/media/session/MediaSession;)Landroid/media/VolumeProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .local v2, "vp":Landroid/media/VolumeProvider;
    monitor-exit v4

    if-eqz v2, :cond_0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/VolumeProvider;->onAdjustVolume(I)V

    goto/16 :goto_0

    .end local v2    # "vp":Landroid/media/VolumeProvider;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :pswitch_11
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->this$0:Landroid/media/session/MediaSession;

    invoke-static {v3}, Landroid/media/session/MediaSession;->-get0(Landroid/media/session/MediaSession;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_1
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->this$0:Landroid/media/session/MediaSession;

    invoke-static {v3}, Landroid/media/session/MediaSession;->-get2(Landroid/media/session/MediaSession;)Landroid/media/VolumeProvider;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .restart local v2    # "vp":Landroid/media/VolumeProvider;
    monitor-exit v4

    if-eqz v2, :cond_1

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/VolumeProvider;->onSetVolumeTo(I)V

    .end local v2    # "vp":Landroid/media/VolumeProvider;
    :cond_1
    :pswitch_12
    const-string v3, "MediaSession"

    const-string v4, "MSG_SET_BROWSED_PLAYER received in CallbackMessageHandler"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v3}, Landroid/media/session/MediaSession$Callback;->setBrowsedPlayer()V

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    :pswitch_13
    const-string v3, "MediaSession"

    const-string v4, "MSG_SET_PLAY_ITEM received in CallbackMessageHandler"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/session/MediaSession$PlayItemToken;

    .local v1, "playItemToken":Landroid/media/session/MediaSession$PlayItemToken;
    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v1}, Landroid/media/session/MediaSession$PlayItemToken;->getScope()I

    move-result v4

    invoke-virtual {v1}, Landroid/media/session/MediaSession$PlayItemToken;->getUid()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Landroid/media/session/MediaSession$Callback;->setPlayItem(IJ)V

    goto/16 :goto_0

    .end local v1    # "playItemToken":Landroid/media/session/MediaSession$PlayItemToken;
    :pswitch_14
    const-string v3, "MediaSession"

    const-string v4, "MSG_GET_NOW_PLAYING_ITEMS received in CallbackMessageHandler"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/media/session/MediaSession$CallbackMessageHandler;->mCallback:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {v3}, Landroid/media/session/MediaSession$Callback;->getNowPlayingEntries()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_3
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method public post(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/session/MediaSession$CallbackMessageHandler;->post(ILjava/lang/Object;)V

    return-void
.end method

.method public post(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaSession$CallbackMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public post(ILjava/lang/Object;I)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg1"    # I

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0, p2}, Landroid/media/session/MediaSession$CallbackMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public post(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaSession$CallbackMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method