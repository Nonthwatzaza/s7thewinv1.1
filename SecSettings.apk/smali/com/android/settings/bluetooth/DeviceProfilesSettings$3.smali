.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

.field final synthetic val$device:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

.field final synthetic val$profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lcom/android/settings/bluetooth/LocalBluetoothProfile;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iput-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->val$profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    iput-object p3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->val$device:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->val$profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    instance-of v0, v0, Lcom/android/settings/bluetooth/SapProfile;

    if-eqz v0, :cond_0

    .line 495
    const-string v0, "DeviceProfilesSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling disconnectImmediate of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->val$profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->val$device:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->val$profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnectImmediate(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    .line 501
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->val$profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->val$device:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 502
    return-void

    .line 498
    :cond_0
    const-string v0, "DeviceProfilesSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling disconnect of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->val$profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->val$device:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->val$profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0
.end method