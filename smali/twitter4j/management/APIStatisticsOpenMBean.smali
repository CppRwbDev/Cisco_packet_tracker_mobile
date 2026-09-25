.class public Ltwitter4j/management/APIStatisticsOpenMBean;
.super Ljava/lang/Object;
.source "APIStatisticsOpenMBean.java"

# interfaces
.implements Ljavax/management/DynamicMBean;


# static fields
.field private static final ITEM_DESCRIPTIONS:[Ljava/lang/String;

.field private static final ITEM_NAMES:[Ljava/lang/String;

.field private static final ITEM_TYPES:[Ljavax/management/openmbean/OpenType;


# instance fields
.field private final API_STATISTICS:Ltwitter4j/management/APIStatisticsMBean;

.field private final API_STATISTICS_TYPE:Ljavax/management/openmbean/TabularType;

.field private final METHOD_STATS_TYPE:Ljavax/management/openmbean/CompositeType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "methodName"

    aput-object v1, v0, v2

    const-string v1, "callCount"

    aput-object v1, v0, v3

    const-string v1, "errorCount"

    aput-object v1, v0, v4

    const-string v1, "totalTime"

    aput-object v1, v0, v5

    const-string v1, "avgTime"

    aput-object v1, v0, v6

    sput-object v0, Ltwitter4j/management/APIStatisticsOpenMBean;->ITEM_NAMES:[Ljava/lang/String;

    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Ljavax/management/openmbean/OpenType;

    sget-object v1, Ljavax/management/openmbean/SimpleType;->STRING:Ljavax/management/openmbean/SimpleType;

    aput-object v1, v0, v2

    sget-object v1, Ljavax/management/openmbean/SimpleType;->LONG:Ljavax/management/openmbean/SimpleType;

    aput-object v1, v0, v3

    sget-object v1, Ljavax/management/openmbean/SimpleType;->LONG:Ljavax/management/openmbean/SimpleType;

    aput-object v1, v0, v4

    sget-object v1, Ljavax/management/openmbean/SimpleType;->LONG:Ljavax/management/openmbean/SimpleType;

    aput-object v1, v0, v5

    sget-object v1, Ljavax/management/openmbean/SimpleType;->LONG:Ljavax/management/openmbean/SimpleType;

    aput-object v1, v0, v6

    sput-object v0, Ltwitter4j/management/APIStatisticsOpenMBean;->ITEM_TYPES:[Ljavax/management/openmbean/OpenType;

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "The method name"

    aput-object v1, v0, v2

    const-string v1, "The number of times this method has been called"

    aput-object v1, v0, v3

    const-string v1, "The number of calls that failed"

    aput-object v1, v0, v4

    const-string v1, "The total amount of time spent invoking this method in milliseconds"

    aput-object v1, v0, v5

    const-string v1, "The average amount of time spent invoking this method in milliseconds"

    aput-object v1, v0, v6

    sput-object v0, Ltwitter4j/management/APIStatisticsOpenMBean;->ITEM_DESCRIPTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ltwitter4j/management/APIStatistics;)V
    .registers 10
    .param p1, "apiStatistics"    # Ltwitter4j/management/APIStatistics;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Ltwitter4j/management/APIStatisticsOpenMBean;->API_STATISTICS:Ltwitter4j/management/APIStatisticsMBean;

    .line 48
    :try_start_5
    new-instance v0, Ljavax/management/openmbean/CompositeType;

    const-string v1, "method statistics"

    const-string v2, "method statistics"

    sget-object v3, Ltwitter4j/management/APIStatisticsOpenMBean;->ITEM_NAMES:[Ljava/lang/String;

    sget-object v4, Ltwitter4j/management/APIStatisticsOpenMBean;->ITEM_DESCRIPTIONS:[Ljava/lang/String;

    sget-object v5, Ltwitter4j/management/APIStatisticsOpenMBean;->ITEM_TYPES:[Ljavax/management/openmbean/OpenType;

    invoke-direct/range {v0 .. v5}, Ljavax/management/openmbean/CompositeType;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljavax/management/openmbean/OpenType;)V

    iput-object v0, p0, Ltwitter4j/management/APIStatisticsOpenMBean;->METHOD_STATS_TYPE:Ljavax/management/openmbean/CompositeType;

    .line 52
    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "methodName"

    aput-object v1, v7, v0

    .line 53
    .local v7, "index":[Ljava/lang/String;
    new-instance v0, Ljavax/management/openmbean/TabularType;

    const-string v1, "API statistics"

    const-string v2, "list of methods"

    iget-object v3, p0, Ltwitter4j/management/APIStatisticsOpenMBean;->METHOD_STATS_TYPE:Ljavax/management/openmbean/CompositeType;

    invoke-direct {v0, v1, v2, v3, v7}, Ljavax/management/openmbean/TabularType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/management/openmbean/CompositeType;[Ljava/lang/String;)V

    iput-object v0, p0, Ltwitter4j/management/APIStatisticsOpenMBean;->API_STATISTICS_TYPE:Ljavax/management/openmbean/TabularType;
    :try_end_2b
    .catch Ljavax/management/openmbean/OpenDataException; {:try_start_5 .. :try_end_2b} :catch_2c

    .line 60
    return-void

    .line 57
    .end local v7    # "index":[Ljava/lang/String;
    :catch_2c
    move-exception v6

    .line 58
    .local v6, "e":Ljavax/management/openmbean/OpenDataException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p1, "attribute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/AttributeNotFoundException;,
            Ljavax/management/MBeanException;,
            Ljavax/management/ReflectionException;
        }
    .end annotation

    .prologue
    .line 147
    const-string v0, "statisticsTable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 148
    invoke-virtual {p0}, Ltwitter4j/management/APIStatisticsOpenMBean;->getStatistics()Ljavax/management/openmbean/TabularDataSupport;

    move-result-object v0

    .line 156
    :goto_c
    return-object v0

    .line 149
    :cond_d
    const-string v0, "callCount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 150
    iget-object v0, p0, Ltwitter4j/management/APIStatisticsOpenMBean;->API_STATISTICS:Ltwitter4j/management/APIStatisticsMBean;

    invoke-interface {v0}, Ltwitter4j/management/APIStatisticsMBean;->getCallCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_c

    .line 151
    :cond_20
    const-string v0, "errorCount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 152
    iget-object v0, p0, Ltwitter4j/management/APIStatisticsOpenMBean;->API_STATISTICS:Ltwitter4j/management/APIStatisticsMBean;

    invoke-interface {v0}, Ltwitter4j/management/APIStatisticsMBean;->getErrorCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_c

    .line 153
    :cond_33
    const-string v0, "totalTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 154
    iget-object v0, p0, Ltwitter4j/management/APIStatisticsOpenMBean;->API_STATISTICS:Ltwitter4j/management/APIStatisticsMBean;

    invoke-interface {v0}, Ltwitter4j/management/APIStatisticsMBean;->getTotalTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_c

    .line 155
    :cond_46
    const-string v0, "averageTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 156
    iget-object v0, p0, Ltwitter4j/management/APIStatisticsOpenMBean;->API_STATISTICS:Ltwitter4j/management/APIStatisticsMBean;

    invoke-interface {v0}, Ltwitter4j/management/APIStatisticsMBean;->getAverageTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_c

    .line 158
    :cond_59
    new-instance v0, Ljavax/management/AttributeNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attribute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/management/AttributeNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributes([Ljava/lang/String;)Ljavax/management/AttributeList;
    .registers 9
    .param p1, "attributeNames"    # [Ljava/lang/String;

    .prologue
    .line 163
    new-instance v2, Ljavax/management/AttributeList;

    invoke-direct {v2}, Ljavax/management/AttributeList;-><init>()V

    .line 164
    .local v2, "resultList":Ljavax/management/AttributeList;
    array-length v4, p1

    if-nez v4, :cond_9

    .line 174
    :cond_8
    return-object v2

    .line 166
    :cond_9
    array-length v5, p1

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v5, :cond_8

    aget-object v0, p1, v4

    .line 168
    .local v0, "attributeName":Ljava/lang/String;
    :try_start_f
    invoke-virtual {p0, v0}, Ltwitter4j/management/APIStatisticsOpenMBean;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 169
    .local v3, "value":Ljava/lang/Object;
    new-instance v6, Ljavax/management/Attribute;

    invoke-direct {v6, v0, v3}, Ljavax/management/Attribute;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v6}, Ljavax/management/AttributeList;->add(Ljavax/management/Attribute;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1b} :catch_1e

    .line 166
    .end local v3    # "value":Ljava/lang/Object;
    :goto_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 170
    :catch_1e
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b
.end method

.method public getMBeanInfo()Ljavax/management/MBeanInfo;
    .registers 14

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 65
    const/4 v0, 0x5

    new-array v7, v0, [Ljavax/management/openmbean/OpenMBeanAttributeInfoSupport;

    .line 66
    .local v7, "attributes":[Ljavax/management/openmbean/OpenMBeanAttributeInfoSupport;
    new-array v8, v4, [Ljavax/management/openmbean/OpenMBeanConstructorInfoSupport;

    .line 67
    .local v8, "constructors":[Ljavax/management/openmbean/OpenMBeanConstructorInfoSupport;
    new-array v9, v4, [Ljavax/management/openmbean/OpenMBeanOperationInfoSupport;

    .line 68
    .local v9, "operations":[Ljavax/management/openmbean/OpenMBeanOperationInfoSupport;
    new-array v10, v5, [Ljavax/management/MBeanNotificationInfo;

    .line 70
    .local v10, "notifications":[Ljavax/management/MBeanNotificationInfo;
    const/4 v11, 0x0

    .line 71
    .local v11, "attrIdx":I
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "attrIdx":I
    .local v12, "attrIdx":I
    new-instance v0, Ljavax/management/openmbean/OpenMBeanAttributeInfoSupport;

    const-string v1, "callCount"

    const-string v2, "Total number of API calls"

    sget-object v3, Ljavax/management/openmbean/SimpleType;->LONG:Ljavax/management/openmbean/SimpleType;

    move v6, v5

    invoke-direct/range {v0 .. v6}, Ljavax/management/openmbean/OpenMBeanAttributeInfoSupport;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/management/openmbean/OpenType;ZZZ)V

    aput-object v0, v7, v11

    .line 76
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "attrIdx":I
    .restart local v11    # "attrIdx":I
    new-instance v0, Ljavax/management/openmbean/OpenMBeanAttributeInfoSupport;

    const-string v1, "errorCount"

    const-string v2, "The number of failed API calls"

    sget-object v3, Ljavax/management/openmbean/SimpleType;->LONG:Ljavax/management/openmbean/SimpleType;

    move v6, v5

    invoke-direct/range {v0 .. v6}, Ljavax/management/openmbean/OpenMBeanAttributeInfoSupport;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/management/openmbean/OpenType;ZZZ)V

    aput-object v0, v7, v12

    .line 81
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "attrIdx":I
    .restart local v12    # "attrIdx":I
    new-instance v0, Ljavax/management/openmbean/OpenMBeanAttributeInfoSupport;

    const-string v1, "averageTime"

    const-string v2, "Average time spent invoking any API method"

    sget-object v3, Ljavax/management/openmbean/SimpleType;->LONG:Ljavax/management/openmbean/SimpleType;

    move v6, v5

    invoke-direct/range {v0 .. v6}, Ljavax/management/openmbean/OpenMBeanAttributeInfoSupport;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/management/openmbean/OpenType;ZZZ)V

    aput-object v0, v7, v11

    .line 86
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "attrIdx":I
    .restart local v11    # "attrIdx":I
    new-instance v0, Ljavax/management/openmbean/OpenMBeanAttributeInfoSupport;

    const-string v1, "totalTime"

    const-string v2, "Average time spent invoking any API method"

    sget-object v3, Ljavax/management/openmbean/SimpleType;->LONG:Ljavax/management/openmbean/SimpleType;

    move v6, v5

    invoke-direct/range {v0 .. v6}, Ljavax/management/openmbean/OpenMBeanAttributeInfoSupport;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/management/openmbean/OpenType;ZZZ)V

    aput-object v0, v7, v12

    .line 91
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "attrIdx":I
    .restart local v12    # "attrIdx":I
    new-instance v0, Ljavax/management/openmbean/OpenMBeanAttributeInfoSupport;

    const-string v1, "statisticsTable"

    const-string v2, "Table of statisics for all API methods"

    iget-object v3, p0, Ltwitter4j/management/APIStatisticsOpenMBean;->API_STATISTICS_TYPE:Ljavax/management/openmbean/TabularType;

    move v6, v5

    invoke-direct/range {v0 .. v6}, Ljavax/management/openmbean/OpenMBeanAttributeInfoSupport;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/management/openmbean/OpenType;ZZZ)V

    aput-object v0, v7, v11

    .line 96
    new-instance v0, Ljavax/management/openmbean/OpenMBeanConstructorInfoSupport;

    const-string v1, "APIStatisticsOpenMBean"

    const-string v2, "Constructs an APIStatisticsOpenMBean instance"

    new-array v6, v5, [Ljavax/management/openmbean/OpenMBeanParameterInfoSupport;

    invoke-direct {v0, v1, v2, v6}, Ljavax/management/openmbean/OpenMBeanConstructorInfoSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/openmbean/OpenMBeanParameterInfo;)V

    aput-object v0, v8, v5

    .line 101
    new-array v3, v5, [Ljavax/management/openmbean/OpenMBeanParameterInfoSupport;

    .line 102
    .local v3, "params":[Ljavax/management/openmbean/OpenMBeanParameterInfo;
    new-instance v0, Ljavax/management/openmbean/OpenMBeanOperationInfoSupport;

    const-string v1, "reset"

    const-string v2, "reset the statistics"

    sget-object v4, Ljavax/management/openmbean/SimpleType;->VOID:Ljavax/management/openmbean/SimpleType;

    invoke-direct/range {v0 .. v5}, Ljavax/management/openmbean/OpenMBeanOperationInfoSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/openmbean/OpenMBeanParameterInfo;Ljavax/management/openmbean/OpenType;I)V

    aput-object v0, v9, v5

    .line 109
    new-instance v4, Ljavax/management/openmbean/OpenMBeanInfoSupport;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "API Statistics Open MBean"

    invoke-direct/range {v4 .. v10}, Ljavax/management/openmbean/OpenMBeanInfoSupport;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/openmbean/OpenMBeanAttributeInfo;[Ljavax/management/openmbean/OpenMBeanConstructorInfo;[Ljavax/management/openmbean/OpenMBeanOperationInfo;[Ljavax/management/MBeanNotificationInfo;)V

    .line 113
    .local v4, "info":Ljavax/management/openmbean/OpenMBeanInfoSupport;
    return-object v4
.end method

.method public declared-synchronized getStatistics()Ljavax/management/openmbean/TabularDataSupport;
    .registers 11

    .prologue
    .line 117
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljavax/management/openmbean/TabularDataSupport;

    iget-object v5, p0, Ltwitter4j/management/APIStatisticsOpenMBean;->API_STATISTICS_TYPE:Ljavax/management/openmbean/TabularType;

    invoke-direct {v0, v5}, Ljavax/management/openmbean/TabularDataSupport;-><init>(Ljavax/management/openmbean/TabularType;)V

    .line 119
    .local v0, "apiStatisticsTable":Ljavax/management/openmbean/TabularDataSupport;
    iget-object v5, p0, Ltwitter4j/management/APIStatisticsOpenMBean;->API_STATISTICS:Ltwitter4j/management/APIStatisticsMBean;

    invoke-interface {v5}, Ltwitter4j/management/APIStatisticsMBean;->getInvocationStatistics()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltwitter4j/management/InvocationStatistics;

    .line 120
    .local v3, "methodStats":Ltwitter4j/management/InvocationStatistics;
    const/4 v6, 0x5

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v3}, Ltwitter4j/management/InvocationStatistics;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x1

    .line 121
    invoke-interface {v3}, Ltwitter4j/management/InvocationStatistics;->getCallCount()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x2

    .line 122
    invoke-interface {v3}, Ltwitter4j/management/InvocationStatistics;->getErrorCount()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x3

    .line 123
    invoke-interface {v3}, Ltwitter4j/management/InvocationStatistics;->getTotalTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x4

    .line 124
    invoke-interface {v3}, Ltwitter4j/management/InvocationStatistics;->getAverageTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v2, v6
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_68

    .line 127
    .local v2, "itemValues":[Ljava/lang/Object;
    :try_start_54
    new-instance v4, Ljavax/management/openmbean/CompositeDataSupport;

    iget-object v6, p0, Ltwitter4j/management/APIStatisticsOpenMBean;->METHOD_STATS_TYPE:Ljavax/management/openmbean/CompositeType;

    sget-object v7, Ltwitter4j/management/APIStatisticsOpenMBean;->ITEM_NAMES:[Ljava/lang/String;

    invoke-direct {v4, v6, v7, v2}, Ljavax/management/openmbean/CompositeDataSupport;-><init>(Ljavax/management/openmbean/CompositeType;[Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    .local v4, "result":Ljavax/management/openmbean/CompositeData;
    invoke-virtual {v0, v4}, Ljavax/management/openmbean/TabularDataSupport;->put(Ljavax/management/openmbean/CompositeData;)V
    :try_end_60
    .catch Ljavax/management/openmbean/OpenDataException; {:try_start_54 .. :try_end_60} :catch_61
    .catchall {:try_start_54 .. :try_end_60} :catchall_68

    goto :goto_12

    .line 131
    .end local v4    # "result":Ljavax/management/openmbean/CompositeData;
    :catch_61
    move-exception v1

    .line 132
    .local v1, "e":Ljavax/management/openmbean/OpenDataException;
    :try_start_62
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_68

    .line 117
    .end local v0    # "apiStatisticsTable":Ljavax/management/openmbean/TabularDataSupport;
    .end local v1    # "e":Ljavax/management/openmbean/OpenDataException;
    .end local v2    # "itemValues":[Ljava/lang/Object;
    .end local v3    # "methodStats":Ltwitter4j/management/InvocationStatistics;
    :catchall_68
    move-exception v5

    monitor-exit p0

    throw v5

    .line 137
    .restart local v0    # "apiStatisticsTable":Ljavax/management/openmbean/TabularDataSupport;
    :cond_6b
    monitor-exit p0

    return-object v0
.end method

.method public invoke(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .param p3, "signature"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/MBeanException;,
            Ljavax/management/ReflectionException;
        }
    .end annotation

    .prologue
    .line 180
    const-string v0, "reset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 181
    invoke-virtual {p0}, Ltwitter4j/management/APIStatisticsOpenMBean;->reset()V

    .line 182
    const-string v0, "Statistics reset"

    return-object v0

    .line 184
    :cond_e
    new-instance v0, Ljavax/management/ReflectionException;

    new-instance v1, Ljava/lang/NoSuchMethodException;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find the operation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/management/ReflectionException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Ltwitter4j/management/APIStatisticsOpenMBean;->API_STATISTICS:Ltwitter4j/management/APIStatisticsMBean;

    invoke-interface {v0}, Ltwitter4j/management/APIStatisticsMBean;->reset()V

    .line 142
    return-void
.end method

.method public setAttribute(Ljavax/management/Attribute;)V
    .registers 4
    .param p1, "attribute"    # Ljavax/management/Attribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/AttributeNotFoundException;,
            Ljavax/management/InvalidAttributeValueException;,
            Ljavax/management/MBeanException;,
            Ljavax/management/ReflectionException;
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Ljavax/management/AttributeNotFoundException;

    const-string v1, "No attributes can be set in this MBean"

    invoke-direct {v0, v1}, Ljavax/management/AttributeNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAttributes(Ljavax/management/AttributeList;)Ljavax/management/AttributeList;
    .registers 3
    .param p1, "attributes"    # Ljavax/management/AttributeList;

    .prologue
    .line 199
    new-instance v0, Ljavax/management/AttributeList;

    invoke-direct {v0}, Ljavax/management/AttributeList;-><init>()V

    return-object v0
.end method
