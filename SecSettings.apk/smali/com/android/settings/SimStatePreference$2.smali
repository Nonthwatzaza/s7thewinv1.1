.class Lcom/android/settings/SimStatePreference$2;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/android/settings/SimStatePreference;)V
    .locals 0

    .prologue
    .line 819
    iput-object p1, p0, Lcom/android/settings/SimStatePreference$2;->this$0:Lcom/android/settings/SimStatePreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 822
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/android/settings/SimStatePreference$2;->this$0:Lcom/android/settings/SimStatePreference;

    const/4 v1, 0x0

    # invokes: Lcom/android/settings/SimStatePreference;->doingActivate(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/SimStatePreference;->access$100(Lcom/android/settings/SimStatePreference;Z)V

    .line 825
    :cond_0
    return-void
.end method
