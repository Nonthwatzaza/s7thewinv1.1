.class Lcom/android/settings/SimStatePreference$1;
.super Landroid/database/ContentObserver;
.source "SimStatePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SimStatePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SimStatePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/SimStatePreference;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 749
    iput-object p1, p0, Lcom/android/settings/SimStatePreference$1;->this$0:Lcom/android/settings/SimStatePreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 752
    const-string v0, "SimStatePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange isLoadLayout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SimStatePreference$1;->this$0:Lcom/android/settings/SimStatePreference;

    # getter for: Lcom/android/settings/SimStatePreference;->isLoadLayout:Z
    invoke-static {v2}, Lcom/android/settings/SimStatePreference;->access$000(Lcom/android/settings/SimStatePreference;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v0, p0, Lcom/android/settings/SimStatePreference$1;->this$0:Lcom/android/settings/SimStatePreference;

    # getter for: Lcom/android/settings/SimStatePreference;->isLoadLayout:Z
    invoke-static {v0}, Lcom/android/settings/SimStatePreference;->access$000(Lcom/android/settings/SimStatePreference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/android/settings/SimStatePreference$1;->this$0:Lcom/android/settings/SimStatePreference;

    invoke-virtual {v0}, Lcom/android/settings/SimStatePreference;->updateState()V

    .line 757
    :cond_0
    return-void
.end method
