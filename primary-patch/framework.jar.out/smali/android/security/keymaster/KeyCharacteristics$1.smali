.class final Landroid/security/keymaster/KeyCharacteristics$1;
.super Ljava/lang/Object;
.source "KeyCharacteristics.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keymaster/KeyCharacteristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/security/keymaster/KeyCharacteristics;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/security/keymaster/KeyCharacteristics;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    new-instance v0, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v0, p1}, Landroid/security/keymaster/KeyCharacteristics;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Landroid/security/keymaster/KeyCharacteristics$1;->createFromParcel(Landroid/os/Parcel;)Landroid/security/keymaster/KeyCharacteristics;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/security/keymaster/KeyCharacteristics;
    .locals 1
    .param p1, "length"    # I

    .prologue
    new-array v0, p1, [Landroid/security/keymaster/KeyCharacteristics;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "length"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/security/keymaster/KeyCharacteristics$1;->newArray(I)[Landroid/security/keymaster/KeyCharacteristics;

    move-result-object v0

    return-object v0
.end method
