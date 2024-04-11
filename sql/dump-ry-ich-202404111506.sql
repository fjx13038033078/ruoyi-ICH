-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: ry-ich
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `gen_table`
--

DROP TABLE IF EXISTS `gen_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table` (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table`
--

LOCK TABLES `gen_table` WRITE;
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table_column`
--

DROP TABLE IF EXISTS `gen_table_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table_column` (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表字段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table_column`
--

LOCK TABLES `gen_table_column` WRITE;
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;
/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ich_culture`
--

DROP TABLE IF EXISTS `ich_culture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ich_culture` (
  `culture_id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `culture_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '非遗名称',
  `culture_birthplace` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '非遗发源地',
  `culture_type` tinyint DEFAULT NULL COMMENT '非遗类型：0其他，1传统舞蹈，2传统戏剧，3传统音乐，4传统美术，5传统医药，6传统技艺',
  `culture_level` tinyint DEFAULT NULL COMMENT '非遗级别：：0其他，1国家级，2省级',
  `culture_heir` varchar(100) DEFAULT NULL COMMENT '非遗传承人',
  `culture_image` varchar(200) DEFAULT NULL COMMENT '非遗图片',
  `culture_decription` varchar(500) DEFAULT NULL COMMENT '非遗描述',
  PRIMARY KEY (`culture_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ich_culture`
--

LOCK TABLES `ich_culture` WRITE;
/*!40000 ALTER TABLE `ich_culture` DISABLE KEYS */;
INSERT INTO `ich_culture` VALUES (3,'传统戏剧','发源',2,2,'我的',NULL,'好的'),(4,'传统舞蹈','我',1,0,'我',NULL,'描述'),(5,'传统音乐','地',3,2,'人',NULL,'描述'),(6,'非遗','地点',2,2,'传承','/profile/upload/2024/03/25/屏幕截图 2024-03-06 180441_20240325172708A001.png','描述'),(7,'名称','发源',6,0,'','/profile/upload/2024/03/26/屏幕截图 2024-03-08 105350_20240326145317A001.png','');
/*!40000 ALTER TABLE `ich_culture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ich_exhibition`
--

DROP TABLE IF EXISTS `ich_exhibition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ich_exhibition` (
  `exhibition_id` bigint NOT NULL AUTO_INCREMENT COMMENT '展览ID',
  `culture_id` bigint NOT NULL COMMENT '关联的非遗ID',
  `exhibition_name` varchar(100) DEFAULT NULL COMMENT '展览名称',
  `exhibition_date` date DEFAULT NULL COMMENT '展览日期',
  `exhibition_location` varchar(100) DEFAULT NULL COMMENT '展览地点',
  `exhibition_description` varchar(500) DEFAULT NULL COMMENT '展览描述',
  PRIMARY KEY (`exhibition_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ich_exhibition`
--

LOCK TABLES `ich_exhibition` WRITE;
/*!40000 ALTER TABLE `ich_exhibition` DISABLE KEYS */;
INSERT INTO `ich_exhibition` VALUES (2,3,'传统戏剧展览','2024-03-13','地点1','描述1'),(3,5,'传统音乐展览','2024-03-13','地点1','描述1');
/*!40000 ALTER TABLE `ich_exhibition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ich_exhibition_registration`
--

DROP TABLE IF EXISTS `ich_exhibition_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ich_exhibition_registration` (
  `registration_id` bigint NOT NULL AUTO_INCREMENT COMMENT '报名ID',
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `exhibition_id` bigint NOT NULL COMMENT '展览ID',
  `registration_status` tinyint DEFAULT NULL COMMENT '预约状态，0预约，1取消',
  `registration_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '报名时间',
  PRIMARY KEY (`registration_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ich_exhibition_registration`
--

LOCK TABLES `ich_exhibition_registration` WRITE;
/*!40000 ALTER TABLE `ich_exhibition_registration` DISABLE KEYS */;
INSERT INTO `ich_exhibition_registration` VALUES (1,1,1,1,NULL),(2,1,1,1,'2024-03-20 22:15:56'),(3,1,1,0,'2024-03-23 11:44:52'),(4,104,3,1,'2024-03-26 09:47:44'),(5,1,2,0,'2024-03-26 11:37:01'),(6,104,2,0,'2024-03-26 11:37:54'),(8,104,2,0,'2024-03-26 11:38:02'),(15,106,3,1,'2024-03-26 06:30:57'),(18,106,2,1,'2024-03-26 06:41:08'),(19,106,3,1,'2024-03-26 06:42:06'),(20,106,2,1,'2024-03-26 06:42:09'),(21,106,3,0,'2024-03-26 06:43:30');
/*!40000 ALTER TABLE `ich_exhibition_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_blob_triggers`
--

DROP TABLE IF EXISTS `qrtz_blob_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Blob类型的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_blob_triggers`
--

LOCK TABLES `qrtz_blob_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_blob_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_calendars`
--

DROP TABLE IF EXISTS `qrtz_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='日历信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_calendars`
--

LOCK TABLES `qrtz_calendars` WRITE;
/*!40000 ALTER TABLE `qrtz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_cron_triggers`
--

DROP TABLE IF EXISTS `qrtz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Cron类型的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_cron_triggers`
--

LOCK TABLES `qrtz_cron_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_cron_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_cron_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_fired_triggers`
--

DROP TABLE IF EXISTS `qrtz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) NOT NULL COMMENT '状态',
  `job_name` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='已触发的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_fired_triggers`
--

LOCK TABLES `qrtz_fired_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_fired_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_job_details`
--

DROP TABLE IF EXISTS `qrtz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) NOT NULL COMMENT '任务组名',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='任务详细信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_job_details`
--

LOCK TABLES `qrtz_job_details` WRITE;
/*!40000 ALTER TABLE `qrtz_job_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_locks`
--

DROP TABLE IF EXISTS `qrtz_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='存储的悲观锁信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_locks`
--

LOCK TABLES `qrtz_locks` WRITE;
/*!40000 ALTER TABLE `qrtz_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_paused_trigger_grps`
--

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='暂停的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_paused_trigger_grps`
--

LOCK TABLES `qrtz_paused_trigger_grps` WRITE;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_scheduler_state`
--

DROP TABLE IF EXISTS `qrtz_scheduler_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='调度器状态表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_scheduler_state`
--

LOCK TABLES `qrtz_scheduler_state` WRITE;
/*!40000 ALTER TABLE `qrtz_scheduler_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_scheduler_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simple_triggers`
--

DROP TABLE IF EXISTS `qrtz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='简单触发器的信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simple_triggers`
--

LOCK TABLES `qrtz_simple_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simple_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simprop_triggers`
--

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='同步机制的行锁表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simprop_triggers`
--

LOCK TABLES `qrtz_simprop_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_triggers`
--

DROP TABLE IF EXISTS `qrtz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='触发器详细信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_triggers`
--

LOCK TABLES `qrtz_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_config` (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='参数配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2024-02-28 22:23:43','',NULL,'蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2024-02-28 22:23:43','',NULL,'初始化密码 123456'),(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2024-02-28 22:23:43','',NULL,'深色主题theme-dark，浅色主题theme-light'),(4,'账号自助-验证码开关','sys.account.captchaEnabled','true','Y','admin','2024-02-28 22:23:43','',NULL,'是否开启验证码功能（true开启，false关闭）'),(5,'账号自助-是否开启用户注册功能','sys.account.registerUser','true','Y','admin','2024-02-28 22:23:43','',NULL,'是否开启注册用户功能（true开启，false关闭）'),(6,'用户登录-黑名单列表','sys.login.blackIPList','','Y','admin','2024-02-28 22:23:43','',NULL,'设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dept` (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` VALUES (100,0,'0','青岛市羽毛球场管理公司',0,'若依','15888888888','ry@qq.com','0','0','admin','2024-02-28 22:23:42','',NULL),(101,100,'0,100','深圳总公司',1,'若依','15888888888','ry@qq.com','0','2','admin','2024-02-28 22:23:42','',NULL),(102,100,'0,100','长沙分公司',2,'若依','15888888888','ry@qq.com','0','2','admin','2024-02-28 22:23:42','',NULL),(103,101,'0,100,101','研发部门',1,'若依','15888888888','ry@qq.com','0','2','admin','2024-02-28 22:23:42','',NULL),(104,101,'0,100,101','市场部门',2,'若依','15888888888','ry@qq.com','0','2','admin','2024-02-28 22:23:42','',NULL),(105,101,'0,100,101','测试部门',3,'若依','15888888888','ry@qq.com','0','2','admin','2024-02-28 22:23:42','',NULL),(106,101,'0,100,101','财务部门',4,'若依','15888888888','ry@qq.com','0','2','admin','2024-02-28 22:23:42','',NULL),(107,101,'0,100,101','运维部门',5,'若依','15888888888','ry@qq.com','0','2','admin','2024-02-28 22:23:42','',NULL),(108,102,'0,100,102','市场部门',1,'若依','15888888888','ry@qq.com','0','2','admin','2024-02-28 22:23:42','',NULL),(109,102,'0,100,102','财务部门',2,'若依','15888888888','ry@qq.com','0','2','admin','2024-02-28 22:23:42','',NULL);
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_data`
--

DROP TABLE IF EXISTS `sys_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_data`
--

LOCK TABLES `sys_dict_data` WRITE;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` VALUES (1,1,'男','0','sys_user_sex','','','Y','0','admin','2024-02-28 22:23:43','',NULL,'性别男'),(2,2,'女','1','sys_user_sex','','','N','0','admin','2024-02-28 22:23:43','',NULL,'性别女'),(3,3,'未知','2','sys_user_sex','','','N','0','admin','2024-02-28 22:23:43','',NULL,'性别未知'),(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2024-02-28 22:23:43','',NULL,'显示菜单'),(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2024-02-28 22:23:43','',NULL,'隐藏菜单'),(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2024-02-28 22:23:43','',NULL,'正常状态'),(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2024-02-28 22:23:43','',NULL,'停用状态'),(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2024-02-28 22:23:43','',NULL,'正常状态'),(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2024-02-28 22:23:43','',NULL,'停用状态'),(10,1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2024-02-28 22:23:43','',NULL,'默认分组'),(11,2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2024-02-28 22:23:43','',NULL,'系统分组'),(12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2024-02-28 22:23:43','',NULL,'系统默认是'),(13,2,'否','N','sys_yes_no','','danger','N','0','admin','2024-02-28 22:23:43','',NULL,'系统默认否'),(14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2024-02-28 22:23:43','',NULL,'通知'),(15,2,'公告','2','sys_notice_type','','success','N','0','admin','2024-02-28 22:23:43','',NULL,'公告'),(16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2024-02-28 22:23:43','',NULL,'正常状态'),(17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2024-02-28 22:23:43','',NULL,'关闭状态'),(18,99,'其他','0','sys_oper_type','','info','N','0','admin','2024-02-28 22:23:43','',NULL,'其他操作'),(19,1,'新增','1','sys_oper_type','','info','N','0','admin','2024-02-28 22:23:43','',NULL,'新增操作'),(20,2,'修改','2','sys_oper_type','','info','N','0','admin','2024-02-28 22:23:43','',NULL,'修改操作'),(21,3,'删除','3','sys_oper_type','','danger','N','0','admin','2024-02-28 22:23:43','',NULL,'删除操作'),(22,4,'授权','4','sys_oper_type','','primary','N','0','admin','2024-02-28 22:23:43','',NULL,'授权操作'),(23,5,'导出','5','sys_oper_type','','warning','N','0','admin','2024-02-28 22:23:43','',NULL,'导出操作'),(24,6,'导入','6','sys_oper_type','','warning','N','0','admin','2024-02-28 22:23:43','',NULL,'导入操作'),(25,7,'强退','7','sys_oper_type','','danger','N','0','admin','2024-02-28 22:23:43','',NULL,'强退操作'),(26,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2024-02-28 22:23:43','',NULL,'生成操作'),(27,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2024-02-28 22:23:43','',NULL,'清空操作'),(28,1,'成功','0','sys_common_status','','primary','N','0','admin','2024-02-28 22:23:43','',NULL,'正常状态'),(29,2,'失败','1','sys_common_status','','danger','N','0','admin','2024-02-28 22:23:43','',NULL,'停用状态');
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_type`
--

DROP TABLE IF EXISTS `sys_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_type`
--

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` VALUES (1,'用户性别','sys_user_sex','0','admin','2024-02-28 22:23:43','',NULL,'用户性别列表'),(2,'菜单状态','sys_show_hide','0','admin','2024-02-28 22:23:43','',NULL,'菜单状态列表'),(3,'系统开关','sys_normal_disable','0','admin','2024-02-28 22:23:43','',NULL,'系统开关列表'),(4,'任务状态','sys_job_status','0','admin','2024-02-28 22:23:43','',NULL,'任务状态列表'),(5,'任务分组','sys_job_group','0','admin','2024-02-28 22:23:43','',NULL,'任务分组列表'),(6,'系统是否','sys_yes_no','0','admin','2024-02-28 22:23:43','',NULL,'系统是否列表'),(7,'通知类型','sys_notice_type','0','admin','2024-02-28 22:23:43','',NULL,'通知类型列表'),(8,'通知状态','sys_notice_status','0','admin','2024-02-28 22:23:43','',NULL,'通知状态列表'),(9,'操作类型','sys_oper_type','0','admin','2024-02-28 22:23:43','',NULL,'操作类型列表'),(10,'系统状态','sys_common_status','0','admin','2024-02-28 22:23:43','',NULL,'登录状态列表');
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job`
--

DROP TABLE IF EXISTS `sys_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job` (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job`
--

LOCK TABLES `sys_job` WRITE;
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;
INSERT INTO `sys_job` VALUES (1,'系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2024-02-28 22:23:43','',NULL,''),(2,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2024-02-28 22:23:43','',NULL,''),(3,'系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2024-02-28 22:23:43','',NULL,'');
/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job_log`
--

DROP TABLE IF EXISTS `sys_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job_log`
--

LOCK TABLES `sys_job_log` WRITE;
/*!40000 ALTER TABLE `sys_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_logininfor`
--

DROP TABLE IF EXISTS `sys_logininfor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`),
  KEY `idx_sys_logininfor_s` (`status`),
  KEY `idx_sys_logininfor_lt` (`login_time`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='系统访问记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logininfor`
--

LOCK TABLES `sys_logininfor` WRITE;
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;
INSERT INTO `sys_logininfor` VALUES (100,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-02-28 22:39:55'),(101,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-01 23:09:16'),(102,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-02 01:27:31'),(103,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-02 10:55:20'),(104,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-02 18:14:50'),(105,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-02 20:17:25'),(106,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-02 22:07:46'),(107,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-02 23:26:23'),(108,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-03 00:55:47'),(109,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-03 17:23:03'),(110,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-03-03 17:24:51'),(111,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-03 17:24:59'),(112,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-03-03 17:37:02'),(113,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-03 17:37:14'),(114,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-03 21:22:49'),(115,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-03 22:56:22'),(116,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-04 18:45:52'),(117,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-04 18:53:25'),(118,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-05 09:19:58'),(119,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-05 09:58:10'),(120,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-05 11:15:42'),(121,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-06 10:48:05'),(122,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-06 15:08:20'),(123,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-03-06 15:37:21'),(124,'wangwu','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-06 15:37:42'),(125,'wangwu','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-03-06 15:38:13'),(126,'zhaoliu','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-06 15:38:22'),(127,'zhaoliu','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-03-06 15:38:42'),(128,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-06 15:38:48'),(129,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-07 11:30:59'),(130,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-07 14:39:08'),(131,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-07 16:08:51'),(132,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-03-07 16:45:02'),(133,'wangwu','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-07 16:45:17'),(134,'wangwu','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-03-07 16:45:52'),(135,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-07 16:46:00'),(136,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-07 17:16:50'),(137,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-03-07 17:45:31'),(138,'wangwu','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-07 17:45:44'),(139,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-08 10:18:54'),(140,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-08 10:53:32'),(141,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-08 15:51:43'),(142,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-03-09 12:26:11'),(143,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-03-09 12:26:15'),(144,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-09 12:26:18'),(145,'wangwu','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-09 17:34:02'),(146,'wangwu','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-09 17:57:48'),(147,'wangwu','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-03-09 18:09:55'),(148,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-09 18:10:02'),(149,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-03-09 18:21:14'),(150,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-09 18:21:19'),(151,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-03-09 18:21:23'),(152,'wangwu','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-09 18:21:38'),(153,'wangwu','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-03-09 19:30:19'),(154,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-09 19:30:23'),(155,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-09 19:56:04'),(156,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-09 22:55:32'),(157,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-10 11:15:30'),(158,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-03-10 11:35:23'),(159,'wangwu','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-10 11:35:33'),(160,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-19 20:16:50'),(161,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-19 21:16:25'),(162,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-19 22:31:29'),(163,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-20 19:36:30'),(164,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-20 21:19:19'),(165,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-23 10:46:58'),(166,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-23 12:39:04'),(167,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-23 13:23:10'),(168,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-03-23 13:27:32'),(169,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码已失效','2024-03-23 13:34:45'),(170,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-23 13:34:50'),(171,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-23 17:58:30'),(172,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-25 09:08:16'),(173,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-03-25 09:16:40'),(174,'jiaolianyuan','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-03-25 09:16:55'),(175,'张三','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-03-25 09:17:06'),(176,'张三','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-03-25 09:17:12'),(177,'zhangsan','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-25 09:17:20'),(178,'zhangsan','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-03-25 09:19:54'),(179,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-25 09:19:58'),(180,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-25 17:23:30'),(181,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-03-25 17:55:00'),(182,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-25 17:55:03'),(183,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-26 09:01:09'),(184,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-03-26 09:44:04'),(185,'zhangsan','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-03-26 09:44:20'),(186,'zhangsan','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-03-26 09:44:29'),(187,'lisi','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-03-26 09:44:44'),(188,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-26 09:44:57'),(189,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-03-26 09:45:56'),(190,'zhangsan','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-03-26 09:46:05'),(191,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-26 09:46:26'),(192,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-03-26 09:47:22'),(193,'zhangsan','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-26 09:47:32'),(194,'zhangsan','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-03-26 10:10:02'),(195,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-26 10:10:06'),(196,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-03-26 10:42:20'),(197,'zhangsan','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-03-26 10:42:31'),(198,'zhangsan','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-26 10:42:43'),(199,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-26 11:36:48'),(200,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-03-26 11:37:36'),(201,'zhangsan','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-26 11:37:45'),(202,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-26 14:19:03'),(203,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-03-26 14:29:53'),(204,'lisi','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-26 14:30:03'),(205,'lisi','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-03-26 14:46:54'),(206,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-03-26 14:46:57'),(207,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-04-11 14:52:54'),(208,'fjx','127.0.0.1','内网IP','Chrome 12','Windows 10','0','注册成功','2024-04-11 15:04:30'),(209,'fjx','127.0.0.1','内网IP','Chrome 12','Windows 10','1','用户不存在/密码错误','2024-04-11 15:04:45'),(210,'fjx','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-04-11 15:04:52'),(211,'fjx','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-04-11 15:05:14'),(212,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-04-11 15:05:19');
/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) DEFAULT NULL COMMENT '路由参数',
  `is_frame` int DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2045 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜单权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,'系统管理',0,1,'system',NULL,'',1,0,'M','0','0','','system','admin','2024-02-28 22:23:42','',NULL,'系统管理目录'),(2,'系统监控',0,2,'monitor',NULL,'',1,0,'M','1','0','','monitor','admin','2024-02-28 22:23:42','admin','2024-03-03 17:45:53','系统监控目录'),(3,'系统工具',0,3,'tool',NULL,'',1,0,'M','1','0','','tool','admin','2024-02-28 22:23:42','admin','2024-03-01 23:09:49','系统工具目录'),(4,'若依官网',0,4,'http://ruoyi.vip',NULL,'',0,0,'M','1','0','','guide','admin','2024-02-28 22:23:42','admin','2024-03-01 23:09:36','若依官网地址'),(100,'用户管理',1,1,'user','system/user/index','',1,0,'C','0','0','system:user:list','user','admin','2024-02-28 22:23:42','',NULL,'用户管理菜单'),(101,'角色管理',1,2,'role','system/role/index','',1,0,'C','0','0','system:role:list','peoples','admin','2024-02-28 22:23:42','',NULL,'角色管理菜单'),(102,'菜单管理',1,3,'menu','system/menu/index','',1,0,'C','0','0','system:menu:list','tree-table','admin','2024-02-28 22:23:42','admin','2024-03-04 18:50:34','菜单管理菜单'),(103,'部门管理',1,4,'dept','system/dept/index','',1,0,'C','1','0','system:dept:list','tree','admin','2024-02-28 22:23:42','admin','2024-03-03 17:45:32','部门管理菜单'),(104,'岗位管理',1,5,'post','system/post/index','',1,0,'C','1','0','system:post:list','post','admin','2024-02-28 22:23:42','admin','2024-03-03 17:41:06','岗位管理菜单'),(105,'字典管理',1,6,'dict','system/dict/index','',1,0,'C','1','0','system:dict:list','dict','admin','2024-02-28 22:23:42','admin','2024-03-03 17:41:00','字典管理菜单'),(106,'参数设置',1,7,'config','system/config/index','',1,0,'C','1','0','system:config:list','edit','admin','2024-02-28 22:23:42','admin','2024-03-03 17:40:56','参数设置菜单'),(107,'通知公告',1,8,'notice','system/notice/index','',1,0,'C','0','0','system:notice:list','message','admin','2024-02-28 22:23:42','',NULL,'通知公告菜单'),(108,'日志管理',1,9,'log','','',1,0,'M','1','0','','log','admin','2024-02-28 22:23:42','admin','2024-03-03 17:40:49','日志管理菜单'),(109,'在线用户',2,1,'online','monitor/online/index','',1,0,'C','0','0','monitor:online:list','online','admin','2024-02-28 22:23:42','',NULL,'在线用户菜单'),(110,'定时任务',2,2,'job','monitor/job/index','',1,0,'C','0','0','monitor:job:list','job','admin','2024-02-28 22:23:42','',NULL,'定时任务菜单'),(111,'数据监控',2,3,'druid','monitor/druid/index','',1,0,'C','0','0','monitor:druid:list','druid','admin','2024-02-28 22:23:42','',NULL,'数据监控菜单'),(112,'服务监控',2,4,'server','monitor/server/index','',1,0,'C','0','0','monitor:server:list','server','admin','2024-02-28 22:23:42','',NULL,'服务监控菜单'),(113,'缓存监控',2,5,'cache','monitor/cache/index','',1,0,'C','0','0','monitor:cache:list','redis','admin','2024-02-28 22:23:42','',NULL,'缓存监控菜单'),(114,'缓存列表',2,6,'cacheList','monitor/cache/list','',1,0,'C','0','0','monitor:cache:list','redis-list','admin','2024-02-28 22:23:42','',NULL,'缓存列表菜单'),(115,'表单构建',3,1,'build','tool/build/index','',1,0,'C','0','0','tool:build:list','build','admin','2024-02-28 22:23:42','',NULL,'表单构建菜单'),(116,'代码生成',3,2,'gen','tool/gen/index','',1,0,'C','0','0','tool:gen:list','code','admin','2024-02-28 22:23:42','',NULL,'代码生成菜单'),(117,'系统接口',3,3,'swagger','tool/swagger/index','',1,0,'C','0','0','tool:swagger:list','swagger','admin','2024-02-28 22:23:42','',NULL,'系统接口菜单'),(500,'操作日志',108,1,'operlog','monitor/operlog/index','',1,0,'C','0','0','monitor:operlog:list','form','admin','2024-02-28 22:23:42','',NULL,'操作日志菜单'),(501,'登录日志',108,2,'logininfor','monitor/logininfor/index','',1,0,'C','0','0','monitor:logininfor:list','logininfor','admin','2024-02-28 22:23:42','',NULL,'登录日志菜单'),(1000,'用户查询',100,1,'','','',1,0,'F','0','0','system:user:query','#','admin','2024-02-28 22:23:42','',NULL,''),(1001,'用户新增',100,2,'','','',1,0,'F','0','0','system:user:add','#','admin','2024-02-28 22:23:42','',NULL,''),(1002,'用户修改',100,3,'','','',1,0,'F','0','0','system:user:edit','#','admin','2024-02-28 22:23:42','',NULL,''),(1003,'用户删除',100,4,'','','',1,0,'F','0','0','system:user:remove','#','admin','2024-02-28 22:23:42','',NULL,''),(1004,'用户导出',100,5,'','','',1,0,'F','0','0','system:user:export','#','admin','2024-02-28 22:23:42','',NULL,''),(1005,'用户导入',100,6,'','','',1,0,'F','0','0','system:user:import','#','admin','2024-02-28 22:23:42','',NULL,''),(1006,'重置密码',100,7,'','','',1,0,'F','0','0','system:user:resetPwd','#','admin','2024-02-28 22:23:42','',NULL,''),(1007,'角色查询',101,1,'','','',1,0,'F','0','0','system:role:query','#','admin','2024-02-28 22:23:42','',NULL,''),(1008,'角色新增',101,2,'','','',1,0,'F','0','0','system:role:add','#','admin','2024-02-28 22:23:42','',NULL,''),(1009,'角色修改',101,3,'','','',1,0,'F','0','0','system:role:edit','#','admin','2024-02-28 22:23:42','',NULL,''),(1010,'角色删除',101,4,'','','',1,0,'F','0','0','system:role:remove','#','admin','2024-02-28 22:23:42','',NULL,''),(1011,'角色导出',101,5,'','','',1,0,'F','0','0','system:role:export','#','admin','2024-02-28 22:23:42','',NULL,''),(1012,'菜单查询',102,1,'','','',1,0,'F','0','0','system:menu:query','#','admin','2024-02-28 22:23:42','',NULL,''),(1013,'菜单新增',102,2,'','','',1,0,'F','0','0','system:menu:add','#','admin','2024-02-28 22:23:42','',NULL,''),(1014,'菜单修改',102,3,'','','',1,0,'F','0','0','system:menu:edit','#','admin','2024-02-28 22:23:42','',NULL,''),(1015,'菜单删除',102,4,'','','',1,0,'F','0','0','system:menu:remove','#','admin','2024-02-28 22:23:42','',NULL,''),(1016,'部门查询',103,1,'','','',1,0,'F','0','0','system:dept:query','#','admin','2024-02-28 22:23:42','',NULL,''),(1017,'部门新增',103,2,'','','',1,0,'F','0','0','system:dept:add','#','admin','2024-02-28 22:23:42','',NULL,''),(1018,'部门修改',103,3,'','','',1,0,'F','0','0','system:dept:edit','#','admin','2024-02-28 22:23:42','',NULL,''),(1019,'部门删除',103,4,'','','',1,0,'F','0','0','system:dept:remove','#','admin','2024-02-28 22:23:42','',NULL,''),(1020,'岗位查询',104,1,'','','',1,0,'F','0','0','system:post:query','#','admin','2024-02-28 22:23:42','',NULL,''),(1021,'岗位新增',104,2,'','','',1,0,'F','0','0','system:post:add','#','admin','2024-02-28 22:23:42','',NULL,''),(1022,'岗位修改',104,3,'','','',1,0,'F','0','0','system:post:edit','#','admin','2024-02-28 22:23:42','',NULL,''),(1023,'岗位删除',104,4,'','','',1,0,'F','0','0','system:post:remove','#','admin','2024-02-28 22:23:42','',NULL,''),(1024,'岗位导出',104,5,'','','',1,0,'F','0','0','system:post:export','#','admin','2024-02-28 22:23:42','',NULL,''),(1025,'字典查询',105,1,'#','','',1,0,'F','0','0','system:dict:query','#','admin','2024-02-28 22:23:42','',NULL,''),(1026,'字典新增',105,2,'#','','',1,0,'F','0','0','system:dict:add','#','admin','2024-02-28 22:23:43','',NULL,''),(1027,'字典修改',105,3,'#','','',1,0,'F','0','0','system:dict:edit','#','admin','2024-02-28 22:23:43','',NULL,''),(1028,'字典删除',105,4,'#','','',1,0,'F','0','0','system:dict:remove','#','admin','2024-02-28 22:23:43','',NULL,''),(1029,'字典导出',105,5,'#','','',1,0,'F','0','0','system:dict:export','#','admin','2024-02-28 22:23:43','',NULL,''),(1030,'参数查询',106,1,'#','','',1,0,'F','0','0','system:config:query','#','admin','2024-02-28 22:23:43','',NULL,''),(1031,'参数新增',106,2,'#','','',1,0,'F','0','0','system:config:add','#','admin','2024-02-28 22:23:43','',NULL,''),(1032,'参数修改',106,3,'#','','',1,0,'F','0','0','system:config:edit','#','admin','2024-02-28 22:23:43','',NULL,''),(1033,'参数删除',106,4,'#','','',1,0,'F','0','0','system:config:remove','#','admin','2024-02-28 22:23:43','',NULL,''),(1034,'参数导出',106,5,'#','','',1,0,'F','0','0','system:config:export','#','admin','2024-02-28 22:23:43','',NULL,''),(1035,'公告查询',107,1,'#','','',1,0,'F','0','0','system:notice:query','#','admin','2024-02-28 22:23:43','',NULL,''),(1036,'公告新增',107,2,'#','','',1,0,'F','0','0','system:notice:add','#','admin','2024-02-28 22:23:43','',NULL,''),(1037,'公告修改',107,3,'#','','',1,0,'F','0','0','system:notice:edit','#','admin','2024-02-28 22:23:43','',NULL,''),(1038,'公告删除',107,4,'#','','',1,0,'F','0','0','system:notice:remove','#','admin','2024-02-28 22:23:43','',NULL,''),(1039,'操作查询',500,1,'#','','',1,0,'F','0','0','monitor:operlog:query','#','admin','2024-02-28 22:23:43','',NULL,''),(1040,'操作删除',500,2,'#','','',1,0,'F','0','0','monitor:operlog:remove','#','admin','2024-02-28 22:23:43','',NULL,''),(1041,'日志导出',500,3,'#','','',1,0,'F','0','0','monitor:operlog:export','#','admin','2024-02-28 22:23:43','',NULL,''),(1042,'登录查询',501,1,'#','','',1,0,'F','0','0','monitor:logininfor:query','#','admin','2024-02-28 22:23:43','',NULL,''),(1043,'登录删除',501,2,'#','','',1,0,'F','0','0','monitor:logininfor:remove','#','admin','2024-02-28 22:23:43','',NULL,''),(1044,'日志导出',501,3,'#','','',1,0,'F','0','0','monitor:logininfor:export','#','admin','2024-02-28 22:23:43','',NULL,''),(1045,'账户解锁',501,4,'#','','',1,0,'F','0','0','monitor:logininfor:unlock','#','admin','2024-02-28 22:23:43','',NULL,''),(1046,'在线查询',109,1,'#','','',1,0,'F','0','0','monitor:online:query','#','admin','2024-02-28 22:23:43','',NULL,''),(1047,'批量强退',109,2,'#','','',1,0,'F','0','0','monitor:online:batchLogout','#','admin','2024-02-28 22:23:43','',NULL,''),(1048,'单条强退',109,3,'#','','',1,0,'F','0','0','monitor:online:forceLogout','#','admin','2024-02-28 22:23:43','',NULL,''),(1049,'任务查询',110,1,'#','','',1,0,'F','0','0','monitor:job:query','#','admin','2024-02-28 22:23:43','',NULL,''),(1050,'任务新增',110,2,'#','','',1,0,'F','0','0','monitor:job:add','#','admin','2024-02-28 22:23:43','',NULL,''),(1051,'任务修改',110,3,'#','','',1,0,'F','0','0','monitor:job:edit','#','admin','2024-02-28 22:23:43','',NULL,''),(1052,'任务删除',110,4,'#','','',1,0,'F','0','0','monitor:job:remove','#','admin','2024-02-28 22:23:43','',NULL,''),(1053,'状态修改',110,5,'#','','',1,0,'F','0','0','monitor:job:changeStatus','#','admin','2024-02-28 22:23:43','',NULL,''),(1054,'任务导出',110,6,'#','','',1,0,'F','0','0','monitor:job:export','#','admin','2024-02-28 22:23:43','',NULL,''),(1055,'生成查询',116,1,'#','','',1,0,'F','0','0','tool:gen:query','#','admin','2024-02-28 22:23:43','',NULL,''),(1056,'生成修改',116,2,'#','','',1,0,'F','0','0','tool:gen:edit','#','admin','2024-02-28 22:23:43','',NULL,''),(1057,'生成删除',116,3,'#','','',1,0,'F','0','0','tool:gen:remove','#','admin','2024-02-28 22:23:43','',NULL,''),(1058,'导入代码',116,4,'#','','',1,0,'F','0','0','tool:gen:import','#','admin','2024-02-28 22:23:43','',NULL,''),(1059,'预览代码',116,5,'#','','',1,0,'F','0','0','tool:gen:preview','#','admin','2024-02-28 22:23:43','',NULL,''),(1060,'生成代码',116,6,'#','','',1,0,'F','0','0','tool:gen:code','#','admin','2024-02-28 22:23:43','',NULL,''),(2000,'羽毛球场馆管理',0,2,'featherBall',NULL,NULL,1,0,'M','1','0','','server','admin','2024-03-01 23:11:41','admin','2024-03-23 18:23:39',''),(2001,'场馆管理',2000,1,'venue','featherball/venue/index',NULL,1,0,'C','0','0','featherball:venue:list','nested','admin','2024-03-01 23:15:33','',NULL,''),(2002,'场地管理',2000,2,'court','featherball/court/index',NULL,1,0,'C','0','0','featherball:court:list','excel','admin','2024-03-02 18:17:38','',NULL,''),(2003,'预约记录',2000,3,'reservation','featherball/reservation/index',NULL,1,0,'C','0','0','featherball:reservation:list','education','admin','2024-03-07 11:34:11','',NULL,''),(2004,'新增场馆',2001,1,'',NULL,NULL,1,0,'F','0','0','featherball:venue:add','#','admin','2024-03-07 17:24:30','',NULL,''),(2005,'查看评论',2001,2,'',NULL,NULL,1,0,'F','0','0','featherball:venue:review','#','admin','2024-03-07 17:25:05','',NULL,''),(2006,'场馆详情',2001,3,'',NULL,NULL,1,0,'F','0','0','featherball:venue:detail','#','admin','2024-03-07 17:25:39','',NULL,''),(2007,'编辑场馆',2001,4,'',NULL,NULL,1,0,'F','0','0','featherball:venue:edit','#','admin','2024-03-07 17:26:33','',NULL,''),(2008,'删除场馆',2001,5,'',NULL,NULL,1,0,'F','0','0','featherball:venue:delete','#','admin','2024-03-07 17:27:02','',NULL,''),(2009,'删除评论',2001,6,'',NULL,NULL,1,0,'F','0','0','featherball:venue:reviewdelete','#','admin','2024-03-07 17:27:43','',NULL,''),(2010,'发送评论',2001,7,'',NULL,NULL,1,0,'F','0','0','featherball:venue:reviewadd','#','admin','2024-03-07 17:28:10','',NULL,''),(2011,'新增场地',2002,1,'',NULL,NULL,1,0,'F','0','0','featherball:court:add','#','admin','2024-03-07 17:31:33','',NULL,''),(2012,'预约场地',2002,2,'',NULL,NULL,1,0,'F','0','0','featherball:court:reservation','#','admin','2024-03-07 17:32:13','',NULL,''),(2013,'场地详情',2002,3,'',NULL,NULL,1,0,'F','0','0','featherball:court:detail','#','admin','2024-03-07 17:32:38','',NULL,''),(2014,'编辑场地',2002,4,'',NULL,NULL,1,0,'F','0','0','featherball:court:edit','#','admin','2024-03-07 17:32:59','',NULL,''),(2015,'删除场地',2002,5,'',NULL,NULL,1,0,'F','0','0','featherball:court:delete','#','admin','2024-03-07 17:33:19','',NULL,''),(2016,'取消预约',2003,1,'',NULL,NULL,1,0,'F','0','0','featherball:reservation:cancel','#','admin','2024-03-07 17:39:36','',NULL,''),(2017,'教练管理',1,10,'trainer','system/user/index2',NULL,1,0,'C','1','0','system:user:list','people','admin','2024-03-08 10:56:24','admin','2024-03-20 21:20:33',''),(2018,'VIP管理',1,11,'vip','system/user/index3',NULL,1,0,'C','1','0','system:vip:list','star','admin','2024-03-08 11:04:14','admin','2024-03-20 21:20:37',''),(2019,'商品购买',2000,4,'equipmentPurchase','featherball/equipmentpurchase/index',NULL,1,0,'C','0','0','featherball:equipmentpurchase:list','shopping','admin','2024-03-08 15:55:06','',NULL,''),(2020,'器材维修',2000,5,'equipmentRepair','featherball/equipmentrepair/index',NULL,1,0,'C','0','0','featherball:equipmentrepair:list','tool','admin','2024-03-08 15:57:09','',NULL,''),(2021,'订单管理',2000,6,'balanceRecord','featherball/balancerecord/index',NULL,1,0,'C','0','0','featherball:balancerecord:list','documentation','admin','2024-03-09 12:29:42','',NULL,''),(2023,'新增商品',2019,1,'',NULL,NULL,1,0,'F','0','0','featherball:pur:add','#','admin','2024-03-10 11:29:43','',NULL,''),(2024,'购买商品',2019,2,'',NULL,NULL,1,0,'F','0','0','featherball:pur:buy','#','admin','2024-03-10 11:30:09','',NULL,''),(2025,'编辑商品',2019,3,'',NULL,NULL,1,0,'F','0','0','featherball:pur:edit','#','admin','2024-03-10 11:30:31','',NULL,''),(2026,'删除商品',2019,4,'',NULL,NULL,1,0,'F','0','0','featherball:pur:delete','#','admin','2024-03-10 11:31:02','',NULL,''),(2028,'配件维修',2020,2,'',NULL,NULL,1,0,'F','0','0','featherball:rep:rep','#','admin','2024-03-10 11:32:27','',NULL,''),(2031,'非遗文化管理',0,3,'culture',NULL,NULL,1,0,'M','0','0',NULL,'education','admin','2024-03-19 20:18:44','',NULL,''),(2032,'非遗文化',2031,1,'culture','culture/culture/index',NULL,1,0,'C','0','0','culture:culture:list','log','admin','2024-03-19 20:20:23','admin','2024-03-20 21:52:39',''),(2033,'非遗展览',2031,2,'exhibition','culture/exhibition/index',NULL,1,0,'C','0','0','culture:exhibition:list','color','admin','2024-03-20 21:28:03','',NULL,''),(2034,'预约记录',2031,3,'exhibitionRregistration','culture/exhibitionRregistration/index',NULL,1,0,'C','0','0','culture:exhibitionRregistration:list','form','admin','2024-03-23 11:19:48','admin','2024-03-23 11:20:02',''),(2035,'新增非遗',2032,1,'',NULL,NULL,1,0,'F','0','0','culture:culture:add','#','admin','2024-03-26 10:23:30','',NULL,''),(2036,'查看非遗',2032,2,'',NULL,NULL,1,0,'F','0','0','culture:culture:view','#','admin','2024-03-26 10:25:45','admin','2024-03-26 10:26:11',''),(2037,'编辑非遗',2032,3,'',NULL,NULL,1,0,'F','0','0','culture:culture:edit','#','admin','2024-03-26 10:26:34','',NULL,''),(2038,'删除非遗',2032,4,'',NULL,NULL,1,0,'F','0','0','culture:culture:delete','#','admin','2024-03-26 10:26:55','',NULL,''),(2039,'新增展览',2033,1,'',NULL,NULL,1,0,'F','0','0','culture:exhibition:add','#','admin','2024-03-26 10:27:48','',NULL,''),(2040,'预约展览',2033,2,'',NULL,NULL,1,0,'F','0','0','culture:exhibition:registration','#','admin','2024-03-26 10:28:13','',NULL,''),(2041,'查看展览',2033,3,'',NULL,NULL,1,0,'F','0','0','culture:exhibition:view','#','admin','2024-03-26 10:28:31','',NULL,''),(2042,'编辑展览',2033,4,'',NULL,NULL,1,0,'F','0','0','culture:exhibition:edit','#','admin','2024-03-26 10:28:53','',NULL,''),(2043,'删除展览',2033,5,'',NULL,NULL,1,0,'F','0','0','culture:exhibition:delete','#','admin','2024-03-26 10:40:13','admin','2024-03-26 10:40:26',''),(2044,'取消预约',2034,1,'',NULL,NULL,1,0,'F','0','0','culture:registration:cancel','#','admin','2024-03-26 10:41:32','',NULL,'');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notice`
--

DROP TABLE IF EXISTS `sys_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='通知公告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notice`
--

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
INSERT INTO `sys_notice` VALUES (1,'欢迎大家预约','2',_binary '<p>非遗文化展览开放啦，欢迎大家积极预约</p>','0','admin','2024-02-28 22:23:43','admin','2024-03-23 11:53:30','管理员'),(2,'系统维护公告','1',_binary '<p>非遗文化展览管理系统维护中，两天后正常开放</p>','0','admin','2024-02-28 22:23:43','admin','2024-03-23 11:53:57','管理员');
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_oper_log`
--

DROP TABLE IF EXISTS `sys_oper_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint DEFAULT '0' COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`),
  KEY `idx_sys_oper_log_bt` (`business_type`),
  KEY `idx_sys_oper_log_s` (`status`),
  KEY `idx_sys_oper_log_ot` (`oper_time`)
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='操作日志记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_oper_log`
--

LOCK TABLES `sys_oper_log` WRITE;
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;
INSERT INTO `sys_oper_log` VALUES (100,'用户管理',3,'com.ruoyi.web.controller.system.SysUserController.remove()','DELETE',1,'admin','研发部门','/system/user/2','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-02-28 22:40:16',125),(101,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin','研发部门','/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createTime\":\"2024-02-28 22:23:42\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,3,115,116,1055,1056,1057,1058,1059,1060,117],\"params\":{},\"remark\":\"教练员\",\"roleId\":2,\"roleKey\":\"coach\",\"roleName\":\"教练员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-02-28 22:40:47',63),(102,'角色管理',1,'com.ruoyi.web.controller.system.SysRoleController.add()','POST',1,'admin','研发部门','/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,3,115,116,1055,1056,1057,1058,1059,1060,117],\"params\":{},\"roleId\":100,\"roleKey\":\"VIP\",\"roleName\":\"VIP用户\",\"roleSort\":3,\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-02-28 22:41:12',47),(103,'角色管理',1,'com.ruoyi.web.controller.system.SysRoleController.add()','POST',1,'admin','研发部门','/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,3,115,116,1055,1056,1057,1058,1059,1060,117],\"params\":{},\"remark\":\"普通用户\",\"roleId\":101,\"roleKey\":\"common\",\"roleName\":\"普通用户\",\"roleSort\":4,\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-02-28 22:41:32',34),(104,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin','研发部门','/system/dept/102','127.0.0.1','内网IP','{}','{\"msg\":\"存在下级部门,不允许删除\",\"code\":601}',0,NULL,'2024-02-28 22:41:54',5),(105,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin','研发部门','/system/dept/109','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-02-28 22:41:57',19),(106,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin','研发部门','/system/dept/108','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-02-28 22:41:59',16),(107,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin','研发部门','/system/dept/107','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-02-28 22:42:01',18),(108,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin','研发部门','/system/dept/106','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-02-28 22:42:03',16),(109,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin','研发部门','/system/dept/105','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-02-28 22:42:05',17),(110,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin','研发部门','/system/dept/104','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-02-28 22:42:07',13),(111,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin','研发部门','/system/dept/103','127.0.0.1','内网IP','{}','{\"msg\":\"部门存在用户,不允许删除\",\"code\":601}',0,NULL,'2024-02-28 22:42:09',9),(112,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2024-02-28 22:23:42\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":4,\"menuName\":\"若依官网\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"http://ruoyi.vip\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-01 23:09:36',61),(113,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2024-02-28 22:23:42\",\"icon\":\"tool\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":3,\"menuName\":\"系统工具\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"tool\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-01 23:09:50',918),(114,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"icon\":\"server\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"羽毛球场馆管理\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"ss\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-01 23:11:41',20),(115,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2024-03-01 23:11:41\",\"icon\":\"server\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"羽毛球场馆管理\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"featherBall\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-01 23:12:27',15),(116,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"featherball/venue/index\",\"createBy\":\"admin\",\"icon\":\"nested\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"场馆管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2000,\"path\":\"venue\",\"perms\":\"featherball:venue:list\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-01 23:15:33',19),(117,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"featherball/court/index\",\"createBy\":\"admin\",\"icon\":\"excel\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"场地管理\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2000,\"path\":\"court\",\"perms\":\"featherball:court:list\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-02 18:17:38',48),(118,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"\",\"createTime\":\"2024-02-28 22:23:42\",\"icon\":\"log\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":108,\"menuName\":\"日志管理\",\"menuType\":\"M\",\"orderNum\":9,\"params\":{},\"parentId\":1,\"path\":\"log\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-03 17:40:49',54),(119,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/config/index\",\"createTime\":\"2024-02-28 22:23:42\",\"icon\":\"edit\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":106,\"menuName\":\"参数设置\",\"menuType\":\"C\",\"orderNum\":7,\"params\":{},\"parentId\":1,\"path\":\"config\",\"perms\":\"system:config:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-03 17:40:56',18),(120,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/dict/index\",\"createTime\":\"2024-02-28 22:23:42\",\"icon\":\"dict\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":105,\"menuName\":\"字典管理\",\"menuType\":\"C\",\"orderNum\":6,\"params\":{},\"parentId\":1,\"path\":\"dict\",\"perms\":\"system:dict:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-03 17:41:01',14),(121,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/post/index\",\"createTime\":\"2024-02-28 22:23:42\",\"icon\":\"post\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":104,\"menuName\":\"岗位管理\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":1,\"path\":\"post\",\"perms\":\"system:post:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-03 17:41:06',16),(122,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin','研发部门','/system/dept/101','127.0.0.1','内网IP','{}','{\"msg\":\"存在下级部门,不允许删除\",\"code\":601}',0,NULL,'2024-03-03 17:44:21',10),(123,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin','研发部门','/system/dept/102','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-03 17:44:23',17),(124,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin','研发部门','/system/dept/103','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-03 17:44:25',25),(125,'部门管理',3,'com.ruoyi.web.controller.system.SysDeptController.remove()','DELETE',1,'admin','研发部门','/system/dept/101','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-03 17:44:26',17),(126,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/dept/index\",\"createTime\":\"2024-02-28 22:23:42\",\"icon\":\"tree\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":103,\"menuName\":\"部门管理\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":1,\"path\":\"dept\",\"perms\":\"system:dept:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-03 17:45:33',13),(127,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2024-02-28 22:23:42\",\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2,\"menuName\":\"系统监控\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"monitor\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-03 17:45:53',12),(128,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/menu/index\",\"createTime\":\"2024-02-28 22:23:42\",\"icon\":\"tree-table\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":102,\"menuName\":\"菜单管理\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":1,\"path\":\"menu\",\"perms\":\"system:menu:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-04 18:50:34',38),(129,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/user','127.0.0.1','内网IP','{\"admin\":false,\"createBy\":\"admin\",\"deptId\":100,\"nickName\":\"张三\",\"params\":{},\"phonenumber\":\"13089876578\",\"postIds\":[],\"roleIds\":[2],\"sex\":\"0\",\"status\":\"0\",\"userId\":100,\"userName\":\"zhangsan\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-04 18:58:34',233),(130,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/user','127.0.0.1','内网IP','{\"admin\":false,\"createBy\":\"admin\",\"deptId\":100,\"nickName\":\"李四\",\"params\":{},\"phonenumber\":\"13909879876\",\"postIds\":[],\"roleIds\":[2],\"sex\":\"0\",\"status\":\"0\",\"userId\":101,\"userName\":\"lisi\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-04 18:58:57',155),(131,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/user','127.0.0.1','内网IP','{\"admin\":false,\"createBy\":\"admin\",\"deptId\":100,\"nickName\":\"王五\",\"params\":{},\"phonenumber\":\"13809897654\",\"postIds\":[],\"roleIds\":[100],\"sex\":\"1\",\"status\":\"0\",\"userId\":102,\"userName\":\"wangwu\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-04 18:59:22',151),(132,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/user','127.0.0.1','内网IP','{\"admin\":false,\"createBy\":\"admin\",\"deptId\":100,\"nickName\":\"赵六\",\"params\":{},\"phonenumber\":\"13098987678\",\"postIds\":[],\"roleIds\":[101],\"sex\":\"1\",\"status\":\"0\",\"userId\":103,\"userName\":\"zhaoliu\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-04 18:59:55',157),(133,'通知公告',2,'com.ruoyi.web.controller.system.SysNoticeController.edit()','PUT',1,'admin','青岛市羽毛球场管理公司','/system/notice','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"createTime\":\"2024-02-28 22:23:43\",\"noticeContent\":\"<p>羽毛球场馆开放啦，欢迎大家积极预约</p>\",\"noticeId\":1,\"noticeTitle\":\"欢迎大家预约\",\"noticeType\":\"2\",\"params\":{},\"remark\":\"管理员\",\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-05 10:19:20',10),(134,'通知公告',2,'com.ruoyi.web.controller.system.SysNoticeController.edit()','PUT',1,'admin','青岛市羽毛球场管理公司','/system/notice','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"createTime\":\"2024-02-28 22:23:43\",\"noticeContent\":\"<p>系统维护中，两天后正常开放</p>\",\"noticeId\":2,\"noticeTitle\":\"羽毛球场管理预约系统维护\",\"noticeType\":\"1\",\"params\":{},\"remark\":\"管理员\",\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-05 10:20:01',26),(135,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin','青岛市羽毛球场管理公司','/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createTime\":\"2024-02-28 22:41:12\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,2000,2001,2002,3,115,116,1055,1056,1057,1058,1059,1060,117],\"params\":{},\"roleId\":100,\"roleKey\":\"VIP\",\"roleName\":\"VIP用户\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-06 15:36:09',78),(136,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin','青岛市羽毛球场管理公司','/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createTime\":\"2024-02-28 22:23:42\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,2000,2001,2002,3,115,116,1055,1056,1057,1058,1059,1060,117],\"params\":{},\"remark\":\"教练员\",\"roleId\":2,\"roleKey\":\"coach\",\"roleName\":\"教练员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-06 15:36:13',33),(137,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin','青岛市羽毛球场管理公司','/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createTime\":\"2024-02-28 22:41:32\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,2000,2001,2002,3,115,116,1055,1056,1057,1058,1059,1060,117],\"params\":{},\"remark\":\"普通用户\",\"roleId\":101,\"roleKey\":\"common\",\"roleName\":\"普通用户\",\"roleSort\":4,\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-06 15:36:16',33),(138,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"featherball/reservation/index\",\"createBy\":\"admin\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"预约记录\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2000,\"path\":\"reservation\",\"perms\":\"featherball:reservation:list\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-07 11:34:11',14),(139,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin','青岛市羽毛球场管理公司','/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createTime\":\"2024-02-28 22:41:12\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,2000,2001,2002,2003,3,115,116,1055,1056,1057,1058,1059,1060,117],\"params\":{},\"roleId\":100,\"roleKey\":\"VIP\",\"roleName\":\"VIP用户\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-07 16:46:19',33),(140,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin','青岛市羽毛球场管理公司','/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createTime\":\"2024-02-28 22:23:42\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,2000,2001,2002,2003,3,115,116,1055,1056,1057,1058,1059,1060,117],\"params\":{},\"remark\":\"教练员\",\"roleId\":2,\"roleKey\":\"coach\",\"roleName\":\"教练员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-07 16:46:28',15),(141,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin','青岛市羽毛球场管理公司','/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createTime\":\"2024-02-28 22:41:32\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,2000,2001,2002,2003,3,115,116,1055,1056,1057,1058,1059,1060,117],\"params\":{},\"remark\":\"普通用户\",\"roleId\":101,\"roleKey\":\"common\",\"roleName\":\"普通用户\",\"roleSort\":4,\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-07 16:46:34',25),(142,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"新增场馆\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2001,\"perms\":\"featherball:venue:add\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-07 17:24:30',45),(143,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"查看评论\",\"menuType\":\"F\",\"orderNum\":2,\"params\":{},\"parentId\":2001,\"perms\":\"featherball:venue:review\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-07 17:25:05',21),(144,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"场馆详情\",\"menuType\":\"F\",\"orderNum\":3,\"params\":{},\"parentId\":2001,\"perms\":\"featherball:venue:detail\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-07 17:25:40',16),(145,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"编辑场馆\",\"menuType\":\"F\",\"orderNum\":4,\"params\":{},\"parentId\":2001,\"perms\":\"featherball:venue:edit\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-07 17:26:33',17),(146,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"删除场馆\",\"menuType\":\"F\",\"orderNum\":5,\"params\":{},\"parentId\":2001,\"perms\":\"featherball:venue:delete\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-07 17:27:02',29),(147,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"删除评论\",\"menuType\":\"F\",\"orderNum\":6,\"params\":{},\"parentId\":2001,\"perms\":\"featherball:venue:reviewdelete\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-07 17:27:43',28),(148,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"发送评论\",\"menuType\":\"F\",\"orderNum\":7,\"params\":{},\"parentId\":2001,\"perms\":\"featherball:venue:reviewadd\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-07 17:28:10',22),(149,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"新增场地\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2002,\"perms\":\"featherball:court:add\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-07 17:31:33',21),(150,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"预约场地\",\"menuType\":\"F\",\"orderNum\":2,\"params\":{},\"parentId\":2002,\"perms\":\"featherball:court:reservation\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-07 17:32:13',21),(151,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"场地详情\",\"menuType\":\"F\",\"orderNum\":3,\"params\":{},\"parentId\":2002,\"perms\":\"featherball:court:detail\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-07 17:32:38',25),(152,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"编辑场地\",\"menuType\":\"F\",\"orderNum\":4,\"params\":{},\"parentId\":2002,\"perms\":\"featherball:court:edit\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-07 17:32:59',30),(153,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"删除场地\",\"menuType\":\"F\",\"orderNum\":5,\"params\":{},\"parentId\":2002,\"perms\":\"featherball:court:delete\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-07 17:33:19',25),(154,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"取消预约\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2003,\"perms\":\"featherball:reservation:cancel\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-07 17:39:37',18),(155,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin','青岛市羽毛球场管理公司','/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createTime\":\"2024-02-28 22:23:42\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2000,2001,2002,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,2005,2006,2013,2003,3,115,116,1055,1056,1057,1058,1059,1060,117],\"params\":{},\"remark\":\"教练员\",\"roleId\":2,\"roleKey\":\"coach\",\"roleName\":\"教练员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-07 17:40:40',63),(156,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin','青岛市羽毛球场管理公司','/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createTime\":\"2024-02-28 22:41:12\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2000,2001,2002,2005,2006,2009,2010,2012,2013,2003,2016],\"params\":{},\"roleId\":100,\"roleKey\":\"VIP\",\"roleName\":\"VIP用户\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-07 17:44:35',46),(157,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin','青岛市羽毛球场管理公司','/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createTime\":\"2024-02-28 22:23:42\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2000,2001,2002,2005,2006,2013,2003],\"params\":{},\"remark\":\"教练员\",\"roleId\":2,\"roleKey\":\"coach\",\"roleName\":\"教练员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-07 17:44:43',38),(158,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin','青岛市羽毛球场管理公司','/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createTime\":\"2024-02-28 22:41:32\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2000,2001,2002,2005,2006,2010,2012,2013,2003,2016],\"params\":{},\"remark\":\"普通用户\",\"roleId\":101,\"roleKey\":\"common\",\"roleName\":\"普通用户\",\"roleSort\":4,\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-07 17:45:02',36),(159,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin','青岛市羽毛球场管理公司','/system/user','127.0.0.1','内网IP','{\"admin\":false,\"avatar\":\"\",\"balance\":10000,\"createBy\":\"admin\",\"createTime\":\"2024-03-04 18:58:34\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"青岛市羽毛球场管理公司\",\"leader\":\"若依\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"deptId\":100,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"张三\",\"params\":{},\"phonenumber\":\"13089876578\",\"postIds\":[],\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"coach\",\"roleName\":\"教练员\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":100,\"userName\":\"zhangsan\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-08 10:19:13',27),(160,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin','青岛市羽毛球场管理公司','/system/user','127.0.0.1','内网IP','{\"admin\":false,\"avatar\":\"\",\"balance\":10,\"createBy\":\"admin\",\"createTime\":\"2024-03-04 18:58:34\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"青岛市羽毛球场管理公司\",\"leader\":\"若依\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"deptId\":100,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"张三\",\"params\":{},\"phonenumber\":\"13089876578\",\"postIds\":[],\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"coach\",\"roleName\":\"教练员\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":100,\"userName\":\"zhangsan\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-08 10:19:23',17),(161,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin','青岛市羽毛球场管理公司','/system/user','127.0.0.1','内网IP','{\"admin\":false,\"avatar\":\"\",\"balance\":10,\"createBy\":\"admin\",\"createTime\":\"2024-03-04 18:58:57\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"青岛市羽毛球场管理公司\",\"leader\":\"若依\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"deptId\":100,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"李四\",\"params\":{},\"phonenumber\":\"13909879876\",\"postIds\":[],\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"coach\",\"roleName\":\"教练员\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":101,\"userName\":\"lisi\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-08 10:19:28',24),(162,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin','青岛市羽毛球场管理公司','/system/user','127.0.0.1','内网IP','{\"admin\":false,\"avatar\":\"\",\"balance\":10000,\"createBy\":\"admin\",\"createTime\":\"2024-03-04 18:59:22\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"青岛市羽毛球场管理公司\",\"leader\":\"若依\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"deptId\":100,\"email\":\"\",\"loginDate\":\"2024-03-07 17:45:44\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"王五\",\"params\":{},\"phonenumber\":\"13809897654\",\"postIds\":[],\"roleIds\":[100],\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":100,\"roleKey\":\"VIP\",\"roleName\":\"VIP用户\",\"roleSort\":3,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":102,\"userName\":\"wangwu\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-08 10:19:36',32),(163,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin','青岛市羽毛球场管理公司','/system/user','127.0.0.1','内网IP','{\"admin\":false,\"avatar\":\"\",\"balance\":10000,\"createBy\":\"admin\",\"createTime\":\"2024-03-04 18:59:55\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"青岛市羽毛球场管理公司\",\"leader\":\"若依\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"deptId\":100,\"email\":\"\",\"loginDate\":\"2024-03-06 15:38:23\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"赵六\",\"params\":{},\"phonenumber\":\"13098987678\",\"postIds\":[],\"roleIds\":[101],\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":101,\"roleKey\":\"common\",\"roleName\":\"普通用户\",\"roleSort\":4,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":103,\"userName\":\"zhaoliu\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-08 10:19:42',25),(164,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/user/index2\",\"createBy\":\"admin\",\"icon\":\"people\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"教练管理\",\"menuType\":\"C\",\"orderNum\":10,\"params\":{},\"parentId\":0,\"path\":\"trainer\",\"perms\":\"system:user:list\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-08 10:56:24',55),(165,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/user/index2\",\"createTime\":\"2024-03-08 10:56:24\",\"icon\":\"people\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2017,\"menuName\":\"教练管理\",\"menuType\":\"C\",\"orderNum\":10,\"params\":{},\"parentId\":1,\"path\":\"trainer\",\"perms\":\"system:user:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-08 11:02:16',44),(166,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/user/index3\",\"createBy\":\"admin\",\"icon\":\"star\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"VIP管理\",\"menuType\":\"C\",\"orderNum\":11,\"params\":{},\"parentId\":1,\"path\":\"vip\",\"perms\":\"system:vip:list\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-08 11:04:14',22),(167,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"featherball/equipmentpurchase/index\",\"createBy\":\"admin\",\"icon\":\"shopping\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"商品购买\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":2000,\"path\":\"equipmentPurchase\",\"perms\":\"featherball:equipmentpurchase:list\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-08 15:55:06',25),(168,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"featherball/equipmentrepair/index\",\"createBy\":\"admin\",\"icon\":\"tool\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"器材维修\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":2000,\"path\":\"equipmentRepair\",\"perms\":\"featherball:equipmentrepair:list\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-08 15:57:09',24),(169,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"featherball/balancerecord/index\",\"createBy\":\"admin\",\"icon\":\"documentation\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"订单管理\",\"menuType\":\"C\",\"orderNum\":6,\"params\":{},\"parentId\":2000,\"path\":\"balanceRecord\",\"perms\":\"featherball:balancerecord:list\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-09 12:29:42',47),(170,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin','青岛市羽毛球场管理公司','/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createTime\":\"2024-02-28 22:41:12\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2000,2001,2002,2005,2006,2009,2010,2012,2013,2003,2016,2019,2020,2021],\"params\":{},\"roleId\":100,\"roleKey\":\"VIP\",\"roleName\":\"VIP用户\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-09 18:14:14',54),(171,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin','青岛市羽毛球场管理公司','/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createTime\":\"2024-02-28 22:41:32\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2000,2001,2002,2005,2006,2010,2012,2013,2003,2016,2019,2020,2021],\"params\":{},\"remark\":\"普通用户\",\"roleId\":101,\"roleKey\":\"common\",\"roleName\":\"普通用户\",\"roleSort\":4,\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-09 18:14:20',28),(172,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"featherball/charts/index\",\"createBy\":\"admin\",\"icon\":\"chart\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"统计图表\",\"menuType\":\"C\",\"orderNum\":7,\"params\":{},\"parentId\":2000,\"path\":\"charts\",\"perms\":\"featherball:charts:list\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-09 22:57:41',54),(173,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"新增商品\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2019,\"perms\":\"featherball:pur:add\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-10 11:29:43',45),(174,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"购买商品\",\"menuType\":\"F\",\"orderNum\":2,\"params\":{},\"parentId\":2019,\"perms\":\"featherball:pur:buy\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-10 11:30:09',29),(175,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"编辑商品\",\"menuType\":\"F\",\"orderNum\":3,\"params\":{},\"parentId\":2019,\"perms\":\"featherball:pur:edit\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-10 11:30:32',12),(176,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"删除商品\",\"menuType\":\"F\",\"orderNum\":4,\"params\":{},\"parentId\":2019,\"perms\":\"featherball:pur:delete\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-10 11:31:02',15),(177,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"新增配件\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2020,\"perms\":\"featherball:rep:add\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-10 11:32:00',17),(178,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"配件维修\",\"menuType\":\"F\",\"orderNum\":2,\"params\":{},\"parentId\":2020,\"perms\":\"featherball:rep:rep\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-10 11:32:27',11),(179,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"编辑配件\",\"menuType\":\"F\",\"orderNum\":3,\"params\":{},\"parentId\":2020,\"perms\":\"featherball:rep:edit\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-10 11:32:49',12),(180,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"删除配件\",\"menuType\":\"F\",\"orderNum\":4,\"params\":{},\"parentId\":2020,\"perms\":\"featherball:rep:delete\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-10 11:33:09',13),(181,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin','青岛市羽毛球场管理公司','/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createTime\":\"2024-02-28 22:23:42\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":false,\"menuIds\":[2000,2001,2002,2005,2006,2013,2003,2019,2020,2021],\"params\":{},\"remark\":\"教练员\",\"roleId\":2,\"roleKey\":\"coach\",\"roleName\":\"教练员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-10 11:34:44',132),(182,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin','青岛市羽毛球场管理公司','/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createTime\":\"2024-02-28 22:41:12\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2000,2001,2002,2019,2020,2005,2006,2009,2010,2012,2013,2003,2016,2024,2028,2021],\"params\":{},\"roleId\":100,\"roleKey\":\"VIP\",\"roleName\":\"VIP用户\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-10 11:35:10',34),(183,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"非遗文化管理\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"culture\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-19 20:18:44',52),(184,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"culture/culture/index\",\"createBy\":\"admin\",\"icon\":\"log\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"非遗管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2031,\"path\":\"culture\",\"perms\":\"culture:culture:list\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-19 20:20:23',23),(185,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/user/index2\",\"createTime\":\"2024-03-08 10:56:24\",\"icon\":\"people\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2017,\"menuName\":\"教练管理\",\"menuType\":\"C\",\"orderNum\":10,\"params\":{},\"parentId\":1,\"path\":\"trainer\",\"perms\":\"system:user:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-20 21:20:33',60),(186,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/user/index3\",\"createTime\":\"2024-03-08 11:04:14\",\"icon\":\"star\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2018,\"menuName\":\"VIP管理\",\"menuType\":\"C\",\"orderNum\":11,\"params\":{},\"parentId\":1,\"path\":\"vip\",\"perms\":\"system:vip:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-20 21:20:37',10),(187,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"culture/exhibition/index\",\"createBy\":\"admin\",\"icon\":\"color\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"非遗展览\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2031,\"path\":\"exhibition\",\"perms\":\"culture:exhibition:list\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-20 21:28:03',20),(188,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"culture/culture/index\",\"createTime\":\"2024-03-19 20:20:23\",\"icon\":\"log\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2032,\"menuName\":\"非遗文化\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2031,\"path\":\"culture\",\"perms\":\"culture:culture:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-20 21:52:39',45),(189,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"culture/exhibitionRregistration/index\",\"createBy\":\"admin\",\"icon\":\"form\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"预约记录\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2031,\"path\":\"culture\",\"perms\":\"culture:exhibitionRregistration:list\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-23 11:19:48',136),(190,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"culture/exhibitionRregistration/index\",\"createTime\":\"2024-03-23 11:19:48\",\"icon\":\"form\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2034,\"menuName\":\"预约记录\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2031,\"path\":\"exhibitionRregistration\",\"perms\":\"culture:exhibitionRregistration:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-23 11:20:02',37),(191,'通知公告',2,'com.ruoyi.web.controller.system.SysNoticeController.edit()','PUT',1,'admin','青岛市羽毛球场管理公司','/system/notice','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"createTime\":\"2024-02-28 22:23:43\",\"noticeContent\":\"<p>非遗文化展览开放啦，欢迎大家积极预约</p>\",\"noticeId\":1,\"noticeTitle\":\"欢迎大家预约\",\"noticeType\":\"2\",\"params\":{},\"remark\":\"管理员\",\"status\":\"0\",\"updateBy\":\"admin\",\"updateTime\":\"2024-03-05 10:19:20\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-23 11:53:30',32),(192,'通知公告',2,'com.ruoyi.web.controller.system.SysNoticeController.edit()','PUT',1,'admin','青岛市羽毛球场管理公司','/system/notice','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"createTime\":\"2024-02-28 22:23:43\",\"noticeContent\":\"<p>非遗文化展览管理系统维护中，两天后正常开放</p>\",\"noticeId\":2,\"noticeTitle\":\"系统维护公告\",\"noticeType\":\"1\",\"params\":{},\"remark\":\"管理员\",\"status\":\"0\",\"updateBy\":\"admin\",\"updateTime\":\"2024-03-05 10:20:01\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-23 11:53:57',13),(193,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2024-03-01 23:11:41\",\"icon\":\"server\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"羽毛球场馆管理\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"featherBall\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-23 18:23:39',43),(194,'用户头像',2,'com.ruoyi.web.controller.system.SysProfileController.avatar()','POST',1,'zhangsan','青岛市羽毛球场管理公司','/system/user/profile/avatar','127.0.0.1','内网IP','','{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2024/03/25/屏幕截图 2024-03-07 113152_20240325091732A004.png\",\"code\":200}',0,NULL,'2024-03-25 09:17:32',35),(195,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','青岛市羽毛球场管理公司','/system/menu/2000','127.0.0.1','内网IP','{}','{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}',0,NULL,'2024-03-26 09:41:06',5),(196,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','青岛市羽毛球场管理公司','/system/menu/2022','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-26 09:41:12',22),(197,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','青岛市羽毛球场管理公司','/system/menu/2021','127.0.0.1','内网IP','{}','{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}',0,NULL,'2024-03-26 09:41:15',5),(198,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','青岛市羽毛球场管理公司','/system/menu/2021','127.0.0.1','内网IP','{}','{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}',0,NULL,'2024-03-26 09:41:20',3),(199,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','青岛市羽毛球场管理公司','/system/menu/2020','127.0.0.1','内网IP','{}','{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}',0,NULL,'2024-03-26 09:41:25',4),(200,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','青岛市羽毛球场管理公司','/system/menu/2030','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-26 09:41:29',25),(201,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','青岛市羽毛球场管理公司','/system/menu/2029','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-26 09:41:32',13),(202,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','青岛市羽毛球场管理公司','/system/menu/2028','127.0.0.1','内网IP','{}','{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}',0,NULL,'2024-03-26 09:41:34',6),(203,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','青岛市羽毛球场管理公司','/system/menu/2027','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-26 09:41:40',32),(204,'角色管理',3,'com.ruoyi.web.controller.system.SysRoleController.remove()','DELETE',1,'admin','青岛市羽毛球场管理公司','/system/role/101','127.0.0.1','内网IP','{}',NULL,1,'普通用户已分配,不能删除','2024-03-26 09:42:35',23),(205,'用户管理',3,'com.ruoyi.web.controller.system.SysUserController.remove()','DELETE',1,'admin','青岛市羽毛球场管理公司','/system/user/103','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-26 09:42:57',27),(206,'用户管理',3,'com.ruoyi.web.controller.system.SysUserController.remove()','DELETE',1,'admin','青岛市羽毛球场管理公司','/system/user/102','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-26 09:42:58',21),(207,'角色管理',3,'com.ruoyi.web.controller.system.SysRoleController.remove()','DELETE',1,'admin','青岛市羽毛球场管理公司','/system/role/100','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-26 09:43:04',20),(208,'角色管理',3,'com.ruoyi.web.controller.system.SysRoleController.remove()','DELETE',1,'admin','青岛市羽毛球场管理公司','/system/role/101','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-26 09:43:05',19),(209,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin','青岛市羽毛球场管理公司','/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createTime\":\"2024-02-28 22:23:42\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":false,\"menuIds\":[2001,2005,2006,2002,2013,2003,2019,2020,2021,2031,2032,2033,2034],\"params\":{},\"remark\":\"教练员\",\"roleId\":2,\"roleKey\":\"tourist\",\"roleName\":\"游客\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-26 09:43:49',16),(210,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin','青岛市羽毛球场管理公司','/system/user','127.0.0.1','内网IP','{\"admin\":false,\"avatar\":\"/profile/avatar/2024/03/25/屏幕截图 2024-03-07 113152_20240325091732A004.png\",\"balance\":10,\"createBy\":\"admin\",\"createTime\":\"2024-03-04 18:58:34\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"青岛市羽毛球场管理公司\",\"leader\":\"若依\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"deptId\":100,\"email\":\"\",\"loginDate\":\"2024-03-25 09:17:20\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"张三\",\"params\":{},\"phonenumber\":\"13089876578\",\"postIds\":[],\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"tourist\",\"roleName\":\"游客\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":100,\"userName\":\"zhangsan\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-26 09:45:29',20),(211,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin','青岛市羽毛球场管理公司','/system/user','127.0.0.1','内网IP','{\"admin\":false,\"avatar\":\"\",\"balance\":10,\"createBy\":\"admin\",\"createTime\":\"2024-03-04 18:58:57\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"青岛市羽毛球场管理公司\",\"leader\":\"若依\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"deptId\":100,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"李四\",\"params\":{},\"phonenumber\":\"13909879876\",\"postIds\":[],\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"tourist\",\"roleName\":\"游客\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":101,\"userName\":\"lisi\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-26 09:45:34',23),(212,'用户管理',3,'com.ruoyi.web.controller.system.SysUserController.remove()','DELETE',1,'admin','青岛市羽毛球场管理公司','/system/user/100','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-26 09:46:43',15),(213,'用户管理',3,'com.ruoyi.web.controller.system.SysUserController.remove()','DELETE',1,'admin','青岛市羽毛球场管理公司','/system/user/101','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-26 09:46:45',19),(214,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/user','127.0.0.1','内网IP','{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"张三\",\"params\":{},\"phonenumber\":\"13036856974\",\"postIds\":[],\"roleIds\":[2],\"sex\":\"0\",\"status\":\"0\",\"userId\":104,\"userName\":\"zhangsan\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-26 09:47:17',83),(215,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"新增非遗\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2032,\"perms\":\"culture:culture:add\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-26 10:23:30',11),(216,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"culture:culture:view\",\"menuType\":\"F\",\"orderNum\":2,\"params\":{},\"parentId\":2032,\"perms\":\"查看非遗\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-26 10:25:45',23),(217,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2024-03-26 10:25:45\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2036,\"menuName\":\"查看非遗\",\"menuType\":\"F\",\"orderNum\":2,\"params\":{},\"parentId\":2032,\"path\":\"\",\"perms\":\"culture:culture:view\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-26 10:26:11',18),(218,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"编辑非遗\",\"menuType\":\"F\",\"orderNum\":3,\"params\":{},\"parentId\":2032,\"perms\":\"culture:culture:edit\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-26 10:26:34',18),(219,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"删除非遗\",\"menuType\":\"F\",\"orderNum\":4,\"params\":{},\"parentId\":2032,\"perms\":\"culture:culture:delete\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-26 10:26:55',13),(220,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"新增展览\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2033,\"perms\":\"culture:exhibition:add\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-26 10:27:48',19),(221,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"预约展览\",\"menuType\":\"F\",\"orderNum\":2,\"params\":{},\"parentId\":2033,\"perms\":\"culture:exhibition:registration\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-26 10:28:14',18),(222,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"查看展览\",\"menuType\":\"F\",\"orderNum\":3,\"params\":{},\"parentId\":2033,\"perms\":\"culture:exhibition:view\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-26 10:28:31',21),(223,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"编辑展览\",\"menuType\":\"F\",\"orderNum\":4,\"params\":{},\"parentId\":2033,\"perms\":\"culture:exhibition:edit\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-26 10:28:53',20),(224,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"删除非遗\",\"menuType\":\"F\",\"orderNum\":5,\"params\":{},\"parentId\":2033,\"perms\":\"culture:exhibition:delete\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-26 10:40:13',13),(225,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2024-03-26 10:40:13\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2043,\"menuName\":\"删除展览\",\"menuType\":\"F\",\"orderNum\":5,\"params\":{},\"parentId\":2033,\"path\":\"\",\"perms\":\"culture:exhibition:delete\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-26 10:40:26',62),(226,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"取消预约\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2034,\"perms\":\"culture:registration:cancel\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-26 10:41:32',22),(227,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin','青岛市羽毛球场管理公司','/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createTime\":\"2024-02-28 22:23:42\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":false,\"menuIds\":[2001,2005,2006,2002,2013,2003,2019,2020,2021,2031,2032,2036,2033,2040,2041,2034,2044],\"params\":{},\"remark\":\"教练员\",\"roleId\":2,\"roleKey\":\"tourist\",\"roleName\":\"游客\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-26 10:42:11',21),(228,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/user','127.0.0.1','内网IP','{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"lisi\",\"params\":{},\"phonenumber\":\"13065984573\",\"postIds\":[],\"roleIds\":[2],\"sex\":\"1\",\"status\":\"0\",\"userId\":105,\"userName\":\"李四\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-26 14:29:20',81),(229,'用户管理',3,'com.ruoyi.web.controller.system.SysUserController.remove()','DELETE',1,'admin','青岛市羽毛球场管理公司','/system/user/105','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-26 14:29:33',20),(230,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.add()','POST',1,'admin','青岛市羽毛球场管理公司','/system/user','127.0.0.1','内网IP','{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"李四\",\"params\":{},\"phonenumber\":\"13035682654\",\"postIds\":[],\"roleIds\":[2],\"sex\":\"1\",\"status\":\"0\",\"userId\":106,\"userName\":\"lisi\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-03-26 14:29:48',73),(231,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','青岛市羽毛球场管理公司','/system/menu/2000','127.0.0.1','内网IP','{}','{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}',0,NULL,'2024-03-26 14:51:35',6);
/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_post`
--

DROP TABLE IF EXISTS `sys_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_post` (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='岗位信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_post`
--

LOCK TABLES `sys_post` WRITE;
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;
INSERT INTO `sys_post` VALUES (1,'ceo','董事长',1,'0','admin','2024-02-28 22:23:42','',NULL,''),(2,'se','项目经理',2,'0','admin','2024-02-28 22:23:42','',NULL,''),(3,'hr','人力资源',3,'0','admin','2024-02-28 22:23:42','',NULL,''),(4,'user','普通员工',4,'0','admin','2024-02-28 22:23:42','',NULL,'');
/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'超级管理员','admin',1,'1',1,1,'0','0','admin','2024-02-28 22:23:42','',NULL,'超级管理员'),(2,'游客','tourist',2,'2',0,1,'0','0','admin','2024-02-28 22:23:42','admin','2024-03-26 10:42:11','教练员'),(100,'VIP用户','VIP',3,'1',1,1,'0','2','admin','2024-02-28 22:41:12','admin','2024-03-10 11:35:10',NULL),(101,'普通用户','common',4,'1',1,1,'0','2','admin','2024-02-28 22:41:32','admin','2024-03-09 18:14:20','普通用户');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_dept`
--

DROP TABLE IF EXISTS `sys_role_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和部门关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_dept`
--

LOCK TABLES `sys_role_dept` WRITE;
/*!40000 ALTER TABLE `sys_role_dept` DISABLE KEYS */;
INSERT INTO `sys_role_dept` VALUES (2,100),(2,101),(2,105);
/*!40000 ALTER TABLE `sys_role_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和菜单关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (2,2001),(2,2002),(2,2003),(2,2005),(2,2006),(2,2013),(2,2019),(2,2020),(2,2021),(2,2031),(2,2032),(2,2033),(2,2034),(2,2036),(2,2040),(2,2041),(2,2044);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `balance` decimal(7,2) DEFAULT NULL COMMENT '余额',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,100,'admin','管理员','00','ry@163.com','15888888888','1','','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','0','127.0.0.1','2024-04-11 15:05:20','admin','2024-02-28 22:23:42','','2024-04-11 15:05:19','管理员',333.20),(2,105,'ry','若依','00','ry@qq.com','15666666666','1','','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','2','127.0.0.1','2024-02-28 22:23:42','admin','2024-02-28 22:23:42','',NULL,'测试员',NULL),(100,100,'zhangsan','张三','00','','13089876578','0','/profile/avatar/2024/03/25/屏幕截图 2024-03-07 113152_20240325091732A004.png','$2a$10$g86PdbK5Z28hgOkGfevFCuO0KekkjR6OJdAHt8gCyLJFG3Uos.3JO','0','2','127.0.0.1','2024-03-25 09:17:20','admin','2024-03-04 18:58:34','admin','2024-03-26 09:45:29',NULL,10.00),(101,100,'lisi','李四','00','','13909879876','0','','$2a$10$aiYx9RhkHXWto9AK.rMgu.MobzG6j76WtZ5jetHTmi67xJjcZ9tZq','0','2','',NULL,'admin','2024-03-04 18:58:57','admin','2024-03-26 09:45:34',NULL,10.00),(102,100,'wangwu','王五','00','','13809897654','1','','$2a$10$fvHIaJ0kOyCPYIFlo6Tnn.juTWodmgWP6IT/9D6qzI77zT6hhLNGS','0','2','127.0.0.1','2024-03-10 11:35:34','admin','2024-03-04 18:59:22','admin','2024-03-10 11:35:33',NULL,9666.80),(103,100,'zhaoliu','赵六','00','','13098987678','1','','$2a$10$W/Jh9aLcunw7wGAFa7GSuOcNroWzbk5Dy4AXPb7Ke85BIJdsEQNrC','0','2','127.0.0.1','2024-03-06 15:38:23','admin','2024-03-04 18:59:55','admin','2024-03-08 10:19:42',NULL,10000.00),(104,NULL,'zhangsan','张三','00','','13036856974','0','','$2a$10$lfE/uN5HDx82NTuxXVbIauSOI26DwLQBPwMrO7zujNfAvlBA64SWS','0','0','127.0.0.1','2024-03-26 11:37:46','admin','2024-03-26 09:47:17','','2024-03-26 11:37:45',NULL,NULL),(105,NULL,'李四','lisi','00','','13065984573','1','','$2a$10$6U179rVh0VoPz/huXWmuH.ImRLh8mTdsx8GuXGngTXWzjyy6CyKKe','0','2','',NULL,'admin','2024-03-26 14:29:20','',NULL,NULL,NULL),(106,NULL,'lisi','李四','00','','13035682654','1','','$2a$10$G65ARoR9tEkC6KLTXlgf.ONcE/3BDCeqJGB9ueMefUxveOfalFK..','0','0','127.0.0.1','2024-03-26 14:30:04','admin','2024-03-26 14:29:47','','2024-03-26 14:30:03',NULL,NULL),(107,NULL,'fjx','fjx','00','','','0','','$2a$10$TEfqxhFzOzlpnkHbUuKEvuB7rSYu8XY9onRI2oiLGV6s9DCVPvgoG','0','0','127.0.0.1','2024-04-11 15:04:53','','2024-04-11 15:04:30','','2024-04-11 15:04:52',NULL,NULL);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_post`
--

DROP TABLE IF EXISTS `sys_user_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_post` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户与岗位关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_post`
--

LOCK TABLES `sys_user_post` WRITE;
/*!40000 ALTER TABLE `sys_user_post` DISABLE KEYS */;
INSERT INTO `sys_user_post` VALUES (1,1);
/*!40000 ALTER TABLE `sys_user_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_role` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户和角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1),(104,2),(106,2),(107,2);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ry-ich'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-11 15:06:57
