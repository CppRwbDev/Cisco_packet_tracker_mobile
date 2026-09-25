.class public Ltwitter4j/TwitterAPIMonitor;
.super Ljava/lang/Object;
.source "TwitterAPIMonitor.java"


# static fields
.field private static final SINGLETON:Ltwitter4j/TwitterAPIMonitor;

.field private static final STATISTICS:Ltwitter4j/management/APIStatistics;

.field private static final logger:Ltwitter4j/Logger;

.field private static final pattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 36
    const-class v4, Ltwitter4j/TwitterAPIMonitor;

    invoke-static {v4}, Ltwitter4j/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/Logger;

    move-result-object v4

    sput-object v4, Ltwitter4j/TwitterAPIMonitor;->logger:Ltwitter4j/Logger;

    .line 39
    const-string v4, "https?://[^/]+/[0-9.]*/([a-zA-Z_\\.]*).*"

    .line 40
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    sput-object v4, Ltwitter4j/TwitterAPIMonitor;->pattern:Ljava/util/regex/Pattern;

    .line 42
    new-instance v4, Ltwitter4j/TwitterAPIMonitor;

    invoke-direct {v4}, Ltwitter4j/TwitterAPIMonitor;-><init>()V

    sput-object v4, Ltwitter4j/TwitterAPIMonitor;->SINGLETON:Ltwitter4j/TwitterAPIMonitor;

    .line 44
    new-instance v4, Ltwitter4j/management/APIStatistics;

    const/16 v5, 0x64

    invoke-direct {v4, v5}, Ltwitter4j/management/APIStatistics;-><init>(I)V

    sput-object v4, Ltwitter4j/TwitterAPIMonitor;->STATISTICS:Ltwitter4j/management/APIStatistics;

    .line 50
    :try_start_20
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getPlatformMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v1

    .line 51
    .local v1, "mbs":Ljavax/management/MBeanServer;
    new-instance v2, Ljavax/management/ObjectName;

    const-string v4, "twitter4j.mbean:type=APIStatisticsOpenMBean"

    invoke-direct {v2, v4}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    .line 52
    .local v2, "oName":Ljavax/management/ObjectName;
    new-instance v3, Ltwitter4j/management/APIStatisticsOpenMBean;

    sget-object v4, Ltwitter4j/TwitterAPIMonitor;->STATISTICS:Ltwitter4j/management/APIStatistics;

    invoke-direct {v3, v4}, Ltwitter4j/management/APIStatisticsOpenMBean;-><init>(Ltwitter4j/management/APIStatistics;)V

    .line 53
    .local v3, "openMBean":Ltwitter4j/management/APIStatisticsOpenMBean;
    invoke-interface {v1, v3, v2}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;
    :try_end_35
    .catch Ljavax/management/InstanceAlreadyExistsException; {:try_start_20 .. :try_end_35} :catch_36
    .catch Ljavax/management/MBeanRegistrationException; {:try_start_20 .. :try_end_35} :catch_44
    .catch Ljavax/management/NotCompliantMBeanException; {:try_start_20 .. :try_end_35} :catch_52
    .catch Ljavax/management/MalformedObjectNameException; {:try_start_20 .. :try_end_35} :catch_60

    .line 67
    .end local v2    # "oName":Ljavax/management/ObjectName;
    .end local v3    # "openMBean":Ltwitter4j/management/APIStatisticsOpenMBean;
    :goto_35
    return-void

    .line 54
    :catch_36
    move-exception v0

    .line 55
    .local v0, "e":Ljavax/management/InstanceAlreadyExistsException;
    invoke-virtual {v0}, Ljavax/management/InstanceAlreadyExistsException;->printStackTrace()V

    .line 56
    sget-object v4, Ltwitter4j/TwitterAPIMonitor;->logger:Ltwitter4j/Logger;

    invoke-virtual {v0}, Ljavax/management/InstanceAlreadyExistsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ltwitter4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_35

    .line 57
    .end local v0    # "e":Ljavax/management/InstanceAlreadyExistsException;
    :catch_44
    move-exception v0

    .line 58
    .local v0, "e":Ljavax/management/MBeanRegistrationException;
    invoke-virtual {v0}, Ljavax/management/MBeanRegistrationException;->printStackTrace()V

    .line 59
    sget-object v4, Ltwitter4j/TwitterAPIMonitor;->logger:Ltwitter4j/Logger;

    invoke-virtual {v0}, Ljavax/management/MBeanRegistrationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ltwitter4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_35

    .line 60
    .end local v0    # "e":Ljavax/management/MBeanRegistrationException;
    :catch_52
    move-exception v0

    .line 61
    .local v0, "e":Ljavax/management/NotCompliantMBeanException;
    invoke-virtual {v0}, Ljavax/management/NotCompliantMBeanException;->printStackTrace()V

    .line 62
    sget-object v4, Ltwitter4j/TwitterAPIMonitor;->logger:Ltwitter4j/Logger;

    invoke-virtual {v0}, Ljavax/management/NotCompliantMBeanException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ltwitter4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_35

    .line 63
    .end local v0    # "e":Ljavax/management/NotCompliantMBeanException;
    :catch_60
    move-exception v0

    .line 64
    .local v0, "e":Ljavax/management/MalformedObjectNameException;
    invoke-virtual {v0}, Ljavax/management/MalformedObjectNameException;->printStackTrace()V

    .line 65
    sget-object v4, Ltwitter4j/TwitterAPIMonitor;->logger:Ltwitter4j/Logger;

    invoke-virtual {v0}, Ljavax/management/MalformedObjectNameException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ltwitter4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_35
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method public static getInstance()Ltwitter4j/TwitterAPIMonitor;
    .registers 1

    .prologue
    .line 76
    sget-object v0, Ltwitter4j/TwitterAPIMonitor;->SINGLETON:Ltwitter4j/TwitterAPIMonitor;

    return-object v0
.end method


# virtual methods
.method public getStatistics()Ltwitter4j/management/APIStatisticsMBean;
    .registers 2

    .prologue
    .line 80
    sget-object v0, Ltwitter4j/TwitterAPIMonitor;->STATISTICS:Ltwitter4j/management/APIStatistics;

    return-object v0
.end method

.method methodCalled(Ljava/lang/String;JZ)V
    .registers 9
    .param p1, "twitterUrl"    # Ljava/lang/String;
    .param p2, "elapsedTime"    # J
    .param p4, "success"    # Z

    .prologue
    .line 84
    sget-object v2, Ltwitter4j/TwitterAPIMonitor;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 85
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-lez v2, :cond_1c

    .line 86
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "method":Ljava/lang/String;
    sget-object v2, Ltwitter4j/TwitterAPIMonitor;->STATISTICS:Ltwitter4j/management/APIStatistics;

    invoke-virtual {v2, v1, p2, p3, p4}, Ltwitter4j/management/APIStatistics;->methodCalled(Ljava/lang/String;JZ)V

    .line 89
    .end local v1    # "method":Ljava/lang/String;
    :cond_1c
    return-void
.end method
