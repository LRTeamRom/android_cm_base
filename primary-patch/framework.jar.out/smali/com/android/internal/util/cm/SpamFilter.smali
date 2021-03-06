.class public Lcom/android/internal/util/cm/SpamFilter;
.super Ljava/lang/Object;
.source "SpamFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/cm/SpamFilter$SpamContract;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.cyanogenmod.spam"

.field public static final MESSAGE_PATH:Ljava/lang/String; = "message"

.field public static final NOTIFICATION_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.cyanogenmod.spam"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/cm/SpamFilter;->NOTIFICATION_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNormalizedContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^\\p{L}\\p{Nd}]+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNormalizedNotificationContent(Landroid/app/Notification;)Ljava/lang/String;
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .prologue
    invoke-static {p0}, Lcom/android/internal/util/cm/SpamFilter;->getNotificationContent(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/util/cm/SpamFilter;->getNormalizedContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getNotificationContent(Landroid/app/Notification;)Ljava/lang/String;
    .locals 4
    .param p0, "notification"    # Landroid/app/Notification;

    .prologue
    invoke-static {p0}, Lcom/android/internal/util/cm/SpamFilter;->getNotificationTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "notificationTitle":Ljava/lang/CharSequence;
    invoke-static {p0}, Lcom/android/internal/util/cm/SpamFilter;->getNotificationMessage(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "notificationMessage":Ljava/lang/CharSequence;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getNotificationMessage(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "notification"    # Landroid/app/Notification;

    .prologue
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "android.text"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .local v2, "notificationMessage":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "android.textLines"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "inboxLines":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-nez v3, :cond_2

    :cond_0
    const-string v2, ""

    .end local v1    # "inboxLines":[Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return-object v2

    .restart local v1    # "inboxLines":[Ljava/lang/CharSequence;
    :cond_2
    const-string v3, "\n"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static getNotificationTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "notification"    # Landroid/app/Notification;

    .prologue
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "android.title.big"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "android.title.big"

    .local v2, "titleExtra":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "notificationTitle":Ljava/lang/CharSequence;
    return-object v1

    .end local v1    # "notificationTitle":Ljava/lang/CharSequence;
    .end local v2    # "titleExtra":Ljava/lang/String;
    :cond_0
    const-string v2, "android.title"

    .restart local v2    # "titleExtra":Ljava/lang/String;
    goto :goto_0
.end method

.method public static hasFilterableContent(Landroid/app/Notification;)Z
    .locals 3
    .param p0, "notification"    # Landroid/app/Notification;

    .prologue
    invoke-static {p0}, Lcom/android/internal/util/cm/SpamFilter;->getNotificationTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "notificationTitle":Ljava/lang/CharSequence;
    invoke-static {p0}, Lcom/android/internal/util/cm/SpamFilter;->getNotificationMessage(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "notificationMessage":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
