.class public Lcom/android/internal/util/cm/PowerMenuConstants;
.super Ljava/lang/Object;
.source "PowerMenuConstants.java"


# static fields
.field private static ALL_ACTIONS:[Ljava/lang/String; = null

.field public static final GLOBAL_ACTION_KEY_AIRPLANE:Ljava/lang/String; = "airplane"

.field public static final GLOBAL_ACTION_KEY_ASSIST:Ljava/lang/String; = "assist"

.field public static final GLOBAL_ACTION_KEY_BUGREPORT:Ljava/lang/String; = "bugreport"

.field public static final GLOBAL_ACTION_KEY_LOCKDOWN:Ljava/lang/String; = "lockdown"

.field public static final GLOBAL_ACTION_KEY_POWER:Ljava/lang/String; = "power"

.field public static final GLOBAL_ACTION_KEY_REBOOT:Ljava/lang/String; = "reboot"

.field public static final GLOBAL_ACTION_KEY_SCREENSHOT:Ljava/lang/String; = "screenshot"

.field public static final GLOBAL_ACTION_KEY_SETTINGS:Ljava/lang/String; = "settings"

.field public static final GLOBAL_ACTION_KEY_SILENT:Ljava/lang/String; = "silent"

.field public static final GLOBAL_ACTION_KEY_USERS:Ljava/lang/String; = "users"

.field public static final GLOBAL_ACTION_KEY_VOICEASSIST:Ljava/lang/String; = "voiceassist"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "power"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "reboot"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "screenshot"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "airplane"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "users"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "settings"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "lockdown"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "bugreport"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "silent"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "voiceassist"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "assist"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/util/cm/PowerMenuConstants;->ALL_ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllActions()[Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/util/cm/PowerMenuConstants;->ALL_ACTIONS:[Ljava/lang/String;

    return-object v0
.end method
