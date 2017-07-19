.class final Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;
.super Ljava/lang/Object;
.source "RegisteredAidCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/RegisteredAidCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PrefixConflicts"
.end annotation


# instance fields
.field final aids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field conflictMap:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field final services:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/nfc/cardemulation/RegisteredAidCache;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;->this$0:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;->services:Ljava/util/ArrayList;

    .line 450
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$PrefixConflicts;->aids:Ljava/util/HashSet;

    .line 447
    return-void
.end method
