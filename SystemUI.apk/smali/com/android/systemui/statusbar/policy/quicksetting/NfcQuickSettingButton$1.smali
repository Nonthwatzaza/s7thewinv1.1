.class Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    const-string v1, "android.nfc.extra.ADAPTER_STATE"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 22
    .local v0, "state":I
    const-string v1, "STATUSBAR-QuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NFC onReceive()-S:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->handleStateChanged(I)I
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->setActivateStatus(I)V

    .line 24
    return-void
.end method
