/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50643
 Source Host           : 127.0.0.1
 Source Database       : EleSale

 Target Server Type    : MySQL
 Target Server Version : 50643
 File Encoding         : utf-8

 Date: 09/02/2019 12:44:31 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `cms_help`
-- ----------------------------
DROP TABLE IF EXISTS `cms_help`;
CREATE TABLE `cms_help` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) DEFAULT NULL,
  `icon` varchar(500) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `show_status` int(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `read_count` int(1) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='帮助表';

-- ----------------------------
--  Table structure for `cms_help_category`
-- ----------------------------
DROP TABLE IF EXISTS `cms_help_category`;
CREATE TABLE `cms_help_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `icon` varchar(500) DEFAULT NULL COMMENT '分类图标',
  `help_count` int(11) DEFAULT NULL COMMENT '专题数量',
  `show_status` int(2) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='帮助分类表';

-- ----------------------------
--  Table structure for `cms_member_report`
-- ----------------------------
DROP TABLE IF EXISTS `cms_member_report`;
CREATE TABLE `cms_member_report` (
  `id` bigint(20) DEFAULT NULL,
  `report_type` int(1) DEFAULT NULL COMMENT '举报类型：0->商品评价；1->话题内容；2->用户评论',
  `report_member_name` varchar(100) DEFAULT NULL COMMENT '举报人',
  `create_time` datetime DEFAULT NULL,
  `report_object` varchar(100) DEFAULT NULL,
  `report_status` int(1) DEFAULT NULL COMMENT '举报状态：0->未处理；1->已处理',
  `handle_status` int(1) DEFAULT NULL COMMENT '处理结果：0->无效；1->有效；2->恶意',
  `note` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户举报表';

-- ----------------------------
--  Table structure for `cms_prefrence_area`
-- ----------------------------
DROP TABLE IF EXISTS `cms_prefrence_area`;
CREATE TABLE `cms_prefrence_area` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `pic` varbinary(500) DEFAULT NULL COMMENT '展示图片',
  `sort` int(11) DEFAULT NULL,
  `show_status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='优选专区';

-- ----------------------------
--  Records of `cms_prefrence_area`
-- ----------------------------
BEGIN;
INSERT INTO `cms_prefrence_area` VALUES ('1', '让音质更出众', '音质不打折 完美现场感', null, null, '1'), ('2', '让音质更出众22', '让音质更出众22', null, null, null), ('3', '让音质更出众33', null, null, null, null), ('4', '让音质更出众44', null, null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `cms_prefrence_area_product_relation`
-- ----------------------------
DROP TABLE IF EXISTS `cms_prefrence_area_product_relation`;
CREATE TABLE `cms_prefrence_area_product_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `prefrence_area_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='优选专区和产品关系表';

-- ----------------------------
--  Records of `cms_prefrence_area_product_relation`
-- ----------------------------
BEGIN;
INSERT INTO `cms_prefrence_area_product_relation` VALUES ('1', '1', '12'), ('2', '1', '13'), ('3', '1', '14'), ('4', '1', '18'), ('5', '1', '7'), ('6', '2', '7'), ('7', '1', '22'), ('24', '1', '23');
COMMIT;

-- ----------------------------
--  Table structure for `cms_subject`
-- ----------------------------
DROP TABLE IF EXISTS `cms_subject`;
CREATE TABLE `cms_subject` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `pic` varchar(500) DEFAULT NULL COMMENT '专题主图',
  `product_count` int(11) DEFAULT NULL COMMENT '关联产品数量',
  `recommend_status` int(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `collect_count` int(11) DEFAULT NULL,
  `read_count` int(11) DEFAULT NULL,
  `comment_count` int(11) DEFAULT NULL,
  `album_pics` varchar(1000) DEFAULT NULL COMMENT '画册图片用逗号分割',
  `description` varchar(1000) DEFAULT NULL,
  `show_status` int(1) DEFAULT NULL COMMENT '显示状态：0->不显示；1->显示',
  `content` text,
  `forward_count` int(11) DEFAULT NULL COMMENT '转发数',
  `category_name` varchar(200) DEFAULT NULL COMMENT '专题分类名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='专题表';

-- ----------------------------
--  Records of `cms_subject`
-- ----------------------------
BEGIN;
INSERT INTO `cms_subject` VALUES ('1', '1', '轮廓分明，双摄手机映现细腻美照', 'https://img10.360buyimg.com/mobilecms/s1500x600_jfs/t26434/217/1381240043/254214/290f9d5b/5bc6c11cN54567a27.jpg!q70.jpg', null, '1', '2018-11-11 13:26:55', '100', '1000', '100', null, '手机对于拍照党来说，已经不仅仅是通讯工具那么简单了。因为有时TA还充当着“单反”的角色，来不断地带给那些喜欢拍照的人惊喜。所以，在这里准备一波高颜值的双摄手机来给大家。让TA们灵敏捕捉影像的能力，为你展现出轮廓更加分明、且画质更加细腻的美照。', '1', null, null, '精选专题'), ('2', '1', '交通拥挤有妙招，电动车小巧穿行无障碍', 'https://img11.360buyimg.com/mobilecms/s1500x600_jfs/t14224/229/529700229/74868/a1cc7364/5a314f85N5bfd22c7.jpg!q70.jpg', null, '1', '2018-11-12 13:27:00', '100', '1000', '100', null, '随着人们消费水平的提高，公路上的小车是越来越多了，导致每到上下班高峰期的时候，大路的车辆堵了一环又一环，而且你根本不知道它到底会塞多久，所以我们需要变通一下，不妨骑上电动车来个绿色出行，它够小巧玲珑，即使交通再怎么拥挤，也总有它可以通过的地方。', '1', null, null, '精选专题'), ('3', '1', '无酒不成席，甘香白酒开怀助兴', 'https://img12.360buyimg.com/mobilecms/s1500x600_jfs/t1/881/4/12265/114011/5bd1446fEc71114bf/68925bfb4a2adc44.jpg!q70.jpg', null, '1', '2018-11-13 13:27:05', '100', '1000', '100', null, '白酒是由各种优质的高粱，小麦，大米等谷物为原料，经过传统工艺的长时间酿造，酒液在这样的环境中慢慢发酵，最终变成清香浓郁的白酒，被摆上人们的餐桌，供人畅饮，是一种受到大众喜爱的绝佳饮品。', '1', null, null, '精选专题'), ('4', '2', '真规划不盲扫，全域清洁净无尘', 'https://img10.360buyimg.com/mobilecms/s1500x600_jfs/t15205/35/2539924281/429185/72fa7857/5aab2c4bN6a32a6c5.png', null, '1', '2018-11-01 13:27:09', '100', '1000', '100', null, '科技时代，聪明女人会选择用智慧来减负，和繁琐的家务挥手再见，才能腾出更多休闲时间。规划式扫地机器人设计个性化，它能够跟据房间布置呈现清扫路线，实现规划式覆盖性清洁，少遗漏不盲扫，从而大幅度降低损耗，侦测技术遇到家具及时避让，杜绝猛烈撞击，任它灵巧穿梭于低矮空间，坐享居家净无尘。', '1', null, null, '家电专题'), ('5', '2', '抑菌更纯净，直饮净水保家人健康', 'https://img11.360buyimg.com/mobilecms/s1500x600_jfs/t11428/340/1504074828/20474/1e8cab1e/5a0305d3Nb1e7a762.jpg!q70.jpg', null, '1', '2018-11-06 13:27:18', '100', '1000', '100', null, '在城里居住，首先要担心的是饮水问题。桶装水太贵不够经济，还不一定是干净的。自己去干净的水源地取水也不切实际。此时只有选择在家里安装一台净水器才实在。装上一台直饮式的净水器，方便安全，关键是水质过滤得比较纯净，很大限度地处理了大部分的废弃物，留下健康的矿物质水。好生活，从一口干净的纯净水开始。', '1', null, null, '家电专题'), ('6', '2', '储鲜冷冻灵活变，多门无霜更贴心', 'https://img12.360buyimg.com/mobilecms/s1500x600_jfs/t13015/356/2397552584/605232/46c88e6e/5a5321bcN6a8866f0.png', null, '1', '2018-11-07 13:27:21', '100', '1000', '100', null, '春节临近，每个家庭都要储备不少食材，但各种食材的保鲜方式与温度不尽相同，而多门风冷冰箱能轻松满足您。它们容积大占地小，拥有多个可以独立调节温度的温区，满足对不同类食材的存放需求，同时省去除霜烦恼，还可以通过温度调节满足您对大冷藏及大冷冻的需求变化，从而带来更好的保鲜冷冻体验，为新年宴请保驾护航。', '1', null, null, '家电专题'), ('7', '2', '想喝健康水，就用304不锈钢热水壶', 'https://img13.360buyimg.com/mobilecms/s1500x600_jfs/t12541/90/443985343/33603/65d6e884/5a0bb77aNff08550a.jpg!q70.jpg', null, '1', '2019-01-29 11:21:55', '100', '1000', '100', null, '大冬天的喝一口热水，不仅能够暧身还可以给身体补充足够的水份，但是对于热水壶的购买却是需要慎之又慎，材质不好的热水壶在烧水的过程当中极容易产生对身体不利的有害物，极大影响人们的身体健康。304不锈钢热水壶选用食品级不不锈钢，确保水质安全，烧水健康好水，为您的饮水健康保驾护航。', '1', null, null, '家电专题'), ('8', '2', '你尽情赖床！早餐“煲”在它身上', 'https://img14.360buyimg.com/mobilecms/s1500x600_jfs/t15949/363/1450937723/89513/7d8c1219/5a531d28N2aaec2a6.jpg!q70.jpg', null, '1', '2019-01-29 13:07:13', '100', '1000', '100', null, '赖床不想起，饿了的时候想吃饭又要现做等待简直饥肠辘辘让人心烦，所以一款带有预约功能的电饭煲简直不要太贴心，你睡懒觉的时候它已经给你做好了香滑软糯的粥，起床就能享美味是不是很贴心呐。', '1', null, null, '家电专题'), ('9', '2', '小白变大厨，微波炉为实力加持', 'https://img10.360buyimg.com/mobilecms/s1500x600_jfs/t1/8774/21/11460/38908/5c2cbfcfEdab1ef03/d5800f0f7cf05b38.jpg!q70.jpg', null, '1', '2019-01-29 13:08:18', '100', '1000', '100', null, '对于厨艺小白而言，没有什么能比掌握好火候更来得困难的了！毕竟烹饪出食物的味道好坏，很大程度上还是对火候的掌控，想要轻松掌握火候，当然少不了一款微波炉的撑场，内设多功能，满足不同的烹饪需求，简单方便易操作，让厨艺小白秒变大师！', '1', null, null, '家电专题'), ('10', '2', '十秒鲜榨，冬日把爱浓缩成杯果汁', 'https://img11.360buyimg.com/mobilecms/s1500x600_jfs/t13708/126/308291722/542847/26ee6edd/5a07dc72N3252a9e0.png', null, '1', '2019-01-29 13:10:02', '100', '1000', '100', null, '寒瑟冬日女友不喜欢吃水果，用便携迷你果汁机，撩妹又养胃。一按一转，碾压切割，简单快速制作，压榨出纯原味果汁。一键启动，十秒出汁，保留食物营养，轻轻松松粉碎食物，营养在手，说走就走。', '1', null, null, '家电专题'), ('11', '3', '饭点未到肚已空？美味饼干先充饥', 'https://img10.360buyimg.com/mobilecms/s1500x600_jfs/t13240/79/443357432/38567/94792c4c/5a0ba054N89388654.jpg!q70.jpg', null, '1', '2019-01-29 13:10:45', '100', '1000', '100', null, '一上午都把精力集中在工作中，刚闲下来就发现自己已是饥肠辘辘了，可饭点却还没到，怎么办呢？不妨让这些美味饼干先帮你充充饥吧！酥香松脆有营养，每一口都让人回味无穷，既能满足你挑剔的味蕾又能起到果腹效果，快快为自己备上吧！', '1', null, null, '美食专题'), ('12', '3', '赖床无罪，香酥面包营养又便捷', 'https://img11.360buyimg.com/mobilecms/s1500x600_jfs/t9775/33/1197239610/38547/34899011/59ddbd01N0bd693bb.jpg!q70.jpg', null, '1', '2019-01-29 13:11:41', '100', '1000', '100', null, '赖床是很多年轻人的通病，特别是秋冬季节，都会恋恋不舍温暖的被窝。对于苦逼的上班族来说，就算再多睡几分钟，还是要起床的，甚至来不及吃早餐。面包营养丰富，能快速饱腹，且携带方便，再搭配一盒牛奶，一顿简单而不失营养的早餐能提供一天的能量，让赖床族多睡几分钟也无妨。', '1', null, null, '美食专题'), ('13', '3', '夹心饼干，予多重滋味交织舌尖', 'https://img12.360buyimg.com/mobilecms/s1500x600_jfs/t18877/139/652452758/27262/36e6ed6e/5a9d5b6dN327150e8.jpg!q70.jpg', null, '1', '2019-01-29 13:12:38', '100', '1000', '100', null, '饼干味道香脆可口，深受不少人的青睐。饼干的种类多样，而夹心饼干就是其中一种，相比普通饼干而言，夹心饼干有着更丰富的口感，当肚子空空如也的时候，来一些美味的夹心饼干，既能解馋，又能扛饿。下面就为大家推荐一组好吃的夹心饼干，作为办公室小零食非常不错。', '1', null, null, '美食专题'), ('14', '4', '户外Party，便携音箱烘气氛', 'https://img10.360buyimg.com/mobilecms/s1500x600_jfs/t17125/265/644948348/42066/6f2dc610/5a9c9da1N9a95ee2c.jpg!q70.jpg', null, '1', '2019-01-29 13:13:53', '100', '1000', '100', null, '初春的季节，除了户外的各种踏青旅行，在户外开异常Party也是很惬意。户外派对，气氛的烘托肯定不能离开音箱的衬托，选择一款户外的便携音箱，无线蓝牙连接，免去有线的束缚，携带使用更方便。', '1', null, null, '数码专题'), ('15', '5', '今冬潮包look，凹出绚丽女王范', 'https://img10.360buyimg.com/mobilecms/s1500x600_jfs/t8365/191/1901440450/575969/c71560c9/59c3144dNe6d8dd2f.png', null, '1', '2019-01-29 13:15:12', '100', '1000', '100', null, '潮流时尚的美包，搭配潮服，会让你魅力一直在线。因为潮包一直是女性出游扮美的秘籍，它不仅能够帮你收纳日常小物件，还能让你解放双手，这里推荐的时尚美包，随意搭配一件服饰，都可以让你潮范十足，凹出绚丽女王范。', '1', null, null, '服饰专题');
COMMIT;

-- ----------------------------
--  Table structure for `cms_subject_category`
-- ----------------------------
DROP TABLE IF EXISTS `cms_subject_category`;
CREATE TABLE `cms_subject_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `icon` varchar(500) DEFAULT NULL COMMENT '分类图标',
  `subject_count` int(11) DEFAULT NULL COMMENT '专题数量',
  `show_status` int(2) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='专题分类表';

-- ----------------------------
--  Records of `cms_subject_category`
-- ----------------------------
BEGIN;
INSERT INTO `cms_subject_category` VALUES ('1', '精选专题', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/subject_cate_jingxuan.png', '3', '1', '100'), ('2', '家电专题', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/subject_cate_jiadian.png', '7', '1', '0'), ('3', '美食专题', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/subject_cate_meishi.png', '3', '1', '0'), ('4', '数码专题', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_shouji.png', '1', '1', '0'), ('5', '服饰专题', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_waitao.png', '1', '1', '0');
COMMIT;

-- ----------------------------
--  Table structure for `cms_subject_comment`
-- ----------------------------
DROP TABLE IF EXISTS `cms_subject_comment`;
CREATE TABLE `cms_subject_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subject_id` bigint(20) DEFAULT NULL,
  `member_nick_name` varchar(255) DEFAULT NULL,
  `member_icon` varchar(255) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `show_status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专题评论表';

-- ----------------------------
--  Table structure for `cms_subject_product_relation`
-- ----------------------------
DROP TABLE IF EXISTS `cms_subject_product_relation`;
CREATE TABLE `cms_subject_product_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subject_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='专题商品关系表';

-- ----------------------------
--  Records of `cms_subject_product_relation`
-- ----------------------------
BEGIN;
INSERT INTO `cms_subject_product_relation` VALUES ('1', '1', '26'), ('2', '1', '27'), ('3', '1', '28'), ('4', '1', '29'), ('5', '2', '30'), ('6', '2', '31'), ('7', '2', '35'), ('29', '2', '36'), ('30', '2', '32'), ('31', '3', '33'), ('38', '3', '34');
COMMIT;

-- ----------------------------
--  Table structure for `cms_topic`
-- ----------------------------
DROP TABLE IF EXISTS `cms_topic`;
CREATE TABLE `cms_topic` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `attend_count` int(11) DEFAULT NULL COMMENT '参与人数',
  `attention_count` int(11) DEFAULT NULL COMMENT '关注人数',
  `read_count` int(11) DEFAULT NULL,
  `award_name` varchar(100) DEFAULT NULL COMMENT '奖品名称',
  `attend_type` varchar(100) DEFAULT NULL COMMENT '参与方式',
  `content` text COMMENT '话题内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='话题表';

-- ----------------------------
--  Table structure for `cms_topic_category`
-- ----------------------------
DROP TABLE IF EXISTS `cms_topic_category`;
CREATE TABLE `cms_topic_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `icon` varchar(500) DEFAULT NULL COMMENT '分类图标',
  `subject_count` int(11) DEFAULT NULL COMMENT '专题数量',
  `show_status` int(2) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='话题分类表';

-- ----------------------------
--  Table structure for `cms_topic_comment`
-- ----------------------------
DROP TABLE IF EXISTS `cms_topic_comment`;
CREATE TABLE `cms_topic_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_nick_name` varchar(255) DEFAULT NULL,
  `topic_id` bigint(20) DEFAULT NULL,
  `member_icon` varchar(255) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `show_status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专题评论表';

-- ----------------------------
--  Table structure for `oms_cart_item`
-- ----------------------------
DROP TABLE IF EXISTS `oms_cart_item`;
CREATE TABLE `oms_cart_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `product_sku_id` bigint(20) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL COMMENT '购买数量',
  `price` decimal(10,2) DEFAULT NULL COMMENT '添加到购物车的价格',
  `sp1` varchar(200) DEFAULT NULL COMMENT '销售属性1',
  `sp2` varchar(200) DEFAULT NULL COMMENT '销售属性2',
  `sp3` varchar(200) DEFAULT NULL COMMENT '销售属性3',
  `product_pic` varchar(1000) DEFAULT NULL COMMENT '商品主图',
  `product_name` varchar(500) DEFAULT NULL COMMENT '商品名称',
  `product_sub_title` varchar(500) DEFAULT NULL COMMENT '商品副标题（卖点）',
  `product_sku_code` varchar(200) DEFAULT NULL COMMENT '商品sku条码',
  `member_nickname` varchar(500) DEFAULT NULL COMMENT '会员昵称',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_date` datetime DEFAULT NULL COMMENT '修改时间',
  `delete_status` int(1) DEFAULT '0' COMMENT '是否删除',
  `product_category_id` bigint(20) DEFAULT NULL COMMENT '商品分类',
  `product_brand` varchar(200) DEFAULT NULL,
  `product_sn` varchar(200) DEFAULT NULL,
  `product_attr` varchar(500) DEFAULT NULL COMMENT '商品销售属性:[{"key":"颜色","value":"颜色"},{"key":"容量","value":"4G"}]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='购物车表';

-- ----------------------------
--  Records of `oms_cart_item`
-- ----------------------------
BEGIN;
INSERT INTO `oms_cart_item` VALUES ('12', '26', '90', '1', '1', '3788.00', '金色', '16G', null, null, '华为 HUAWEI P20', 'AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待手机 双卡双待', '201806070026001', 'windir', '2018-08-27 16:53:44', null, '0', '19', null, null, null), ('13', '27', '98', '1', '3', '2699.00', '黑色', '32G', null, null, '小米8', '骁龙845处理器，红外人脸解锁，AI变焦双摄，AI语音助手小米6X低至1299，点击抢购', '201808270027001', 'windir', '2018-08-27 17:11:53', null, '0', '19', null, null, null), ('14', '28', '102', '1', '1', '649.00', '金色', '16G', null, null, '红米5A', '8天超长待机，137g轻巧机身，高通骁龙处理器小米6X低至1299，点击抢购', '201808270028001', 'windir', '2018-08-27 17:18:02', null, '0', '19', null, null, null), ('15', '28', '103', '1', '1', '699.00', '金色', '32G', null, null, '红米5A', '8天超长待机，137g轻巧机身，高通骁龙处理器小米6X低至1299，点击抢购', '201808270028001', 'windir', '2018-08-28 10:22:45', null, '0', '19', null, null, null), ('16', '29', '106', '1', '1', '5499.00', '金色', '32G', null, null, 'Apple iPhone 8 Plus', '【限时限量抢购】Apple产品年中狂欢节，好物尽享，美在智慧！速来 >> 勾选[保障服务][原厂保2年]，获得AppleCare+全方位服务计划，原厂延保售后无忧。', '201808270029001', 'windir', '2018-08-28 10:50:50', null, '0', '19', null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `oms_company_address`
-- ----------------------------
DROP TABLE IF EXISTS `oms_company_address`;
CREATE TABLE `oms_company_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address_name` varchar(200) DEFAULT NULL COMMENT '地址名称',
  `send_status` int(1) DEFAULT NULL COMMENT '默认发货地址：0->否；1->是',
  `receive_status` int(1) DEFAULT NULL COMMENT '是否默认收货地址：0->否；1->是',
  `name` varchar(64) DEFAULT NULL COMMENT '收发货人姓名',
  `phone` varchar(64) DEFAULT NULL COMMENT '收货人电话',
  `province` varchar(64) DEFAULT NULL COMMENT '省/直辖市',
  `city` varchar(64) DEFAULT NULL COMMENT '市',
  `region` varchar(64) DEFAULT NULL COMMENT '区',
  `detail_address` varchar(200) DEFAULT NULL COMMENT '详细地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='公司收发货地址表';

-- ----------------------------
--  Records of `oms_company_address`
-- ----------------------------
BEGIN;
INSERT INTO `oms_company_address` VALUES ('1', '深圳发货点', '1', '1', '大梨', '18000000000', '广东省', '深圳市', '南山区', '科兴科学园'), ('2', '北京发货点', '0', '0', '大梨', '18000000000', '北京市', null, '南山区', '科兴科学园'), ('3', '南京发货点', '0', '0', '大梨', '18000000000', '江苏省', '南京市', '南山区', '科兴科学园');
COMMIT;

-- ----------------------------
--  Table structure for `oms_order`
-- ----------------------------
DROP TABLE IF EXISTS `oms_order`;
CREATE TABLE `oms_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `member_id` bigint(20) NOT NULL DEFAULT '1',
  `coupon_id` bigint(20) DEFAULT '1',
  `order_sn` varchar(64) DEFAULT '1' COMMENT '订单编号',
  `create_time` datetime DEFAULT NULL COMMENT '提交时间',
  `member_username` varchar(64) DEFAULT 'test' COMMENT '用户帐号',
  `total_amount` decimal(10,2) DEFAULT '1.00' COMMENT '订单总金额',
  `pay_amount` decimal(10,2) DEFAULT '1.00' COMMENT '应付金额（实际支付金额）',
  `freight_amount` decimal(10,2) DEFAULT '1.00' COMMENT '运费金额',
  `promotion_amount` decimal(10,2) DEFAULT '1.00' COMMENT '促销优化金额（促销价、满减、阶梯价）',
  `integration_amount` decimal(10,2) DEFAULT '1.00' COMMENT '积分抵扣金额',
  `coupon_amount` decimal(10,2) DEFAULT '1.00' COMMENT '优惠券抵扣金额',
  `discount_amount` decimal(10,2) DEFAULT '1.00' COMMENT '管理员后台调整订单使用的折扣金额',
  `pay_type` int(1) DEFAULT '1' COMMENT '支付方式：0->未支付；1->支付宝；2->微信',
  `source_type` int(1) DEFAULT '1' COMMENT '订单来源：0->PC订单；1->app订单',
  `status` int(1) DEFAULT '1' COMMENT '订单状态：0->待付款；1->待发货；2->已发货；3->已完成；4->已关闭；5->无效订单',
  `order_type` int(1) DEFAULT '1' COMMENT '订单类型：0->正常订单；1->秒杀订单',
  `delivery_company` varchar(64) DEFAULT 'test' COMMENT '物流公司(配送方式)',
  `delivery_sn` varchar(64) DEFAULT 'test' COMMENT '物流单号',
  `auto_confirm_day` int(11) DEFAULT '1' COMMENT '自动确认时间（天）',
  `integration` int(11) DEFAULT '1' COMMENT '可以获得的积分',
  `growth` int(11) DEFAULT '1' COMMENT '可以活动的成长值',
  `promotion_info` varchar(100) DEFAULT 'test' COMMENT '活动信息',
  `bill_type` int(1) DEFAULT '1' COMMENT '发票类型：0->不开发票；1->电子发票；2->纸质发票',
  `bill_header` varchar(200) DEFAULT 'test' COMMENT '发票抬头',
  `bill_content` varchar(200) DEFAULT 'test' COMMENT '发票内容',
  `bill_receiver_phone` varchar(32) DEFAULT 'test' COMMENT '收票人电话',
  `bill_receiver_email` varchar(64) DEFAULT 'test' COMMENT '收票人邮箱',
  `receiver_name` varchar(100) NOT NULL DEFAULT 'test' COMMENT '收货人姓名',
  `receiver_phone` varchar(32) NOT NULL DEFAULT 'test' COMMENT '收货人电话',
  `receiver_post_code` varchar(32) DEFAULT 'test' COMMENT '收货人邮编',
  `receiver_province` varchar(32) DEFAULT 'test' COMMENT '省份/直辖市',
  `receiver_city` varchar(32) DEFAULT 'test' COMMENT '城市',
  `receiver_region` varchar(32) DEFAULT 'test' COMMENT '区',
  `receiver_detail_address` varchar(200) DEFAULT 'test' COMMENT '详细地址',
  `note` varchar(500) DEFAULT 'test' COMMENT '订单备注',
  `confirm_status` int(1) DEFAULT '0' COMMENT '确认收货状态：0->未确认；1->已确认',
  `delete_status` int(1) NOT NULL DEFAULT '0' COMMENT '删除状态：0->未删除；1->已删除',
  `use_integration` int(11) DEFAULT '1' COMMENT '下单时使用的积分',
  `payment_time` datetime DEFAULT NULL COMMENT '支付时间',
  `delivery_time` datetime DEFAULT NULL COMMENT '发货时间',
  `receive_time` datetime DEFAULT NULL COMMENT '确认收货时间',
  `comment_time` datetime DEFAULT NULL COMMENT '评价时间',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98512 DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
--  Records of `oms_order`
-- ----------------------------
BEGIN;
INSERT INTO `oms_order` VALUES ('12', '1', '2', '201809150101000001', '2018-09-15 12:24:27', 'test', '18732.00', '16377.75', '20.00', '2344.25', '0.00', '10.00', '10.00', '0', '1', '4', '0', '顺丰快递', '201707196398345', '15', '13284', '13284', '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', '1', '1', '1', '1', '1', '大梨', '18033441849', '518000', '江苏省', '常州市', '天宁区', '东晓街道', 'xxx', '0', '1', '2000', '2019-08-22 13:49:12', '2019-08-22 13:49:14', '2019-08-22 13:49:19', '2019-08-22 13:49:30', '2018-10-30 14:43:49'), ('13', '1', '2', '201809150102000002', '2018-09-15 14:24:29', 'test', '18732.00', '16377.75', '0.00', '2344.25', '0.00', '10.00', '0.00', '1', '1', '1', '0', '顺丰快递2', '201707196398345', '15', '13284', '13284', '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', '2', '2', '2', '2', '2', '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', 'xxxx', '0', '0', '1000', '2018-10-11 14:04:19', '2019-08-22 13:49:17', '2019-08-22 13:49:21', '2019-08-22 13:49:28', '2019-08-22 13:49:32'), ('14', '1', '2', '201809130101000001', '2018-09-13 16:57:40', 'test', '18732.00', '16377.75', '0.00', '2344.25', '0.00', '10.00', '0.00', '2', '1', '2', '0', '顺丰快递', '201707196398345', '15', '13284', '13284', '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', '3', '3', '3', '3', '3', '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', 'xxxxx', '0', '0', '3000', '2018-10-13 13:44:04', '2018-10-16 13:43:41', '2019-08-22 13:49:23', '2019-08-22 13:49:25', '2019-08-22 13:49:35'), ('15', '1', '2', '201809130101000001', '2018-09-13 16:57:40', 'test', '18732.00', '16377.75', '0.00', '2344.25', '0.00', '10.00', '0.00', '2', '1', '2', '0', '顺丰快递', '201707196398345', '15', '13284', '13284', '单品促销,打折优惠：满3件，打7.50折,满减优惠：满1000.00元，减120.00元,满减优惠：满1000.00元，减120.00元,无优惠', '3', '3', '3', '3', '3', '大梨', '18033441849', '518000', '广东省', '深圳市', '福田区', '东晓街道', 'xxxxx', '0', '0', '3000', '2018-10-13 13:44:04', '2018-10-16 13:43:41', '2019-08-22 13:49:23', '2019-08-22 13:49:25', '2019-08-22 13:49:35'), ('27886', '1', '1', '1', '2019-09-02 09:23:37', 'test', '200.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1', '1', '1', '1', 'test', 'test', '1', '1', '1', 'test', '1', 'test', 'test', 'test', 'test', 'test', '13720815215', 'test', '福建', '福州', '仓山区', '福建农林大学', 'test', '0', '0', '1', '2019-09-02 01:23:37', '2019-09-02 01:23:37', '2019-09-02 01:23:37', '2019-09-02 01:23:37', '2019-09-02 01:23:37'), ('37102', '1', '1', '1', '2019-09-02 11:17:59', 'test', '1200.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1', '1', '1', '1', 'test', 'test', '1', '1', '1', 'test', '1', 'test', 'test', 'test', 'test', 'test', '13720815215', 'test', '福建', '福州', '仓山区', '福建农林大学', 'test', '0', '0', '1', '2019-09-02 03:17:59', '2019-09-02 03:17:59', '2019-09-02 03:17:59', '2019-09-02 03:17:59', '2019-09-02 03:17:59'), ('49988', '1', '1', '1', '2019-09-02 11:18:30', 'test', '300.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1', '1', '1', '1', 'test', 'test', '1', '1', '1', 'test', '1', 'test', 'test', 'test', 'test', 'test', '13720815215', 'test', '福建', '福州', '仓山区', '福建农林大学', 'test', '0', '0', '1', '2019-09-02 03:18:30', '2019-09-02 03:18:30', '2019-09-02 03:18:30', '2019-09-02 03:18:30', '2019-09-02 03:18:30'), ('97066', '1', '1', '1', '2019-09-02 09:26:45', 'test', '300.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1', '1', '1', '1', 'test', 'test', '1', '1', '1', 'test', '1', 'test', 'test', 'test', 'test', 'test', '13720815215', 'test', '福建', '福州', '仓山区', '福建农林大学', 'test', '0', '0', '1', '2019-09-02 01:26:46', '2019-09-02 01:26:46', '2019-09-02 01:26:46', '2019-09-02 01:26:46', '2019-09-02 01:26:46'), ('98511', '1', '1', '1', '2019-09-02 11:18:42', 'test', '200.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1', '1', '1', '1', 'test', 'test', '1', '1', '1', 'test', '1', 'test', 'test', 'test', 'test', 'test', '13720815215', 'test', '福建', '福州', '仓山区', '福建农林大学', 'test', '0', '0', '1', '2019-09-02 03:18:43', '2019-09-02 03:18:43', '2019-09-02 03:18:43', '2019-09-02 03:18:43', '2019-09-02 03:18:43');
COMMIT;

-- ----------------------------
--  Table structure for `oms_order_item`
-- ----------------------------
DROP TABLE IF EXISTS `oms_order_item`;
CREATE TABLE `oms_order_item` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) DEFAULT '1' COMMENT '订单id',
  `order_sn` varchar(64) DEFAULT 'test' COMMENT '订单编号',
  `product_id` bigint(20) DEFAULT '1',
  `product_pic` varchar(500) DEFAULT 'test',
  `product_name` varchar(200) DEFAULT 'test',
  `product_brand` varchar(200) DEFAULT 'test',
  `product_sn` varchar(64) DEFAULT 'test',
  `product_price` decimal(10,2) DEFAULT '1.00' COMMENT '销售价格',
  `product_quantity` int(11) DEFAULT '1' COMMENT '购买数量',
  `product_sku_id` bigint(20) DEFAULT '1' COMMENT '商品sku编号',
  `product_sku_code` varchar(50) DEFAULT 'test' COMMENT '商品sku条码',
  `product_category_id` bigint(20) DEFAULT '1' COMMENT '商品分类id',
  `sp1` varchar(100) DEFAULT 'test' COMMENT '商品的销售属性',
  `sp2` varchar(100) DEFAULT 'test',
  `sp3` varchar(100) DEFAULT 'test',
  `promotion_name` varchar(200) DEFAULT 'test' COMMENT '商品促销名称',
  `promotion_amount` decimal(10,2) DEFAULT '1.00' COMMENT '商品促销分解金额',
  `coupon_amount` decimal(10,2) DEFAULT '1.00' COMMENT '优惠券优惠分解金额',
  `integration_amount` decimal(10,2) DEFAULT '1.00' COMMENT '积分优惠分解金额',
  `real_amount` decimal(10,2) DEFAULT '1.00' COMMENT '该商品经过优惠后的分解金额',
  `gift_integration` int(11) DEFAULT '1',
  `gift_growth` int(11) DEFAULT '1',
  `product_attr` varchar(500) DEFAULT 'test' COMMENT '商品销售属性:[{"key":"颜色","value":"颜色"},{"key":"容量","value":"4G"}]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98512 DEFAULT CHARSET=utf8 COMMENT='订单中所包含的商品';

-- ----------------------------
--  Records of `oms_order_item`
-- ----------------------------
BEGIN;
INSERT INTO `oms_order_item` VALUES ('21', '12', '201809150101000001', '26', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '6946605', '3788.00', '1', '90', '201806070026001', '19', null, null, null, '单品促销', '200.00', '2.02', '0.00', '3585.98', '3788', '3788', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]'), ('22', '12', '201809150101000001', '27', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '7437788', '2699.00', '3', '98', '201808270027001', '19', null, null, null, '打折优惠：满3件，打7.50折', '674.75', '1.44', '0.00', '2022.81', '2699', '2699', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'), ('23', '12', '201809150101000001', '28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', '649.00', '1', '102', '201808270028001', '19', null, null, null, '满减优惠：满1000.00元，减120.00元', '57.60', '0.35', '0.00', '591.05', '649', '649', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]'), ('24', '12', '201809150101000001', '28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', '699.00', '1', '103', '201808270028001', '19', null, null, null, '满减优惠：满1000.00元，减120.00元', '62.40', '0.37', '0.00', '636.23', '649', '649', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'), ('25', '12', '201809150101000001', '29', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', 'Apple iPhone 8 Plus', '苹果', '7437799', '5499.00', '1', '106', '201808270029001', '19', null, null, null, '无优惠', '0.00', '2.94', '0.00', '5496.06', '5499', '5499', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'), ('26', '13', '201809150102000002', '26', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '6946605', '3788.00', '1', '90', '201806070026001', '19', null, null, null, '单品促销', '200.00', '2.02', '0.00', '3585.98', '3788', '3788', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]'), ('27', '13', '201809150102000002', '27', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '7437788', '2699.00', '3', '98', '201808270027001', '19', null, null, null, '打折优惠：满3件，打7.50折', '674.75', '1.44', '0.00', '2022.81', '2699', '2699', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'), ('28', '13', '201809150102000002', '28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', '649.00', '1', '102', '201808270028001', '19', null, null, null, '满减优惠：满1000.00元，减120.00元', '57.60', '0.35', '0.00', '591.05', '649', '649', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]'), ('29', '13', '201809150102000002', '28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', '699.00', '1', '103', '201808270028001', '19', null, null, null, '满减优惠：满1000.00元，减120.00元', '62.40', '0.37', '0.00', '636.23', '649', '649', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'), ('30', '13', '201809150102000002', '29', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', 'Apple iPhone 8 Plus', '苹果', '7437799', '5499.00', '1', '106', '201808270029001', '19', null, null, null, '无优惠', '0.00', '2.94', '0.00', '5496.06', '5499', '5499', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'), ('31', '14', '201809130101000001', '26', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '6946605', '3788.00', '1', '90', '201806070026001', '19', null, null, null, '单品促销', '200.00', '2.02', '0.00', '3585.98', '3788', '3788', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]'), ('32', '14', '201809130101000001', '27', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '7437788', '2699.00', '3', '98', '201808270027001', '19', null, null, null, '打折优惠：满3件，打7.50折', '674.75', '1.44', '0.00', '2022.81', '2699', '2699', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'), ('33', '14', '201809130101000001', '28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', '649.00', '1', '102', '201808270028001', '19', null, null, null, '满减优惠：满1000.00元，减120.00元', '57.60', '0.35', '0.00', '591.05', '649', '649', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]'), ('34', '14', '201809130101000001', '28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', '699.00', '1', '103', '201808270028001', '19', null, null, null, '满减优惠：满1000.00元，减120.00元', '62.40', '0.37', '0.00', '636.23', '649', '649', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'), ('35', '14', '201809130101000001', '29', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', 'Apple iPhone 8 Plus', '苹果', '7437799', '5499.00', '1', '106', '201808270029001', '19', null, null, null, '无优惠', '0.00', '2.94', '0.00', '5496.06', '5499', '5499', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'), ('36', '15', '201809130101000001', '26', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '6946605', '3788.00', '1', '90', '201806070026001', '19', null, null, null, '单品促销', '200.00', '2.02', '0.00', '3585.98', '3788', '3788', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]'), ('37', '15', '201809130101000001', '27', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '7437788', '2699.00', '3', '98', '201808270027001', '19', null, null, null, '打折优惠：满3件，打7.50折', '674.75', '1.44', '0.00', '2022.81', '2699', '2699', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'), ('38', '15', '201809130101000001', '28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', '649.00', '1', '102', '201808270028001', '19', null, null, null, '满减优惠：满1000.00元，减120.00元', '57.60', '0.35', '0.00', '591.05', '649', '649', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]'), ('39', '15', '201809130101000001', '28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', '699.00', '1', '103', '201808270028001', '19', null, null, null, '满减优惠：满1000.00元，减120.00元', '62.40', '0.37', '0.00', '636.23', '649', '649', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'), ('40', '15', '201809130101000001', '29', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', 'Apple iPhone 8 Plus', '苹果', '7437799', '5499.00', '1', '106', '201808270029001', '19', null, null, null, '无优惠', '0.00', '2.94', '0.00', '5496.06', '5499', '5499', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'), ('41', '16', '201809140101000001', '26', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '6946605', '3788.00', '1', '90', '201806070026001', '19', null, null, null, '单品促销', '200.00', '2.02', '0.00', '3585.98', '3788', '3788', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]'), ('42', '16', '201809140101000001', '27', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '7437788', '2699.00', '3', '98', '201808270027001', '19', null, null, null, '打折优惠：满3件，打7.50折', '674.75', '1.44', '0.00', '2022.81', '2699', '2699', '[{\"key\":\"颜色\",\"value\":\"黑色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'), ('43', '16', '201809140101000001', '28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', '649.00', '1', '102', '201808270028001', '19', null, null, null, '满减优惠：满1000.00元，减120.00元', '57.60', '0.35', '0.00', '591.05', '649', '649', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"16G\"}]'), ('44', '16', '201809140101000001', '28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '7437789', '699.00', '1', '103', '201808270028001', '19', null, null, null, '满减优惠：满1000.00元，减120.00元', '62.40', '0.37', '0.00', '636.23', '649', '649', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'), ('45', '16', '201809140101000001', '29', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5acc5248N6a5f81cd.jpg', 'Apple iPhone 8 Plus', '苹果', '7437799', '5499.00', '1', '106', '201808270029001', '19', null, null, null, '无优惠', '0.00', '2.94', '0.00', '5496.06', '5499', '5499', '[{\"key\":\"颜色\",\"value\":\"金色\"},{\"key\":\"容量\",\"value\":\"32G\"}]'), ('27886', '27886', 'test', '1', 'test', '衣服', 'test', 'test', '1.00', '2', '1', 'test', '1', 'test', 'test', 'test', 'test', '1.00', '1.00', '1.00', '1.00', '1', '1', '大小:S,颜色:白色'), ('37102', '37102', 'test', '1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567397649048&di=4933d7cedd59222011d2a73456c0de73&imgtype=0&src=http%3A%2F%2Fpic1.cxtuku.com%2F00%2F09%2F79%2Fb2949b414ece.jpg', '衣服', 'test', 'test', '1.00', '12', '1', 'test', '1', 'test', 'test', 'test', 'test', '1.00', '1.00', '1.00', '1.00', '1', '1', '大小:S,颜色:白色'), ('49988', '49988', 'test', '1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567397649048&di=4933d7cedd59222011d2a73456c0de73&imgtype=0&src=http%3A%2F%2Fpic1.cxtuku.com%2F00%2F09%2F79%2Fb2949b414ece.jpg', '衣服', 'test', 'test', '1.00', '3', '1', 'test', '1', 'test', 'test', 'test', 'test', '1.00', '1.00', '1.00', '1.00', '1', '1', '大小:S,颜色:白色'), ('97066', '97066', 'test', '1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567397649048&di=4933d7cedd59222011d2a73456c0de73&imgtype=0&src=http%3A%2F%2Fpic1.cxtuku.com%2F00%2F09%2F79%2Fb2949b414ece.jpg', '衣服', 'test', 'test', '1.00', '3', '1', 'test', '1', 'test', 'test', 'test', 'test', '1.00', '1.00', '1.00', '1.00', '1', '1', '大小:S,颜色:白色'), ('98511', '98511', 'test', '1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567397649048&di=4933d7cedd59222011d2a73456c0de73&imgtype=0&src=http%3A%2F%2Fpic1.cxtuku.com%2F00%2F09%2F79%2Fb2949b414ece.jpg', '衣服', 'test', 'test', '1.00', '2', '1', 'test', '1', 'test', 'test', 'test', 'test', '1.00', '1.00', '1.00', '1.00', '1', '1', '大小:S,颜色:白色');
COMMIT;

-- ----------------------------
--  Table structure for `oms_order_operate_history`
-- ----------------------------
DROP TABLE IF EXISTS `oms_order_operate_history`;
CREATE TABLE `oms_order_operate_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) DEFAULT NULL COMMENT '订单id',
  `operate_man` varchar(100) DEFAULT NULL COMMENT '操作人：用户；系统；后台管理员',
  `create_time` datetime DEFAULT NULL COMMENT '操作时间',
  `order_status` int(1) DEFAULT NULL COMMENT '订单状态：0->待付款；1->待发货；2->已发货；3->已完成；4->已关闭；5->无效订单',
  `note` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='订单操作历史记录';

-- ----------------------------
--  Records of `oms_order_operate_history`
-- ----------------------------
BEGIN;
INSERT INTO `oms_order_operate_history` VALUES ('5', '12', '后台管理员', '2018-10-12 14:01:29', '2', '完成发货'), ('6', '13', '后台管理员', '2018-10-12 14:01:29', '2', '完成发货'), ('7', '12', '后台管理员', '2018-10-12 14:13:10', '4', '订单关闭:买家退货'), ('8', '13', '后台管理员', '2018-10-12 14:13:10', '4', '订单关闭:买家退货'), ('9', '22', '后台管理员', '2018-10-15 16:31:48', '4', '订单关闭:xxx'), ('10', '22', '后台管理员', '2018-10-15 16:35:08', '4', '订单关闭:xxx'), ('11', '22', '后台管理员', '2018-10-15 16:35:59', '4', '订单关闭:xxx'), ('12', '17', '后台管理员', '2018-10-15 16:43:40', '4', '订单关闭:xxx'), ('13', '25', '后台管理员', '2018-10-15 16:52:14', '4', '订单关闭:xxx'), ('14', '26', '后台管理员', '2018-10-15 16:52:14', '4', '订单关闭:xxx'), ('15', '23', '后台管理员', '2018-10-16 14:41:28', '2', '完成发货'), ('16', '13', '后台管理员', '2018-10-16 14:42:17', '2', '完成发货'), ('17', '18', '后台管理员', '2018-10-16 14:42:17', '2', '完成发货'), ('18', '26', '后台管理员', '2018-10-30 14:37:44', '4', '订单关闭:关闭订单'), ('19', '25', '后台管理员', '2018-10-30 15:07:01', '0', '修改收货人信息'), ('20', '25', '后台管理员', '2018-10-30 15:08:13', '0', '修改费用信息'), ('21', '25', '后台管理员', '2018-10-30 15:08:31', '0', '修改备注信息：xxx'), ('22', '25', '后台管理员', '2018-10-30 15:08:39', '4', '订单关闭:2222');
COMMIT;

-- ----------------------------
--  Table structure for `oms_order_return_apply`
-- ----------------------------
DROP TABLE IF EXISTS `oms_order_return_apply`;
CREATE TABLE `oms_order_return_apply` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) DEFAULT NULL COMMENT '订单id',
  `company_address_id` bigint(20) DEFAULT NULL COMMENT '收货地址表id',
  `product_id` bigint(20) DEFAULT NULL COMMENT '退货商品id',
  `order_sn` varchar(64) DEFAULT NULL COMMENT '订单编号',
  `create_time` datetime DEFAULT NULL COMMENT '申请时间',
  `member_username` varchar(64) DEFAULT NULL COMMENT '会员用户名',
  `return_amount` decimal(10,2) DEFAULT NULL COMMENT '退款金额',
  `return_name` varchar(100) DEFAULT NULL COMMENT '退货人姓名',
  `return_phone` varchar(100) DEFAULT NULL COMMENT '退货人电话',
  `status` int(1) DEFAULT NULL COMMENT '申请状态：0->待处理；1->退货中；2->已完成；3->已拒绝',
  `handle_time` datetime DEFAULT NULL COMMENT '处理时间',
  `product_pic` varchar(500) DEFAULT NULL COMMENT '商品图片',
  `product_name` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `product_brand` varchar(200) DEFAULT NULL COMMENT '商品品牌',
  `product_attr` varchar(500) DEFAULT NULL COMMENT '商品销售属性：颜色：红色；尺码：xl;',
  `product_count` int(11) DEFAULT NULL COMMENT '退货数量',
  `product_price` decimal(10,2) DEFAULT NULL COMMENT '商品单价',
  `product_real_price` decimal(10,2) DEFAULT NULL COMMENT '商品实际支付单价',
  `reason` varchar(200) DEFAULT NULL COMMENT '原因',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `proof_pics` varchar(1000) DEFAULT NULL COMMENT '凭证图片，以逗号隔开',
  `handle_note` varchar(500) DEFAULT NULL COMMENT '处理备注',
  `handle_man` varchar(100) DEFAULT NULL COMMENT '处理人员',
  `receive_man` varchar(100) DEFAULT NULL COMMENT '收货人',
  `receive_time` datetime DEFAULT NULL COMMENT '收货时间',
  `receive_note` varchar(500) DEFAULT NULL COMMENT '收货备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='订单退货申请';

-- ----------------------------
--  Records of `oms_order_return_apply`
-- ----------------------------
BEGIN;
INSERT INTO `oms_order_return_apply` VALUES ('3', '12', null, '26', '201809150101000001', '2018-10-17 14:34:57', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', '1', '3788.00', '3585.98', '质量问题', '老是卡', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg,http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', null, null, null, null, null), ('4', '12', '2', '27', '201809150101000001', '2018-10-17 14:40:21', 'test', '3585.98', '大梨', '18000000000', '1', '2018-10-18 13:54:10', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', '1', '2699.00', '2022.81', '质量问题', '不够高端', '', '已经处理了', 'admin', null, null, null), ('5', '12', '3', '28', '201809150101000001', '2018-10-17 14:44:18', 'test', '3585.98', '大梨', '18000000000', '2', '2018-10-18 13:55:28', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', '1', '649.00', '591.05', '质量问题', '颜色太土', '', '已经处理了', 'admin', 'admin', '2018-10-18 13:55:58', '已经处理了'), ('8', '13', null, '28', '201809150102000002', '2018-10-17 14:44:18', 'test', null, '大梨', '18000000000', '3', '2018-10-18 13:57:12', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', '1', '649.00', '591.05', '质量问题', '颜色太土', '', '理由不够充分', 'admin', null, null, null), ('9', '14', '2', '26', '201809130101000001', '2018-10-17 14:34:57', 'test', '3500.00', '大梨', '18000000000', '2', '2018-10-24 15:44:56', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', '1', '3788.00', '3585.98', '质量问题', '老是卡', '', '呵呵', 'admin', 'admin', '2018-10-24 15:46:35', '收货了'), ('10', '14', null, '27', '201809130101000001', '2018-10-17 14:40:21', 'test', null, '大梨', '18000000000', '3', '2018-10-24 15:46:57', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', '1', '2699.00', '2022.81', '质量问题', '不够高端', '', '就是不退', 'admin', null, null, null), ('11', '14', '2', '28', '201809130101000001', '2018-10-17 14:44:18', 'test', '591.05', '大梨', '18000000000', '1', '2018-10-24 17:09:04', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', '1', '649.00', '591.05', '质量问题', '颜色太土', '', '可以退款', 'admin', null, null, null), ('12', '15', '3', '26', '201809130102000002', '2018-10-17 14:34:57', 'test', '3500.00', '大梨', '18000000000', '2', '2018-10-24 17:22:54', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', '1', '3788.00', '3585.98', '质量问题', '老是卡', '', '退货了', 'admin', 'admin', '2018-10-24 17:23:06', '收货了'), ('13', '15', null, '27', '201809130102000002', '2018-10-17 14:40:21', 'test', null, '大梨', '18000000000', '3', '2018-10-24 17:23:30', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', '1', '2699.00', '2022.81', '质量问题', '不够高端', '', '无法退货', 'admin', null, null, null), ('15', '16', null, '26', '201809140101000001', '2018-10-17 14:34:57', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', '1', '3788.00', '3585.98', '质量问题', '老是卡', '', null, null, null, null, null), ('16', '16', null, '27', '201809140101000001', '2018-10-17 14:40:21', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', '1', '2699.00', '2022.81', '质量问题', '不够高端', '', null, null, null, null, null), ('17', '16', null, '28', '201809140101000001', '2018-10-17 14:44:18', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', '1', '649.00', '591.05', '质量问题', '颜色太土', '', null, null, null, null, null), ('18', '17', null, '26', '201809150101000003', '2018-10-17 14:34:57', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', '1', '3788.00', '3585.98', '质量问题', '老是卡', '', null, null, null, null, null), ('19', '17', null, '27', '201809150101000003', '2018-10-17 14:40:21', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', '1', '2699.00', '2022.81', '质量问题', '不够高端', '', null, null, null, null, null), ('20', '17', null, '28', '201809150101000003', '2018-10-17 14:44:18', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', '1', '649.00', '591.05', '质量问题', '颜色太土', '', null, null, null, null, null), ('21', '18', null, '26', '201809150102000004', '2018-10-17 14:34:57', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', '1', '3788.00', '3585.98', '质量问题', '老是卡', '', null, null, null, null, null), ('22', '18', null, '27', '201809150102000004', '2018-10-17 14:40:21', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', '1', '2699.00', '2022.81', '质量问题', '不够高端', '', null, null, null, null, null), ('23', '18', null, '28', '201809150102000004', '2018-10-17 14:44:18', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', '1', '649.00', '591.05', '质量问题', '颜色太土', '', null, null, null, null, null), ('24', '19', null, '26', '201809130101000003', '2018-10-17 14:34:57', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '华为 HUAWEI P20', '华为', '颜色：金色;内存：16G', '1', '3788.00', '3585.98', '质量问题', '老是卡', '', null, null, null, null, null), ('25', '19', null, '27', '201809130101000003', '2018-10-17 14:40:21', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '小米8', '小米', '颜色：黑色;内存：32G', '1', '2699.00', '2022.81', '质量问题', '不够高端', '', null, null, null, null, null), ('26', '19', null, '28', '201809130101000003', '2018-10-17 14:44:18', 'test', null, '大梨', '18000000000', '0', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '红米5A', '小米', '颜色：金色;内存：16G', '1', '649.00', '591.05', '质量问题', '颜色太土', '', null, null, null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `oms_order_return_reason`
-- ----------------------------
DROP TABLE IF EXISTS `oms_order_return_reason`;
CREATE TABLE `oms_order_return_reason` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '退货类型',
  `sort` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '状态：0->不启用；1->启用',
  `create_time` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='退货原因表';

-- ----------------------------
--  Records of `oms_order_return_reason`
-- ----------------------------
BEGIN;
INSERT INTO `oms_order_return_reason` VALUES ('1', '质量问题', '1', '0', '2018-10-17 10:00:45'), ('2', '尺码太大', '1', '1', '2018-10-17 10:01:03'), ('3', '颜色不喜欢', '1', '1', '2018-10-17 10:01:13'), ('4', '7天无理由退货', '1', '1', '2018-10-17 10:01:47'), ('5', '价格问题', '1', '0', '2018-10-17 10:01:57'), ('12', '发票问题', '0', '1', '2018-10-19 16:28:36'), ('13', '其他问题', '0', '1', '2018-10-19 16:28:51'), ('14', '物流问题', '0', '1', '2018-10-19 16:29:01'), ('15', '售后问题', '0', '1', '2018-10-19 16:29:11');
COMMIT;

-- ----------------------------
--  Table structure for `oms_order_setting`
-- ----------------------------
DROP TABLE IF EXISTS `oms_order_setting`;
CREATE TABLE `oms_order_setting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `flash_order_overtime` int(11) DEFAULT NULL COMMENT '秒杀订单超时关闭时间(分)',
  `normal_order_overtime` int(11) DEFAULT NULL COMMENT '正常订单超时时间(分)',
  `confirm_overtime` int(11) DEFAULT NULL COMMENT '发货后自动确认收货时间（天）',
  `finish_overtime` int(11) DEFAULT NULL COMMENT '自动完成交易时间，不能申请售后（天）',
  `comment_overtime` int(11) DEFAULT NULL COMMENT '订单完成后自动好评时间（天）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='订单设置表';

-- ----------------------------
--  Records of `oms_order_setting`
-- ----------------------------
BEGIN;
INSERT INTO `oms_order_setting` VALUES ('1', '60', '120', '15', '7', '7');
COMMIT;

-- ----------------------------
--  Table structure for `pms_album`
-- ----------------------------
DROP TABLE IF EXISTS `pms_album`;
CREATE TABLE `pms_album` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `cover_pic` varchar(1000) DEFAULT NULL,
  `pic_count` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='相册表';

-- ----------------------------
--  Table structure for `pms_album_pic`
-- ----------------------------
DROP TABLE IF EXISTS `pms_album_pic`;
CREATE TABLE `pms_album_pic` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) DEFAULT NULL,
  `pic` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='画册图片表';

-- ----------------------------
--  Table structure for `pms_brand`
-- ----------------------------
DROP TABLE IF EXISTS `pms_brand`;
CREATE TABLE `pms_brand` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `first_letter` varchar(8) DEFAULT NULL COMMENT '首字母',
  `sort` int(11) DEFAULT NULL,
  `factory_status` int(1) DEFAULT NULL COMMENT '是否为品牌制造商：0->不是；1->是',
  `show_status` int(1) DEFAULT NULL,
  `product_count` int(11) DEFAULT NULL COMMENT '产品数量',
  `product_comment_count` int(11) DEFAULT NULL COMMENT '产品评论数量',
  `logo` varchar(255) DEFAULT NULL COMMENT '品牌logo',
  `big_pic` varchar(255) DEFAULT NULL COMMENT '专区大图',
  `brand_story` text COMMENT '品牌故事',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='品牌表';

-- ----------------------------
--  Records of `pms_brand`
-- ----------------------------
BEGIN;
INSERT INTO `pms_brand` VALUES ('1', '万和', 'W', '0', '1', '1', '100', '100', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg(5).jpg', '', 'Victoria\'s Secret的故事'), ('2', '三星', 'S', '100', '1', '1', '100', '100', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg (1).jpg', null, '三星的故事'), ('3', '华为', 'H', '100', '1', '1', '100', '100', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/17f2dd9756d9d333bee8e60ce8c03e4c_222_222.jpg', null, 'Victoria\'s Secret的故事'), ('4', '格力', 'G', '30', '1', '1', '100', '100', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/dc794e7e74121272bbe3ce9bc41ec8c3_222_222.jpg', null, 'Victoria\'s Secret的故事'), ('5', '方太', 'F', '20', '1', '1', '100', '100', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg (4).jpg', null, 'Victoria\'s Secret的故事'), ('6', '小米', 'M', '500', '1', '1', '100', '100', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/1e34aef2a409119018a4c6258e39ecfb_222_222.png', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180518/5afd7778Nf7800b75.jpg', '小米手机的故事'), ('21', 'OPPO', 'O', '0', '1', '1', '88', '500', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg(6).jpg', '', 'string'), ('49', '七匹狼', 'S', '200', '1', '1', '77', '400', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/18d8bc3eb13533fab466d702a0d3fd1f40345bcd.jpg', null, 'BOOB的故事'), ('50', '海澜之家', 'H', '200', '1', '1', '66', '300', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/99d3279f1029d32b929343b09d3c72de_222_222.jpg', '', '海澜之家的故事'), ('51', '苹果', 'A', '200', '1', '1', '55', '200', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg.jpg', null, '苹果的故事'), ('58', 'NIKE', 'N', '0', '1', '1', '33', '100', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/timg (51).jpg', '', 'NIKE的故事');
COMMIT;

-- ----------------------------
--  Table structure for `pms_comment`
-- ----------------------------
DROP TABLE IF EXISTS `pms_comment`;
CREATE TABLE `pms_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `member_nick_name` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `star` int(3) DEFAULT NULL COMMENT '评价星数：0->5',
  `member_ip` varchar(64) DEFAULT NULL COMMENT '评价的ip',
  `create_time` datetime DEFAULT NULL,
  `show_status` int(1) DEFAULT NULL,
  `product_attribute` varchar(255) DEFAULT NULL COMMENT '购买时的商品属性',
  `collect_couont` int(11) DEFAULT NULL,
  `read_count` int(11) DEFAULT NULL,
  `content` text,
  `pics` varchar(1000) DEFAULT NULL COMMENT '上传图片地址，以逗号隔开',
  `member_icon` varchar(255) DEFAULT NULL COMMENT '评论用户头像',
  `replay_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品评价表';

-- ----------------------------
--  Table structure for `pms_comment_replay`
-- ----------------------------
DROP TABLE IF EXISTS `pms_comment_replay`;
CREATE TABLE `pms_comment_replay` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) DEFAULT NULL,
  `member_nick_name` varchar(255) DEFAULT NULL,
  `member_icon` varchar(255) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `type` int(1) DEFAULT NULL COMMENT '评论人员类型；0->会员；1->管理员',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品评价回复表';

-- ----------------------------
--  Table structure for `pms_feight_template`
-- ----------------------------
DROP TABLE IF EXISTS `pms_feight_template`;
CREATE TABLE `pms_feight_template` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `charge_type` int(1) DEFAULT NULL COMMENT '计费类型:0->按重量；1->按件数',
  `first_weight` decimal(10,2) DEFAULT NULL COMMENT '首重kg',
  `first_fee` decimal(10,2) DEFAULT NULL COMMENT '首费（元）',
  `continue_weight` decimal(10,2) DEFAULT NULL,
  `continme_fee` decimal(10,2) DEFAULT NULL,
  `dest` varchar(255) DEFAULT NULL COMMENT '目的地（省、市）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='运费模版';

-- ----------------------------
--  Table structure for `pms_member_price`
-- ----------------------------
DROP TABLE IF EXISTS `pms_member_price`;
CREATE TABLE `pms_member_price` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `member_level_id` bigint(20) DEFAULT NULL,
  `member_price` decimal(10,2) DEFAULT NULL COMMENT '会员价格',
  `member_level_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COMMENT='商品会员价格表';

-- ----------------------------
--  Records of `pms_member_price`
-- ----------------------------
BEGIN;
INSERT INTO `pms_member_price` VALUES ('26', '7', '1', '500.00', null), ('27', '8', '1', '500.00', null), ('28', '9', '1', '500.00', null), ('29', '10', '1', '500.00', null), ('30', '11', '1', '500.00', null), ('31', '12', '1', '500.00', null), ('32', '13', '1', '500.00', null), ('33', '14', '1', '500.00', null), ('37', '18', '1', '500.00', null), ('44', '7', '2', '480.00', null), ('45', '7', '3', '450.00', null), ('52', '22', '1', null, null), ('53', '22', '2', null, null), ('54', '22', '3', null, null), ('58', '24', '1', null, null), ('59', '24', '2', null, null), ('60', '24', '3', null, null), ('112', '23', '1', '88.00', '黄金会员'), ('113', '23', '2', '88.00', '白金会员'), ('114', '23', '3', '66.00', '钻石会员'), ('142', '31', '1', null, '黄金会员'), ('143', '31', '2', null, '白金会员'), ('144', '31', '3', null, '钻石会员'), ('148', '32', '1', null, '黄金会员'), ('149', '32', '2', null, '白金会员'), ('150', '32', '3', null, '钻石会员'), ('154', '33', '1', null, '黄金会员'), ('155', '33', '2', null, '白金会员'), ('156', '33', '3', null, '钻石会员'), ('169', '36', '1', null, '黄金会员'), ('170', '36', '2', null, '白金会员'), ('171', '36', '3', null, '钻石会员'), ('172', '35', '1', null, '黄金会员'), ('173', '35', '2', null, '白金会员'), ('174', '35', '3', null, '钻石会员'), ('175', '34', '1', null, '黄金会员'), ('176', '34', '2', null, '白金会员'), ('177', '34', '3', null, '钻石会员'), ('178', '30', '1', null, '黄金会员'), ('179', '30', '2', null, '白金会员'), ('180', '30', '3', null, '钻石会员'), ('186', '26', '1', null, '黄金会员'), ('187', '26', '2', null, '白金会员'), ('188', '26', '3', null, '钻石会员'), ('192', '27', '1', null, '黄金会员'), ('193', '27', '2', null, '白金会员'), ('194', '27', '3', null, '钻石会员'), ('195', '28', '1', null, '黄金会员'), ('196', '28', '2', null, '白金会员'), ('197', '28', '3', null, '钻石会员'), ('198', '29', '1', null, '黄金会员'), ('199', '29', '2', null, '白金会员'), ('200', '29', '3', null, '钻石会员');
COMMIT;

-- ----------------------------
--  Table structure for `pms_product`
-- ----------------------------
DROP TABLE IF EXISTS `pms_product`;
CREATE TABLE `pms_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `brand_id` bigint(20) DEFAULT NULL,
  `product_category_id` bigint(20) DEFAULT NULL,
  `feight_template_id` bigint(20) DEFAULT NULL,
  `product_attribute_category_id` bigint(20) DEFAULT NULL,
  `name` varchar(64) NOT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `product_sn` varchar(64) NOT NULL COMMENT '货号',
  `delete_status` int(1) DEFAULT NULL COMMENT '删除状态：0->未删除；1->已删除',
  `publish_status` int(1) DEFAULT NULL COMMENT '上架状态：0->下架；1->上架',
  `new_status` int(1) DEFAULT NULL COMMENT '新品状态:0->不是新品；1->新品',
  `recommand_status` int(1) DEFAULT NULL COMMENT '推荐状态；0->不推荐；1->推荐',
  `verify_status` int(1) DEFAULT NULL COMMENT '审核状态：0->未审核；1->审核通过',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `sale` int(11) DEFAULT NULL COMMENT '销量',
  `price` decimal(10,2) DEFAULT NULL,
  `promotion_price` decimal(10,2) DEFAULT NULL COMMENT '促销价格',
  `gift_growth` int(11) DEFAULT '0' COMMENT '赠送的成长值',
  `gift_point` int(11) DEFAULT '0' COMMENT '赠送的积分',
  `use_point_limit` int(11) DEFAULT NULL COMMENT '限制使用的积分数',
  `sub_title` varchar(255) DEFAULT NULL COMMENT '副标题',
  `description` text COMMENT '商品描述',
  `original_price` decimal(10,2) DEFAULT NULL COMMENT '市场价',
  `stock` int(11) DEFAULT NULL COMMENT '库存',
  `low_stock` int(11) DEFAULT NULL COMMENT '库存预警值',
  `unit` varchar(16) DEFAULT NULL COMMENT '单位',
  `weight` decimal(10,2) DEFAULT NULL COMMENT '商品重量，默认为克',
  `preview_status` int(1) DEFAULT NULL COMMENT '是否为预告商品：0->不是；1->是',
  `service_ids` varchar(64) DEFAULT NULL COMMENT '以逗号分割的产品服务：1->无忧退货；2->快速退款；3->免费包邮',
  `keywords` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `album_pics` varchar(255) DEFAULT NULL COMMENT '画册图片，连产品图片限制为5张，以逗号分割',
  `detail_title` varchar(255) DEFAULT NULL,
  `detail_desc` text,
  `detail_html` text COMMENT '产品详情网页内容',
  `detail_mobile_html` text COMMENT '移动端网页详情',
  `promotion_start_time` datetime DEFAULT NULL COMMENT '促销开始时间',
  `promotion_end_time` datetime DEFAULT NULL COMMENT '促销结束时间',
  `promotion_per_limit` int(11) DEFAULT NULL COMMENT '活动限购数量',
  `promotion_type` int(1) DEFAULT NULL COMMENT '促销类型：0->没有促销使用原价;1->使用促销价；2->使用会员价；3->使用阶梯价格；4->使用满减价格；5->限时购',
  `brand_name` varchar(255) DEFAULT NULL COMMENT '品牌名称',
  `product_category_name` varchar(255) DEFAULT NULL COMMENT '商品分类名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='商品信息';

-- ----------------------------
--  Records of `pms_product`
-- ----------------------------
BEGIN;
INSERT INTO `pms_product` VALUES ('1', '49', '7', '0', '0', '银色星芒刺绣网纱底裤1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'qw', '1', '1', '1', '1', '1', '100', '0', '100.00', '1.00', '0', '100', '1', '111', '123123', '120.00', '100', '20', '件', '1000.00', '0', '1', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '33', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '2019-08-21 15:41:38', '2019-08-21 15:41:42', '1', '0', '七匹狼3', '外套'), ('2', '49', '7', '0', '0', 'iPhoneX1', 'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg', 'No86578', '1', '1', '1', '1', '1', '1', '0', '100.00', '1.00', '0', '100', '1', '111', '111', '120.00', '100', '20', '件', '1000.00', '0', '1', '银色星芒刺绣网纱底裤2', '银色星芒刺绣网纱底裤', '33', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '<p>银色星芒刺绣网纱底裤</p>', '<p>银色星芒刺绣网纱底裤</p>', '2019-08-22 11:34:20', '2019-08-22 11:34:24', '1', '0', '七匹狼', '外套'), ('3', '1', '7', '0', '0', '华为Mate201', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-xr-select-2019-family?wid=882&amp;hei=1058&amp;fmt=jpeg&amp;qlt=80&amp;op_usm=0.5,0.5&amp;.v=1550795424612', 'No86579', '1', '1', '1', '1', '1', '1', '0', '100.00', '1.00', '0', '100', '1', '111', '111', '120.00', '100', '20', '件', '1000.00', '0', '1', '银色星芒刺绣网纱底裤3', '银色星芒刺绣网纱底裤', '33', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '2019-08-22 12:25:06', '2019-08-22 12:25:08', '1', '0', '万和', '外套'), ('4', '49', '7', '0', '0', '银色星芒刺绣网纱底裤2', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'qw', '1', '1', '1', '1', '1', '100', '0', '100.00', '1.00', '0', '100', '1', '111', '123123', '120.00', '100', '20', '件', '1000.00', '0', '1', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '33', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '2019-08-21 15:41:38', '2019-08-21 15:41:42', '1', '0', '七匹狼3', '外套'), ('5', '49', '7', '0', '0', 'iPhoneX2', 'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg', 'No86578', '1', '1', '1', '1', '1', '1', '0', '100.00', '1.00', '0', '100', '1', '111', '111', '120.00', '100', '20', '件', '1000.00', '0', '1', '银色星芒刺绣网纱底裤2', '银色星芒刺绣网纱底裤', '33', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '<p>银色星芒刺绣网纱底裤</p>', '<p>银色星芒刺绣网纱底裤</p>', '2019-08-22 11:34:20', '2019-08-22 11:34:24', '1', '0', '七匹狼', '外套'), ('6', '1', '7', '0', '0', '华为Mate202', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'No86579', '1', '1', '1', '1', '1', '1', '0', '100.00', '1.00', '0', '100', '1', '111', '111', '120.00', '100', '20', '件', '1000.00', '0', '1', '银色星芒刺绣网纱底裤3', '银色星芒刺绣网纱底裤', '33', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '2019-08-22 12:25:06', '2019-08-22 12:25:08', '1', '0', '万和', '外套'), ('7', '49', '7', '0', '0', 'MacbookPro', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180522/web.png', 'qw', '1', '1', '1', '1', '1', '100', '0', '100.00', '1.00', '0', '100', '1', '111', '123123', '120.00', '100', '20', '件', '1000.00', '0', '1', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '33', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '2019-08-21 15:41:38', '2019-08-21 15:41:42', '1', '0', '七匹狼3', '外套'), ('8', '49', '7', '0', '0', 'Alienware', 'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg', 'No86578', '1', '1', '1', '1', '1', '1', '0', '100.00', '1.00', '0', '100', '1', '111', '111', '120.00', '100', '20', '件', '1000.00', '0', '1', '银色星芒刺绣网纱底裤2', '银色星芒刺绣网纱底裤', '33', '银色星芒刺绣网纱底裤', '银色星芒刺绣网纱底裤', '<p>银色星芒刺绣网纱底裤</p>', '<p>银色星芒刺绣网纱底裤</p>', '2019-08-22 11:34:20', '2019-08-22 11:34:24', '1', '0', '七匹狼', '外套');
COMMIT;

-- ----------------------------
--  Table structure for `pms_product_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_attribute`;
CREATE TABLE `pms_product_attribute` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_attribute_category_id` bigint(20) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `select_type` int(1) DEFAULT NULL COMMENT '属性选择类型：0->唯一；1->单选；2->多选',
  `input_type` int(1) DEFAULT NULL COMMENT '属性录入方式：0->手工录入；1->从列表中选取',
  `input_list` varchar(255) DEFAULT NULL COMMENT '可选值列表，以逗号隔开',
  `sort` int(11) DEFAULT NULL COMMENT '排序字段：最高的可以单独上传图片',
  `filter_type` int(1) DEFAULT NULL COMMENT '分类筛选样式：1->普通；1->颜色',
  `search_type` int(1) DEFAULT NULL COMMENT '检索类型；0->不需要进行检索；1->关键字检索；2->范围检索',
  `related_status` int(1) DEFAULT NULL COMMENT '相同属性产品是否关联；0->不关联；1->关联',
  `hand_add_status` int(1) DEFAULT NULL COMMENT '是否支持手动新增；0->不支持；1->支持',
  `type` int(1) DEFAULT NULL COMMENT '属性的类型；0->规格；1->参数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='商品属性参数表';

-- ----------------------------
--  Records of `pms_product_attribute`
-- ----------------------------
BEGIN;
INSERT INTO `pms_product_attribute` VALUES ('1', '1', '尺寸', '2', '1', 'M,X,XL,2XL,3XL,4XL', '0', '0', '0', '0', '0', '0'), ('7', '1', '颜色', '2', '1', '黑色,红色,白色,粉色', '100', '0', '0', '0', '1', '0'), ('13', '0', '上市年份', '1', '1', '2013年,2014年,2015年,2016年,2017年', '0', '0', '0', '0', '0', '1'), ('14', '0', '上市年份1', '1', '1', '2013年,2014年,2015年,2016年,2017年', '0', '0', '0', '0', '0', '1'), ('15', '0', '上市年份2', '1', '1', '2013年,2014年,2015年,2016年,2017年', '0', '0', '0', '0', '0', '1'), ('16', '0', '上市年份3', '1', '1', '2013年,2014年,2015年,2016年,2017年', '0', '0', '0', '0', '0', '1'), ('17', '0', '上市年份4', '1', '1', '2013年,2014年,2015年,2016年,2017年', '0', '0', '0', '0', '0', '1'), ('18', '0', '上市年份5', '1', '1', '2013年,2014年,2015年,2016年,2017年', '0', '0', '0', '0', '0', '1'), ('19', '0', '适用对象', '1', '1', '青年女性,中年女性', '0', '0', '0', '0', '0', '1'), ('20', '0', '适用对象1', '2', '1', '青年女性,中年女性', '0', '0', '0', '0', '0', '1'), ('21', '0', '适用对象3', '2', '1', '青年女性,中年女性', '0', '0', '0', '0', '0', '1'), ('24', '1', '商品编号', '1', '0', '', '0', '0', '0', '0', '0', '1'), ('25', '1', '适用季节', '1', '1', '春季,夏季,秋季,冬季', '0', '0', '0', '0', '0', '1'), ('32', '2', '适用人群', '0', '1', '老年,青年,中年', '0', '0', '0', '0', '0', '1'), ('33', '2', '风格', '0', '1', '嘻哈风格,基础大众,商务正装', '0', '0', '0', '0', '0', '1'), ('35', '2', '颜色', '0', '0', '', '100', '0', '0', '0', '1', '0'), ('37', '1', '适用人群', '1', '1', '儿童,青年,中年,老年', '0', '0', '0', '0', '0', '1'), ('38', '1', '上市时间', '1', '1', '2017年秋,2017年冬,2018年春,2018年夏', '0', '0', '0', '0', '0', '1'), ('39', '1', '袖长', '1', '1', '短袖,长袖,中袖', '0', '0', '0', '0', '0', '1'), ('40', '2', '尺码', '0', '1', '29,30,31,32,33,34', '0', '0', '0', '0', '0', '0'), ('41', '2', '适用场景', '0', '1', '居家,运动,正装', '0', '0', '0', '0', '0', '1'), ('42', '2', '上市时间', '0', '1', '2018年春,2018年夏', '0', '0', '0', '0', '0', '1'), ('43', '3', '颜色', '0', '0', '', '100', '0', '0', '0', '1', '0'), ('44', '3', '容量', '0', '1', '16G,32G,64G,128G', '0', '0', '0', '0', '0', '0'), ('45', '3', '屏幕尺寸', '0', '0', '', '0', '0', '0', '0', '0', '1'), ('46', '3', '网络', '0', '1', '3G,4G', '0', '0', '0', '0', '0', '1'), ('47', '3', '系统', '0', '1', 'Android,IOS', '0', '0', '0', '0', '0', '1'), ('48', '3', '电池容量', '0', '0', '', '0', '0', '0', '0', '0', '1');
COMMIT;

-- ----------------------------
--  Table structure for `pms_product_attribute_category`
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_attribute_category`;
CREATE TABLE `pms_product_attribute_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `attribute_count` int(11) DEFAULT '0' COMMENT '属性数量',
  `param_count` int(11) DEFAULT '0' COMMENT '参数数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='产品属性分类表';

-- ----------------------------
--  Records of `pms_product_attribute_category`
-- ----------------------------
BEGIN;
INSERT INTO `pms_product_attribute_category` VALUES ('1', '服装-T恤', '2', '5'), ('2', '服装-裤装', '2', '4'), ('3', '手机数码-手机通讯', '2', '4'), ('4', '配件', '0', '0'), ('5', '居家', '0', '0'), ('6', '洗护', '0', '0'), ('10', '测试分类', '0', '0');
COMMIT;

-- ----------------------------
--  Table structure for `pms_product_attribute_value`
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_attribute_value`;
CREATE TABLE `pms_product_attribute_value` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `product_attribute_id` bigint(20) DEFAULT NULL,
  `value` varchar(64) DEFAULT NULL COMMENT '手动添加规格或参数的值，参数单值，规格有多个时以逗号隔开',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8 COMMENT='存储产品参数信息的表';

-- ----------------------------
--  Records of `pms_product_attribute_value`
-- ----------------------------
BEGIN;
INSERT INTO `pms_product_attribute_value` VALUES ('1', '9', '1', 'X'), ('2', '10', '1', 'X'), ('3', '11', '1', 'X'), ('4', '12', '1', 'X'), ('5', '13', '1', 'X'), ('6', '14', '1', 'X'), ('7', '18', '1', 'X'), ('8', '7', '1', 'X'), ('9', '7', '1', 'XL'), ('10', '7', '1', 'XXL'), ('11', '22', '7', 'x,xx'), ('12', '22', '24', 'no110'), ('13', '22', '25', '春季'), ('14', '22', '37', '青年'), ('15', '22', '38', '2018年春'), ('16', '22', '39', '长袖'), ('124', '23', '7', '米白色,浅黄色'), ('125', '23', '24', 'no1098'), ('126', '23', '25', '春季'), ('127', '23', '37', '青年'), ('128', '23', '38', '2018年春'), ('129', '23', '39', '长袖'), ('130', '1', '13', null), ('131', '1', '14', null), ('132', '1', '15', null), ('133', '1', '16', null), ('134', '1', '17', null), ('135', '1', '18', null), ('136', '1', '19', null), ('137', '1', '20', null), ('138', '1', '21', null), ('139', '2', '13', null), ('140', '2', '14', null), ('141', '2', '15', null), ('142', '2', '16', null), ('143', '2', '17', null), ('144', '2', '18', null), ('145', '2', '19', null), ('146', '2', '20', null), ('147', '2', '21', null), ('183', '31', '24', null), ('184', '31', '25', '夏季'), ('185', '31', '37', '青年'), ('186', '31', '38', '2018年夏'), ('187', '31', '39', '短袖'), ('198', '30', '24', null), ('199', '30', '25', '夏季'), ('200', '30', '37', '青年'), ('201', '30', '38', '2018年夏'), ('202', '30', '39', '短袖'), ('203', '26', '43', '金色,银色'), ('204', '26', '45', '5.0'), ('205', '26', '46', '4G'), ('206', '26', '47', 'Android'), ('207', '26', '48', '3000'), ('213', '27', '43', '黑色,蓝色'), ('214', '27', '45', '5.8'), ('215', '27', '46', '4G'), ('216', '27', '47', 'Android'), ('217', '27', '48', '3000ml'), ('218', '28', '43', '金色,银色'), ('219', '28', '45', '5.0'), ('220', '28', '46', '4G'), ('221', '28', '47', 'Android'), ('222', '28', '48', '2800ml'), ('223', '29', '43', '金色,银色'), ('224', '29', '45', '4.7'), ('225', '29', '46', '4G'), ('226', '29', '47', 'IOS'), ('227', '29', '48', '1960ml');
COMMIT;

-- ----------------------------
--  Table structure for `pms_product_category`
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_category`;
CREATE TABLE `pms_product_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上机分类的编号：0表示一级分类',
  `name` varchar(64) DEFAULT NULL,
  `level` int(1) DEFAULT NULL COMMENT '分类级别：0->1级；1->2级',
  `product_count` int(11) DEFAULT NULL,
  `product_unit` varchar(64) DEFAULT NULL,
  `nav_status` int(1) DEFAULT NULL COMMENT '是否显示在导航栏：0->不显示；1->显示',
  `show_status` int(1) DEFAULT NULL COMMENT '显示状态：0->不显示；1->显示',
  `sort` int(11) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `keywords` varchar(255) DEFAULT NULL,
  `description` text COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='产品分类';

-- ----------------------------
--  Records of `pms_product_category`
-- ----------------------------
BEGIN;
INSERT INTO `pms_product_category` VALUES ('1', '0', '服装', '0', '100', '件', '1', '1', '1', null, '服装', '服装分类'), ('3', '0', '家用电器', '0', '100', '件', '1', '1', '1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/subject_cate_jiadian.png', '家用电器', '家用电器'), ('4', '0', '家具家装', '0', '100', '件', '1', '1', '1', null, '家具家装', '家具家装'), ('5', '0', '汽车用品', '0', '100', '件', '1', '1', '1', null, '汽车用品', '汽车用品'), ('7', '1', '外套', '1', '100', '件', '1', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_waitao.png', '外套', '外套'), ('8', '1', 'T恤', '1', '100', '件', '1', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_tshirt.png', 'T恤', 'T恤'), ('9', '1', '休闲裤', '1', '100', '件', '1', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_xiuxianku.png', '休闲裤', '休闲裤'), ('10', '1', '牛仔裤', '1', '100', '件', '1', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_niuzaiku.png', '牛仔裤', '牛仔裤'), ('11', '1', '衬衫', '1', '100', '件', '1', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_chenshan.png', '衬衫', '衬衫分类'), ('13', '12', '家电子分类1', '1', '1', '件', '0', '1', '0', 'string', 'string', 'string'), ('19', '2', '手机通讯', '1', '0', '件', '1', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_shouji.png', '手机通讯', '手机通讯'), ('29', '1', '男鞋', '1', '0', '件', '0', '0', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_xie.png', '', ''), ('30', '2', '手机配件', '1', '0', '件', '1', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_peijian.png', '手机配件', '手机配件'), ('31', '2', '摄影摄像', '1', '0', '件', '1', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_sheying.png', '', ''), ('32', '2', '影音娱乐', '1', '0', '件', '1', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_yule.png', '', ''), ('33', '2', '数码配件', '1', '0', '件', '1', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_yule.png', '', ''), ('34', '2', '智能设备', '1', '0', '件', '1', '1', '0', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/product_cate_zhineng.png', '', ''), ('35', '3', '电视', '1', '0', '件', '1', '1', '0', '', '', ''), ('36', '3', '空调', '1', '0', '件', '1', '1', '0', '', '', ''), ('37', '3', '洗衣机', '1', '0', '件', '1', '1', '0', '', '', ''), ('38', '3', '冰箱', '1', '0', '件', '1', '1', '0', '', '', ''), ('39', '3', '厨卫大电', '1', '0', '件', '1', '1', '0', '', '', ''), ('40', '3', '厨房小电', '1', '0', '件', '0', '0', '0', '', '', ''), ('41', '3', '生活电器', '1', '0', '件', '0', '0', '0', '', '', ''), ('42', '3', '个护健康', '1', '0', '件', '0', '0', '0', '', '', ''), ('43', '4', '厨房卫浴', '1', '0', '件', '1', '1', '0', '', '', ''), ('44', '4', '灯饰照明', '1', '0', '件', '1', '1', '0', '', '', ''), ('45', '4', '五金工具', '1', '0', '件', '1', '1', '0', '', '', ''), ('46', '4', '卧室家具', '1', '0', '件', '1', '1', '0', '', '', ''), ('47', '4', '客厅家具', '1', '0', '件', '1', '1', '0', '', '', ''), ('48', '5', '全新整车', '1', '0', '件', '1', '1', '0', '', '', ''), ('49', '5', '车载电器', '1', '0', '件', '1', '1', '0', '', '', ''), ('50', '5', '维修保养', '1', '0', '件', '1', '1', '0', '', '', ''), ('51', '5', '汽车装饰', '1', '0', '件', '1', '1', '0', '', '', '');
COMMIT;

-- ----------------------------
--  Table structure for `pms_product_category_attribute_relation`
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_category_attribute_relation`;
CREATE TABLE `pms_product_category_attribute_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint(20) DEFAULT NULL,
  `product_attribute_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='产品的分类和属性的关系表，用于设置分类筛选条件（只支持一级分类）';

-- ----------------------------
--  Records of `pms_product_category_attribute_relation`
-- ----------------------------
BEGIN;
INSERT INTO `pms_product_category_attribute_relation` VALUES ('1', '24', '24'), ('5', '26', '24'), ('7', '28', '24'), ('9', '25', '24'), ('10', '25', '25');
COMMIT;

-- ----------------------------
--  Table structure for `pms_product_full_reduction`
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_full_reduction`;
CREATE TABLE `pms_product_full_reduction` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `full_price` decimal(10,2) DEFAULT NULL,
  `reduce_price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COMMENT='产品满减表(只针对同商品)';

-- ----------------------------
--  Records of `pms_product_full_reduction`
-- ----------------------------
BEGIN;
INSERT INTO `pms_product_full_reduction` VALUES ('1', '7', '100.00', '20.00'), ('2', '8', '100.00', '20.00'), ('3', '9', '100.00', '20.00'), ('4', '10', '100.00', '20.00'), ('5', '11', '100.00', '20.00'), ('6', '12', '100.00', '20.00'), ('7', '13', '100.00', '20.00'), ('8', '14', '100.00', '20.00'), ('9', '18', '100.00', '20.00'), ('10', '7', '200.00', '50.00'), ('11', '7', '300.00', '100.00'), ('14', '22', '0.00', '0.00'), ('16', '24', '0.00', '0.00'), ('34', '23', '0.00', '0.00'), ('44', '31', '0.00', '0.00'), ('46', '32', '0.00', '0.00'), ('48', '33', '0.00', '0.00'), ('53', '36', '0.00', '0.00'), ('54', '35', '0.00', '0.00'), ('55', '34', '0.00', '0.00'), ('56', '30', '0.00', '0.00'), ('57', '26', '0.00', '0.00'), ('59', '27', '0.00', '0.00'), ('60', '28', '500.00', '50.00'), ('61', '28', '1000.00', '120.00'), ('62', '29', '0.00', '0.00');
COMMIT;

-- ----------------------------
--  Table structure for `pms_product_ladder`
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_ladder`;
CREATE TABLE `pms_product_ladder` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `count` int(11) DEFAULT NULL COMMENT '满足的商品数量',
  `discount` decimal(10,2) DEFAULT NULL COMMENT '折扣',
  `price` decimal(10,2) DEFAULT NULL COMMENT '折后价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COMMENT='产品阶梯价格表(只针对同商品)';

-- ----------------------------
--  Records of `pms_product_ladder`
-- ----------------------------
BEGIN;
INSERT INTO `pms_product_ladder` VALUES ('1', '7', '3', '0.70', '0.00'), ('2', '8', '3', '0.70', '0.00'), ('3', '9', '3', '0.70', '0.00'), ('4', '10', '3', '0.70', '0.00'), ('5', '11', '3', '0.70', '0.00'), ('6', '12', '3', '0.70', '0.00'), ('7', '13', '3', '0.70', '0.00'), ('8', '14', '3', '0.70', '0.00'), ('12', '18', '3', '0.70', '0.00'), ('14', '7', '4', '0.60', '0.00'), ('15', '7', '5', '0.50', '0.00'), ('18', '22', '0', '0.00', '0.00'), ('20', '24', '0', '0.00', '0.00'), ('38', '23', '0', '0.00', '0.00'), ('48', '31', '0', '0.00', '0.00'), ('50', '32', '0', '0.00', '0.00'), ('52', '33', '0', '0.00', '0.00'), ('57', '36', '0', '0.00', '0.00'), ('58', '35', '0', '0.00', '0.00'), ('59', '34', '0', '0.00', '0.00'), ('60', '30', '0', '0.00', '0.00'), ('61', '26', '0', '0.00', '0.00'), ('64', '27', '2', '0.80', '0.00'), ('65', '27', '3', '0.75', '0.00'), ('66', '28', '0', '0.00', '0.00'), ('67', '29', '0', '0.00', '0.00');
COMMIT;

-- ----------------------------
--  Table structure for `pms_product_operate_log`
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_operate_log`;
CREATE TABLE `pms_product_operate_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `price_old` decimal(10,2) DEFAULT NULL,
  `price_new` decimal(10,2) DEFAULT NULL,
  `sale_price_old` decimal(10,2) DEFAULT NULL,
  `sale_price_new` decimal(10,2) DEFAULT NULL,
  `gift_point_old` int(11) DEFAULT NULL COMMENT '赠送的积分',
  `gift_point_new` int(11) DEFAULT NULL,
  `use_point_limit_old` int(11) DEFAULT NULL,
  `use_point_limit_new` int(11) DEFAULT NULL,
  `operate_man` varchar(64) DEFAULT NULL COMMENT '操作人',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `pms_product_vertify_record`
-- ----------------------------
DROP TABLE IF EXISTS `pms_product_vertify_record`;
CREATE TABLE `pms_product_vertify_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `vertify_man` varchar(64) DEFAULT NULL COMMENT '审核人',
  `status` int(1) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL COMMENT '反馈详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='商品审核记录';

-- ----------------------------
--  Records of `pms_product_vertify_record`
-- ----------------------------
BEGIN;
INSERT INTO `pms_product_vertify_record` VALUES ('1', '1', '2018-04-27 16:36:41', 'test', '1', '验证通过'), ('2', '2', '2018-04-27 16:36:41', 'test', '1', '验证通过');
COMMIT;

-- ----------------------------
--  Table structure for `pms_sku_stock`
-- ----------------------------
DROP TABLE IF EXISTS `pms_sku_stock`;
CREATE TABLE `pms_sku_stock` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `sku_code` varchar(64) NOT NULL COMMENT 'sku编码',
  `price` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT '0' COMMENT '库存',
  `low_stock` int(11) DEFAULT NULL COMMENT '预警库存',
  `sp1` varchar(64) DEFAULT NULL COMMENT '销售属性1',
  `sp2` varchar(64) DEFAULT NULL,
  `sp3` varchar(64) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL COMMENT '展示图片',
  `sale` int(11) DEFAULT NULL COMMENT '销量',
  `promotion_price` decimal(10,2) DEFAULT NULL COMMENT '单品促销价格',
  `lock_stock` int(11) DEFAULT '0' COMMENT '锁定库存',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COMMENT='sku的库存';

-- ----------------------------
--  Records of `pms_sku_stock`
-- ----------------------------
BEGIN;
INSERT INTO `pms_sku_stock` VALUES ('1', '7', 'string', '100.00', '0', '5', 'string', 'string', 'string', 'string', '0', null, '0'), ('2', '8', 'string', '100.00', '0', '5', 'string', 'string', 'string', 'string', '0', null, '0'), ('3', '9', 'string', '100.00', '0', '5', 'string', 'string', 'string', 'string', '0', null, '0'), ('4', '10', 'string', '100.00', '0', '5', 'string', 'string', 'string', 'string', '0', null, '0'), ('5', '11', 'string', '100.00', '0', '5', 'string', 'string', 'string', 'string', '0', null, '0'), ('6', '12', 'string', '100.00', '0', '5', 'string', 'string', 'string', 'string', '0', null, '0'), ('7', '13', 'string', '100.00', '0', '5', 'string', 'string', 'string', 'string', '0', null, '0'), ('8', '14', 'string', '100.00', '0', '5', 'string', 'string', 'string', 'string', '0', null, '0'), ('9', '18', 'string', '100.00', '0', '5', 'string', 'string', 'string', 'string', '0', null, '0'), ('10', '7', 'string', '0.00', '0', '0', 'string', 'string', 'sp3', 'string', '0', null, '0'), ('11', '7', 'string', '0.00', '0', '0', 'string', 'string', 'sp33', 'string', '0', null, '0'), ('12', '22', '111', '99.00', '0', null, 'x', 'M', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg', null, null, '0'), ('13', '22', '112', '99.00', '0', null, 'xx', 'M', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/2018032614134591_20180326141345650 (4).png', null, null, '0'), ('78', '23', '201806070023001', '99.00', '0', null, '米白色', 'M', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg', null, null, '0'), ('79', '23', '201806070023002', '99.00', '0', null, '米白色', 'X', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/1522738681.jpg', null, null, '0'), ('80', '23', '201806070023003', '99.00', '0', null, '浅黄色', 'M', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/2017091716493787_20170917164937650 (1).png', null, null, '0'), ('81', '23', '201806070023004', '99.00', '0', null, '浅黄色', 'X', null, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180604/2017091716493787_20170917164937650 (1).png', null, null, '0'), ('90', '26', '201806070026001', '3788.00', '499', null, '金色', '16G', null, null, null, '3588.00', '-8'), ('91', '26', '201806070026002', '3999.00', '500', null, '金色', '32G', null, null, null, '3799.00', '0'), ('92', '26', '201806070026003', '3788.00', '500', null, '银色', '16G', null, null, null, '3588.00', '0'), ('93', '26', '201806070026004', '3999.00', '500', null, '银色', '32G', null, null, null, '3799.00', '0'), ('98', '27', '201808270027001', '2699.00', '97', null, '黑色', '32G', null, null, null, null, '-24'), ('99', '27', '201808270027002', '2999.00', '100', null, '黑色', '64G', null, null, null, null, '0'), ('100', '27', '201808270027003', '2699.00', '100', null, '蓝色', '32G', null, null, null, null, '0'), ('101', '27', '201808270027004', '2999.00', '100', null, '蓝色', '64G', null, null, null, null, '0'), ('102', '28', '201808270028001', '649.00', '99', null, '金色', '16G', null, null, null, null, '-8'), ('103', '28', '201808270028002', '699.00', '99', null, '金色', '32G', null, null, null, null, '-8'), ('104', '28', '201808270028003', '649.00', '100', null, '银色', '16G', null, null, null, null, '0'), ('105', '28', '201808270028004', '699.00', '100', null, '银色', '32G', null, null, null, null, '0'), ('106', '29', '201808270029001', '5499.00', '99', null, '金色', '32G', null, null, null, null, '-8'), ('107', '29', '201808270029002', '6299.00', '100', null, '金色', '64G', null, null, null, null, '0'), ('108', '29', '201808270029003', '5499.00', '100', null, '银色', '32G', null, null, null, null, '0'), ('109', '29', '201808270029004', '6299.00', '100', null, '银色', '64G', null, null, null, null, '0');
COMMIT;

-- ----------------------------
--  Table structure for `regUser`
-- ----------------------------
DROP TABLE IF EXISTS `regUser`;
CREATE TABLE `regUser` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `Province` varchar(255) DEFAULT NULL,
  `isLock` varchar(255) DEFAULT NULL,
  `Tel` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `County` varchar(255) DEFAULT NULL,
  `Detail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `regUser`
-- ----------------------------
BEGIN;
INSERT INTO `regUser` VALUES ('4', 'joker', 'e10adc3949ba59abbe56e057f20f883e', '福建', '0', '13720815215', '福州', '仓山区', '福建农林大学');
COMMIT;

-- ----------------------------
--  Table structure for `sms_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `sms_coupon`;
CREATE TABLE `sms_coupon` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(1) DEFAULT NULL COMMENT '优惠卷类型；0->全场赠券；1->会员赠券；2->购物赠券；3->注册赠券',
  `name` varchar(100) DEFAULT NULL,
  `platform` int(1) DEFAULT NULL COMMENT '使用平台：0->全部；1->移动；2->PC',
  `count` int(11) DEFAULT NULL COMMENT '数量',
  `amount` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `per_limit` int(11) DEFAULT NULL COMMENT '每人限领张数',
  `min_point` decimal(10,2) DEFAULT NULL COMMENT '使用门槛；0表示无门槛',
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `use_type` int(1) DEFAULT NULL COMMENT '使用类型：0->全场通用；1->指定分类；2->指定商品',
  `note` varchar(200) DEFAULT NULL COMMENT '备注',
  `publish_count` int(11) DEFAULT NULL COMMENT '发行数量',
  `use_count` int(11) DEFAULT NULL COMMENT '已使用数量',
  `receive_count` int(11) DEFAULT NULL COMMENT '领取数量',
  `enable_time` datetime DEFAULT NULL COMMENT '可以领取的日期',
  `code` varchar(64) DEFAULT NULL COMMENT '优惠码',
  `member_level` int(1) DEFAULT NULL COMMENT '可领取的会员类型：0->无限时',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='优惠卷表';

-- ----------------------------
--  Records of `sms_coupon`
-- ----------------------------
BEGIN;
INSERT INTO `sms_coupon` VALUES ('2', '0', '全品类通用券', '0', '92', '10.00', '1', '100.00', '2018-08-27 16:40:47', '2018-11-23 16:40:47', '0', '满100减10', '100', '0', '8', '2018-08-27 16:40:47', null, null), ('3', '0', '小米手机专用券', '0', '92', '50.00', '1', '1000.00', '2018-08-27 16:40:47', '2018-11-16 16:40:47', '2', '小米手机专用优惠券', '100', '0', '8', '2018-08-27 16:40:47', null, null), ('4', '0', '手机品类专用券', '0', '92', '300.00', '1', '2000.00', '2018-08-27 16:40:47', '2018-09-15 16:40:47', '1', '手机分类专用优惠券', '100', '0', '8', '2018-08-27 16:40:47', null, null), ('7', '0', 'T恤分类专用优惠券', '0', '93', '50.00', '1', '500.00', '2018-08-27 16:40:47', '2018-08-15 16:40:47', '1', '满500减50', '100', '0', '7', '2018-08-27 16:40:47', null, null), ('8', '0', '新优惠券', '0', '100', '100.00', '1', '1000.00', '2018-11-08 00:00:00', '2018-11-27 00:00:00', '0', '测试', '100', '0', '1', null, null, null), ('9', '0', '全品类通用券', '0', '100', '5.00', '1', '100.00', '2018-11-08 00:00:00', '2018-11-10 00:00:00', '0', null, '100', '0', '1', null, null, null), ('10', '0', '全品类通用券', '0', '100', '15.00', '1', '200.00', '2018-11-08 00:00:00', '2018-11-10 00:00:00', '0', null, '100', '0', '1', null, null, null), ('11', '0', '全品类通用券', '0', '1000', '50.00', '1', '1000.00', '2018-11-08 00:00:00', '2018-11-10 00:00:00', '0', null, '1000', '0', '0', null, null, null), ('12', '0', '移动端全品类通用券', '1', '1', '10.00', '1', '100.00', '2018-11-08 00:00:00', '2018-11-10 00:00:00', '0', null, '100', '0', '0', null, null, null), ('19', '0', '手机分类专用', '0', '100', '100.00', '1', '1000.00', '2018-11-09 00:00:00', '2018-11-17 00:00:00', '1', '手机分类专用', '100', '0', '0', null, null, null), ('20', '0', '小米手机专用', '0', '100', '200.00', '1', '1000.00', '2018-11-09 00:00:00', '2018-11-24 00:00:00', '2', '小米手机专用', '100', '0', '0', null, null, null), ('21', '0', 'xxx', '0', '100', '10.00', '1', '100.00', '2018-11-09 00:00:00', '2018-11-30 00:00:00', '2', null, '100', '0', '0', null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `sms_coupon_history`
-- ----------------------------
DROP TABLE IF EXISTS `sms_coupon_history`;
CREATE TABLE `sms_coupon_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `coupon_id` bigint(20) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `coupon_code` varchar(64) DEFAULT NULL,
  `member_nickname` varchar(64) DEFAULT NULL COMMENT '领取人昵称',
  `get_type` int(1) DEFAULT NULL COMMENT '获取类型：0->后台赠送；1->主动获取',
  `create_time` datetime DEFAULT NULL,
  `use_status` int(1) DEFAULT NULL COMMENT '使用状态：0->未使用；1->已使用；2->已过期',
  `use_time` datetime DEFAULT NULL COMMENT '使用时间',
  `order_id` bigint(20) DEFAULT NULL COMMENT '订单编号',
  `order_sn` varchar(100) DEFAULT NULL COMMENT '订单号码',
  PRIMARY KEY (`id`),
  KEY `idx_member_id` (`member_id`) USING BTREE,
  KEY `idx_coupon_id` (`coupon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='优惠券使用、领取历史表';

-- ----------------------------
--  Records of `sms_coupon_history`
-- ----------------------------
BEGIN;
INSERT INTO `sms_coupon_history` VALUES ('2', '2', '1', '4931048380330002', 'windir', '1', '2018-08-29 14:04:12', '0', '2019-03-21 15:03:40', '12', '201809150101000001'), ('3', '3', '1', '4931048380330003', 'windir', '1', '2018-08-29 14:04:29', '0', null, null, null), ('4', '4', '1', '4931048380330004', 'windir', '1', '2018-08-29 14:04:32', '0', null, null, null), ('11', '7', '1', '4931048380330001', 'windir', '1', '2018-09-04 16:21:50', '0', null, null, null), ('12', '2', '4', '0340981248320004', 'zhensan', '1', '2018-11-12 14:16:50', '0', null, null, null), ('13', '3', '4', '0342977234360004', 'zhensan', '1', '2018-11-12 14:17:10', '0', null, null, null), ('14', '4', '4', '0343342928830004', 'zhensan', '1', '2018-11-12 14:17:13', '0', null, null, null), ('15', '2', '5', '0351883832180005', 'lisi', '1', '2018-11-12 14:18:39', '0', null, null, null), ('16', '3', '5', '0352201672680005', 'lisi', '1', '2018-11-12 14:18:42', '0', null, null, null), ('17', '4', '5', '0352505810180005', 'lisi', '1', '2018-11-12 14:18:45', '0', null, null, null), ('18', '2', '6', '0356114588380006', 'wangwu', '1', '2018-11-12 14:19:21', '0', null, null, null), ('19', '3', '6', '0356382856920006', 'wangwu', '1', '2018-11-12 14:19:24', '0', null, null, null), ('20', '4', '6', '0356656798470006', 'wangwu', '1', '2018-11-12 14:19:27', '0', null, null, null), ('21', '2', '3', '0363644984620003', 'windy', '1', '2018-11-12 14:20:36', '0', null, null, null), ('22', '3', '3', '0363932820300003', 'windy', '1', '2018-11-12 14:20:39', '0', null, null, null), ('23', '4', '3', '0364238275840003', 'windy', '1', '2018-11-12 14:20:42', '0', null, null, null), ('24', '2', '7', '0385034833070007', 'lion', '1', '2018-11-12 14:24:10', '0', null, null, null), ('25', '3', '7', '0385350208650007', 'lion', '1', '2018-11-12 14:24:13', '0', null, null, null), ('26', '4', '7', '0385632733900007', 'lion', '1', '2018-11-12 14:24:16', '0', null, null, null), ('27', '2', '8', '0388779132990008', 'shari', '1', '2018-11-12 14:24:48', '0', null, null, null), ('28', '3', '8', '0388943658810008', 'shari', '1', '2018-11-12 14:24:49', '0', null, null, null), ('29', '4', '8', '0389069398320008', 'shari', '1', '2018-11-12 14:24:51', '0', null, null, null), ('30', '2', '9', '0390753935250009', 'aewen', '1', '2018-11-12 14:25:08', '0', null, null, null), ('31', '3', '9', '0390882954470009', 'aewen', '1', '2018-11-12 14:25:09', '0', null, null, null), ('32', '4', '9', '0391025542810009', 'aewen', '1', '2018-11-12 14:25:10', '0', null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `sms_coupon_product_category_relation`
-- ----------------------------
DROP TABLE IF EXISTS `sms_coupon_product_category_relation`;
CREATE TABLE `sms_coupon_product_category_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `coupon_id` bigint(20) DEFAULT NULL,
  `product_category_id` bigint(20) DEFAULT NULL,
  `product_category_name` varchar(200) DEFAULT NULL COMMENT '产品分类名称',
  `parent_category_name` varchar(200) DEFAULT NULL COMMENT '父分类名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='优惠券和产品分类关系表';

-- ----------------------------
--  Records of `sms_coupon_product_category_relation`
-- ----------------------------
BEGIN;
INSERT INTO `sms_coupon_product_category_relation` VALUES ('4', '19', '30', '手机配件', '手机数码');
COMMIT;

-- ----------------------------
--  Table structure for `sms_coupon_product_relation`
-- ----------------------------
DROP TABLE IF EXISTS `sms_coupon_product_relation`;
CREATE TABLE `sms_coupon_product_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `coupon_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `product_name` varchar(500) DEFAULT NULL COMMENT '商品名称',
  `product_sn` varchar(200) DEFAULT NULL COMMENT '商品编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='优惠券和产品的关系表';

-- ----------------------------
--  Records of `sms_coupon_product_relation`
-- ----------------------------
BEGIN;
INSERT INTO `sms_coupon_product_relation` VALUES ('9', '21', '33', '小米（MI）小米电视4A ', '4609652');
COMMIT;

-- ----------------------------
--  Table structure for `sms_flash_promotion`
-- ----------------------------
DROP TABLE IF EXISTS `sms_flash_promotion`;
CREATE TABLE `sms_flash_promotion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `start_date` date DEFAULT NULL COMMENT '开始日期',
  `end_date` date DEFAULT NULL COMMENT '结束日期',
  `status` int(1) DEFAULT NULL COMMENT '上下线状态',
  `create_time` datetime DEFAULT NULL COMMENT '秒杀时间段名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='限时购表';

-- ----------------------------
--  Records of `sms_flash_promotion`
-- ----------------------------
BEGIN;
INSERT INTO `sms_flash_promotion` VALUES ('2', '春季家电家具疯狂秒杀1', '2019-01-28', '2019-01-15', '0', '2018-11-16 11:12:13'), ('3', '前端测试专用活动', '2018-11-03', '2019-02-28', '1', '2018-11-16 11:11:31'), ('4', '春季家电家具疯狂秒杀3', '2018-11-24', '2018-11-25', '0', '2018-11-16 11:12:19'), ('5', '春季家电家具疯狂秒杀4', '2018-11-16', '2018-11-16', '0', '2018-11-16 11:12:24'), ('6', '春季家电家具疯狂秒杀5', '2018-11-16', '2018-11-16', '0', '2018-11-16 11:12:31'), ('7', '春季家电家具疯狂秒杀6', '2018-11-16', '2018-11-16', '0', '2018-11-16 11:12:35'), ('8', '春季家电家具疯狂秒杀7', '2018-11-16', '2018-11-16', '0', '2018-11-16 11:12:39'), ('9', '春季家电家具疯狂秒杀8', '2018-11-16', '2018-11-16', '0', '2018-11-16 11:12:42'), ('13', '测试', '2018-11-01', '2018-11-30', '0', '2018-11-19 10:34:24');
COMMIT;

-- ----------------------------
--  Table structure for `sms_flash_promotion_log`
-- ----------------------------
DROP TABLE IF EXISTS `sms_flash_promotion_log`;
CREATE TABLE `sms_flash_promotion_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `member_phone` varchar(64) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `subscribe_time` datetime DEFAULT NULL COMMENT '会员订阅时间',
  `send_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='限时购通知记录';

-- ----------------------------
--  Table structure for `sms_flash_promotion_product_relation`
-- ----------------------------
DROP TABLE IF EXISTS `sms_flash_promotion_product_relation`;
CREATE TABLE `sms_flash_promotion_product_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `flash_promotion_id` bigint(20) DEFAULT NULL,
  `flash_promotion_session_id` bigint(20) DEFAULT NULL COMMENT '编号',
  `product_id` bigint(20) DEFAULT NULL,
  `flash_promotion_price` decimal(10,2) DEFAULT NULL COMMENT '限时购价格',
  `flash_promotion_count` int(11) DEFAULT NULL COMMENT '限时购数量',
  `flash_promotion_limit` int(11) DEFAULT NULL COMMENT '每人限购数量',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COMMENT='商品限时购与商品关系表';

-- ----------------------------
--  Records of `sms_flash_promotion_product_relation`
-- ----------------------------
BEGIN;
INSERT INTO `sms_flash_promotion_product_relation` VALUES ('1', '2', '1', '26', '3000.00', '10', '1', '0'), ('2', '2', '1', '27', '2000.00', '10', '1', '20'), ('3', '2', '1', '28', '599.00', '19', '1', '0'), ('4', '2', '1', '29', '4999.00', '10', '1', '100'), ('9', '2', '2', '26', '2999.00', '100', '1', '0'), ('10', '2', '2', '27', null, null, null, null), ('11', '2', '2', '28', null, null, null, null), ('12', '2', '2', '29', null, null, null, null), ('13', '2', '2', '30', null, null, null, null), ('14', '2', '3', '31', null, null, null, null), ('15', '2', '3', '32', null, null, null, null), ('16', '2', '4', '33', null, null, null, null), ('17', '2', '4', '34', null, null, null, null), ('18', '2', '5', '36', null, null, null, null), ('19', '2', '6', '33', null, null, null, null), ('20', '2', '6', '34', null, null, null, null), ('21', '3', '1', '26', '3000.00', '100', '1', null), ('22', '3', '1', '27', '1999.00', '10', '1', null), ('23', '3', '1', '28', '599.00', '10', '1', null), ('24', '3', '1', '29', '4999.00', '10', '1', null), ('25', '3', '2', '31', '90.00', '10', '1', null), ('26', '3', '2', '32', '60.00', '10', '1', null), ('27', '3', '2', '33', '2299.00', '10', '1', null), ('28', '3', '2', '34', '3888.00', '10', '1', null), ('29', '3', '3', '36', null, null, null, null), ('30', '3', '3', '35', null, null, null, null), ('31', '3', '3', '31', null, null, null, null), ('32', '3', '3', '32', null, null, null, null), ('33', '3', '4', '26', null, null, null, null), ('34', '3', '4', '27', null, null, null, null), ('35', '3', '4', '28', null, null, null, null), ('36', '3', '4', '29', null, null, null, null), ('37', '3', '5', '26', '3688.00', '100', '1', null), ('38', '3', '5', '27', '2599.00', '10', '1', null), ('39', '3', '5', '28', '599.00', '10', '1', null), ('40', '3', '5', '29', '4999.00', '10', '1', null), ('41', '3', '6', '26', null, null, null, null), ('42', '3', '6', '27', null, null, null, null), ('43', '3', '6', '28', null, null, null, null), ('44', '3', '6', '29', null, null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `sms_flash_promotion_session`
-- ----------------------------
DROP TABLE IF EXISTS `sms_flash_promotion_session`;
CREATE TABLE `sms_flash_promotion_session` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(200) DEFAULT NULL COMMENT '场次名称',
  `start_time` time DEFAULT NULL COMMENT '每日开始时间',
  `end_time` time DEFAULT NULL COMMENT '每日结束时间',
  `status` int(1) DEFAULT NULL COMMENT '启用状态：0->不启用；1->启用',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='限时购场次表';

-- ----------------------------
--  Records of `sms_flash_promotion_session`
-- ----------------------------
BEGIN;
INSERT INTO `sms_flash_promotion_session` VALUES ('1', '8:00', '08:00:00', '10:00:33', '1', '2018-11-16 13:22:17'), ('2', '10:00', '10:00:00', '12:00:00', '1', '2018-11-16 13:22:34'), ('3', '12:00', '12:00:00', '14:00:00', '1', '2018-11-16 13:22:37'), ('4', '14:00', '14:00:00', '16:00:00', '1', '2018-11-16 13:22:41'), ('5', '16:00', '16:00:00', '18:00:00', '1', '2018-11-16 13:22:45'), ('6', '18:00', '18:00:00', '20:00:00', '1', '2018-11-16 13:21:34'), ('7', '20:00', '20:00:33', '21:00:33', '0', '2018-11-16 13:22:55');
COMMIT;

-- ----------------------------
--  Table structure for `sms_home_advertise`
-- ----------------------------
DROP TABLE IF EXISTS `sms_home_advertise`;
CREATE TABLE `sms_home_advertise` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `type` int(1) DEFAULT NULL COMMENT '轮播位置：0->PC首页轮播；1->app首页轮播',
  `pic` varchar(500) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '上下线状态：0->下线；1->上线',
  `click_count` int(11) DEFAULT NULL COMMENT '点击数',
  `order_count` int(11) DEFAULT NULL COMMENT '下单数',
  `url` varchar(500) DEFAULT NULL COMMENT '链接地址',
  `note` varchar(500) DEFAULT NULL COMMENT '备注',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='首页轮播广告表';

-- ----------------------------
--  Records of `sms_home_advertise`
-- ----------------------------
BEGIN;
INSERT INTO `sms_home_advertise` VALUES ('2', '夏季大热促销', '1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/xiaomi.jpg', '2018-11-01 14:01:37', '2018-11-15 14:01:37', '0', '0', '0', null, '夏季大热促销', '0'), ('3', '夏季大热促销1', '1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/5ac1bf58Ndefaac16.jpg', '2018-11-13 14:01:37', '2018-11-13 14:01:37', '0', '0', '0', null, '夏季大热促销1', '0'), ('4', '夏季大热促销2', '1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180615/5a9d248cN071f4959.jpg', '2018-11-13 14:01:37', '2018-11-13 14:01:37', '1', '0', '0', null, '夏季大热促销2', '0'), ('9', '电影推荐广告', '1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20181113/movie_ad.jpg', '2018-11-01 00:00:00', '2018-11-24 00:00:00', '1', '0', '0', 'www.baidu.com', '电影推荐广告', '100'), ('10', '汽车促销广告', '1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20181113/car_ad.jpg', '2018-11-13 00:00:00', '2018-11-24 00:00:00', '1', '0', '0', 'xxx', null, '99'), ('11', '汽车推荐广告', '1', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20181113/car_ad2.jpg', '2018-11-13 00:00:00', '2018-11-30 00:00:00', '1', '0', '0', 'xxx', null, '98');
COMMIT;

-- ----------------------------
--  Table structure for `sms_home_brand`
-- ----------------------------
DROP TABLE IF EXISTS `sms_home_brand`;
CREATE TABLE `sms_home_brand` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `brand_id` bigint(20) DEFAULT NULL,
  `brand_name` varchar(64) DEFAULT NULL,
  `recommend_status` int(1) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='首页推荐品牌表';

-- ----------------------------
--  Records of `sms_home_brand`
-- ----------------------------
BEGIN;
INSERT INTO `sms_home_brand` VALUES ('1', '1', '万和', '1', '200'), ('2', '2', '三星', '1', '0'), ('6', '6', '小米', '1', '300'), ('8', '5', '方太', '1', '100'), ('32', '50', '海澜之家', '1', '0'), ('33', '51', '苹果', '1', '0'), ('35', '3', '华为', '1', '0'), ('36', '4', '格力', '1', '0'), ('37', '5', '方太', '1', '0'), ('38', '1', '万和', '1', '0'), ('39', '21', 'OPPO', '1', '0');
COMMIT;

-- ----------------------------
--  Table structure for `sms_home_new_product`
-- ----------------------------
DROP TABLE IF EXISTS `sms_home_new_product`;
CREATE TABLE `sms_home_new_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `product_name` varchar(64) DEFAULT NULL,
  `recommend_status` int(1) DEFAULT NULL,
  `sort` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='新鲜好物表';

-- ----------------------------
--  Records of `sms_home_new_product`
-- ----------------------------
BEGIN;
INSERT INTO `sms_home_new_product` VALUES ('2', '27', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '1', '200'), ('8', '26', '华为 HUAWEI P20 ', '1', '0'), ('9', '27', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '1', '0'), ('10', '28', '小米 红米5A 全网通版 3GB+32GB 香槟金 移动联通电信4G手机 双卡双待', '1', '0'), ('11', '29', 'Apple iPhone 8 Plus 64GB 红色特别版 移动联通电信4G手机', '1', '0'), ('12', '30', 'HLA海澜之家简约动物印花短袖T恤', '1', '0');
COMMIT;

-- ----------------------------
--  Table structure for `sms_home_recommend_product`
-- ----------------------------
DROP TABLE IF EXISTS `sms_home_recommend_product`;
CREATE TABLE `sms_home_recommend_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `product_name` varchar(64) DEFAULT NULL,
  `recommend_status` int(1) DEFAULT NULL,
  `sort` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='人气推荐商品表';

-- ----------------------------
--  Records of `sms_home_recommend_product`
-- ----------------------------
BEGIN;
INSERT INTO `sms_home_recommend_product` VALUES ('3', '26', '华为 HUAWEI P20 ', '1', '0'), ('4', '27', '小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待', '1', '0'), ('5', '28', '小米 红米5A 全网通版 3GB+32GB 香槟金 移动联通电信4G手机 双卡双待', '1', '0'), ('6', '29', 'Apple iPhone 8 Plus 64GB 红色特别版 移动联通电信4G手机', '1', '0'), ('7', '30', 'HLA海澜之家简约动物印花短袖T恤', '1', '100');
COMMIT;

-- ----------------------------
--  Table structure for `sms_home_recommend_subject`
-- ----------------------------
DROP TABLE IF EXISTS `sms_home_recommend_subject`;
CREATE TABLE `sms_home_recommend_subject` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subject_id` bigint(20) DEFAULT NULL,
  `subject_name` varchar(64) DEFAULT NULL,
  `recommend_status` int(1) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='首页推荐专题表';

-- ----------------------------
--  Records of `sms_home_recommend_subject`
-- ----------------------------
BEGIN;
INSERT INTO `sms_home_recommend_subject` VALUES ('14', '1', 'polo衬衫的也时尚', '1', '0'), ('15', '2', '大牌手机低价秒', '1', '0'), ('16', '3', '晓龙845新品上市', '1', '0'), ('17', '4', '夏天应该穿什么', '1', '0'), ('18', '5', '夏季精选', '1', '100'), ('19', '6', '品牌手机降价', '1', '0');
COMMIT;

-- ----------------------------
--  Table structure for `ums_admin`
-- ----------------------------
DROP TABLE IF EXISTS `ums_admin`;
CREATE TABLE `ums_admin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `icon` varchar(500) DEFAULT NULL COMMENT '头像',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `nick_name` varchar(200) DEFAULT NULL COMMENT '昵称',
  `note` varchar(500) DEFAULT NULL COMMENT '备注信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `status` int(1) DEFAULT '1' COMMENT '帐号启用状态：0->禁用；1->启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='后台用户表';

-- ----------------------------
--  Records of `ums_admin`
-- ----------------------------
BEGIN;
INSERT INTO `ums_admin` VALUES ('1', 'test', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg.jpg', null, '测试账号', null, '2018-09-29 13:55:30', '2018-09-29 13:55:39', '1'), ('3', 'admin', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20190129/170157_yIl3_1767531.jpg', 'admin@163.com', '系统管理员', '系统管理员', '2018-10-08 13:32:47', '2019-03-20 15:38:50', '1');
COMMIT;

-- ----------------------------
--  Table structure for `ums_admin_login_log`
-- ----------------------------
DROP TABLE IF EXISTS `ums_admin_login_log`;
CREATE TABLE `ums_admin_login_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `user_agent` varchar(100) DEFAULT NULL COMMENT '浏览器登录类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='后台用户登录日志表';

-- ----------------------------
--  Records of `ums_admin_login_log`
-- ----------------------------
BEGIN;
INSERT INTO `ums_admin_login_log` VALUES ('5', '3', '2018-12-06 13:59:12', '0:0:0:0:0:0:0:1', null, null), ('6', '3', '2018-12-17 13:23:20', '0:0:0:0:0:0:0:1', null, null), ('7', '3', '2018-12-18 13:51:42', '0:0:0:0:0:0:0:1', null, null), ('8', '3', '2018-12-18 13:51:51', '0:0:0:0:0:0:0:1', null, null), ('9', '3', '2019-01-28 16:20:41', '0:0:0:0:0:0:0:1', null, null), ('10', '3', '2019-01-29 09:16:25', '0:0:0:0:0:0:0:1', null, null), ('11', '3', '2019-01-29 10:10:51', '0:0:0:0:0:0:0:1', null, null), ('12', '3', '2019-02-18 11:03:06', '0:0:0:0:0:0:0:1', null, null), ('13', '3', '2019-03-12 10:03:55', '0:0:0:0:0:0:0:1', null, null), ('14', '3', '2019-03-12 10:06:19', '0:0:0:0:0:0:0:1', null, null), ('15', '3', '2019-03-12 10:15:22', '0:0:0:0:0:0:0:1', null, null), ('16', '3', '2019-03-20 15:35:33', '0:0:0:0:0:0:0:1', null, null), ('17', '3', '2019-03-20 15:38:50', '0:0:0:0:0:0:0:1', null, null);
COMMIT;

-- ----------------------------
--  Table structure for `ums_admin_permission_relation`
-- ----------------------------
DROP TABLE IF EXISTS `ums_admin_permission_relation`;
CREATE TABLE `ums_admin_permission_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(20) DEFAULT NULL,
  `permission_id` bigint(20) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='后台用户和权限关系表(除角色中定义的权限以外的加减权限)';

-- ----------------------------
--  Table structure for `ums_admin_role_relation`
-- ----------------------------
DROP TABLE IF EXISTS `ums_admin_role_relation`;
CREATE TABLE `ums_admin_role_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='后台用户和角色关系表';

-- ----------------------------
--  Records of `ums_admin_role_relation`
-- ----------------------------
BEGIN;
INSERT INTO `ums_admin_role_relation` VALUES ('13', '3', '1'), ('15', '3', '2'), ('16', '3', '4');
COMMIT;

-- ----------------------------
--  Table structure for `ums_growth_change_history`
-- ----------------------------
DROP TABLE IF EXISTS `ums_growth_change_history`;
CREATE TABLE `ums_growth_change_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `change_type` int(1) DEFAULT NULL COMMENT '改变类型：0->增加；1->减少',
  `change_count` int(11) DEFAULT NULL COMMENT '积分改变数量',
  `operate_man` varchar(100) DEFAULT NULL COMMENT '操作人员',
  `operate_note` varchar(200) DEFAULT NULL COMMENT '操作备注',
  `source_type` int(1) DEFAULT NULL COMMENT '积分来源：0->购物；1->管理员修改',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='成长值变化历史记录表';

-- ----------------------------
--  Records of `ums_growth_change_history`
-- ----------------------------
BEGIN;
INSERT INTO `ums_growth_change_history` VALUES ('1', '1', '2018-08-29 17:16:35', '0', '1000', 'test', '测试使用', '1');
COMMIT;

-- ----------------------------
--  Table structure for `ums_integration_change_history`
-- ----------------------------
DROP TABLE IF EXISTS `ums_integration_change_history`;
CREATE TABLE `ums_integration_change_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `change_type` int(1) DEFAULT NULL COMMENT '改变类型：0->增加；1->减少',
  `change_count` int(11) DEFAULT NULL COMMENT '积分改变数量',
  `operate_man` varchar(100) DEFAULT NULL COMMENT '操作人员',
  `operate_note` varchar(200) DEFAULT NULL COMMENT '操作备注',
  `source_type` int(1) DEFAULT NULL COMMENT '积分来源：0->购物；1->管理员修改',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='积分变化历史记录表';

-- ----------------------------
--  Table structure for `ums_integration_consume_setting`
-- ----------------------------
DROP TABLE IF EXISTS `ums_integration_consume_setting`;
CREATE TABLE `ums_integration_consume_setting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `deduction_per_amount` int(11) DEFAULT NULL COMMENT '每一元需要抵扣的积分数量',
  `max_percent_per_order` int(11) DEFAULT NULL COMMENT '每笔订单最高抵用百分比',
  `use_unit` int(11) DEFAULT NULL COMMENT '每次使用积分最小单位100',
  `coupon_status` int(1) DEFAULT NULL COMMENT '是否可以和优惠券同用；0->不可以；1->可以',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='积分消费设置';

-- ----------------------------
--  Records of `ums_integration_consume_setting`
-- ----------------------------
BEGIN;
INSERT INTO `ums_integration_consume_setting` VALUES ('1', '100', '50', '100', '1');
COMMIT;

-- ----------------------------
--  Table structure for `ums_member`
-- ----------------------------
DROP TABLE IF EXISTS `ums_member`;
CREATE TABLE `ums_member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_level_id` bigint(20) DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL COMMENT '用户名',
  `password` varchar(64) DEFAULT NULL COMMENT '密码',
  `nickname` varchar(64) DEFAULT NULL COMMENT '昵称',
  `phone` varchar(64) DEFAULT NULL COMMENT '手机号码',
  `status` int(1) DEFAULT NULL COMMENT '帐号启用状态:0->禁用；1->启用',
  `create_time` datetime DEFAULT NULL COMMENT '注册时间',
  `icon` varchar(500) DEFAULT NULL COMMENT '头像',
  `gender` int(1) DEFAULT NULL COMMENT '性别：0->未知；1->男；2->女',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `city` varchar(64) DEFAULT NULL COMMENT '所做城市',
  `job` varchar(100) DEFAULT NULL COMMENT '职业',
  `personalized_signature` varchar(200) DEFAULT NULL COMMENT '个性签名',
  `source_type` int(1) DEFAULT NULL COMMENT '用户来源',
  `integration` int(11) DEFAULT NULL COMMENT '积分',
  `growth` int(11) DEFAULT NULL COMMENT '成长值',
  `luckey_count` int(11) DEFAULT NULL COMMENT '剩余抽奖次数',
  `history_integration` int(11) DEFAULT NULL COMMENT '历史积分数量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`),
  UNIQUE KEY `idx_phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='会员表';

-- ----------------------------
--  Records of `ums_member`
-- ----------------------------
BEGIN;
INSERT INTO `ums_member` VALUES ('1', '4', 'test', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'windir', '18061581849', '1', '2018-08-02 10:35:44', null, '1', '2009-06-01', '上海', '学生', 'test', null, '5000', null, null, null), ('3', '4', 'windy', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'windy', '18061581848', '1', '2018-08-03 16:46:38', null, null, null, null, null, null, null, null, null, null, null), ('4', '4', 'zhengsan', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'zhengsan', '18061581847', '1', '2018-11-12 14:12:04', null, null, null, null, null, null, null, null, null, null, null), ('5', '4', 'lisi', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'lisi', '18061581841', '1', '2018-11-12 14:12:38', null, null, null, null, null, null, null, null, null, null, null), ('6', '4', 'wangwu', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'wangwu', '18061581842', '1', '2018-11-12 14:13:09', null, null, null, null, null, null, null, null, null, null, null), ('7', '4', 'lion', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'lion', '18061581845', '1', '2018-11-12 14:21:39', null, null, null, null, null, null, null, null, null, null, null), ('8', '4', 'shari', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'shari', '18061581844', '1', '2018-11-12 14:22:00', null, null, null, null, null, null, null, null, null, null, null), ('9', '4', 'aewen', '$2a$10$NZ5o7r2E.ayT2ZoxgjlI.eJ6OEYqjH7INR/F.mXDbjZJi9HF0YCVG', 'aewen', '18061581843', '1', '2018-11-12 14:22:55', null, null, null, null, null, null, null, null, null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `ums_member_level`
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_level`;
CREATE TABLE `ums_member_level` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `growth_point` int(11) DEFAULT NULL,
  `default_status` int(1) DEFAULT NULL COMMENT '是否为默认等级：0->不是；1->是',
  `free_freight_point` decimal(10,2) DEFAULT NULL COMMENT '免运费标准',
  `comment_growth_point` int(11) DEFAULT NULL COMMENT '每次评价获取的成长值',
  `priviledge_free_freight` int(1) DEFAULT NULL COMMENT '是否有免邮特权',
  `priviledge_sign_in` int(1) DEFAULT NULL COMMENT '是否有签到特权',
  `priviledge_comment` int(1) DEFAULT NULL COMMENT '是否有评论获奖励特权',
  `priviledge_promotion` int(1) DEFAULT NULL COMMENT '是否有专享活动特权',
  `priviledge_member_price` int(1) DEFAULT NULL COMMENT '是否有会员价格特权',
  `priviledge_birthday` int(1) DEFAULT NULL COMMENT '是否有生日特权',
  `note` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='会员等级表';

-- ----------------------------
--  Records of `ums_member_level`
-- ----------------------------
BEGIN;
INSERT INTO `ums_member_level` VALUES ('1', '黄金会员', '1000', '0', '199.00', '5', '1', '1', '1', '1', '1', '1', null), ('2', '白金会员', '5000', '0', '99.00', '10', '1', '1', '1', '1', '1', '1', null), ('3', '钻石会员', '15000', '0', '69.00', '15', '1', '1', '1', '1', '1', '1', null), ('4', '普通会员', '1', '1', '199.00', '20', '1', '1', '1', '1', '0', '0', null);
COMMIT;

-- ----------------------------
--  Table structure for `ums_member_login_log`
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_login_log`;
CREATE TABLE `ums_member_login_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL,
  `login_type` int(1) DEFAULT NULL COMMENT '登录类型：0->PC；1->android;2->ios;3->小程序',
  `province` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员登录记录';

-- ----------------------------
--  Table structure for `ums_member_member_tag_relation`
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_member_tag_relation`;
CREATE TABLE `ums_member_member_tag_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) DEFAULT NULL,
  `tag_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和标签关系表';

-- ----------------------------
--  Table structure for `ums_member_product_category_relation`
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_product_category_relation`;
CREATE TABLE `ums_member_product_category_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) DEFAULT NULL,
  `product_category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员与产品分类关系表（用户喜欢的分类）';

-- ----------------------------
--  Table structure for `ums_member_receive_address`
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_receive_address`;
CREATE TABLE `ums_member_receive_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '收货人名称',
  `phone_number` varchar(64) DEFAULT NULL,
  `default_status` int(1) DEFAULT NULL COMMENT '是否为默认',
  `post_code` varchar(100) DEFAULT NULL COMMENT '邮政编码',
  `province` varchar(100) DEFAULT NULL COMMENT '省份/直辖市',
  `city` varchar(100) DEFAULT NULL COMMENT '城市',
  `region` varchar(100) DEFAULT NULL COMMENT '区',
  `detail_address` varchar(128) DEFAULT NULL COMMENT '详细地址(街道)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='会员收货地址表';

-- ----------------------------
--  Records of `ums_member_receive_address`
-- ----------------------------
BEGIN;
INSERT INTO `ums_member_receive_address` VALUES ('1', '1', '大梨', '18033441849', '0', '518000', '广东省', '深圳市', '南山区', '科兴科学园'), ('3', '1', '大梨', '18033441849', '0', '518000', '广东省', '深圳市', '福田区', '清水河街道'), ('4', '1', '大梨', '18033441849', '1', '518000', '广东省', '深圳市', '福田区', '东晓街道');
COMMIT;

-- ----------------------------
--  Table structure for `ums_member_rule_setting`
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_rule_setting`;
CREATE TABLE `ums_member_rule_setting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `continue_sign_day` int(11) DEFAULT NULL COMMENT '连续签到天数',
  `continue_sign_point` int(11) DEFAULT NULL COMMENT '连续签到赠送数量',
  `consume_per_point` decimal(10,2) DEFAULT NULL COMMENT '每消费多少元获取1个点',
  `low_order_amount` decimal(10,2) DEFAULT NULL COMMENT '最低获取点数的订单金额',
  `max_point_per_order` int(11) DEFAULT NULL COMMENT '每笔订单最高获取点数',
  `type` int(1) DEFAULT NULL COMMENT '类型：0->积分规则；1->成长值规则',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员积分成长规则表';

-- ----------------------------
--  Table structure for `ums_member_statistics_info`
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_statistics_info`;
CREATE TABLE `ums_member_statistics_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) DEFAULT NULL,
  `consume_amount` decimal(10,2) DEFAULT NULL COMMENT '累计消费金额',
  `order_count` int(11) DEFAULT NULL COMMENT '订单数量',
  `coupon_count` int(11) DEFAULT NULL COMMENT '优惠券数量',
  `comment_count` int(11) DEFAULT NULL COMMENT '评价数',
  `return_order_count` int(11) DEFAULT NULL COMMENT '退货数量',
  `login_count` int(11) DEFAULT NULL COMMENT '登录次数',
  `attend_count` int(11) DEFAULT NULL COMMENT '关注数量',
  `fans_count` int(11) DEFAULT NULL COMMENT '粉丝数量',
  `collect_product_count` int(11) DEFAULT NULL,
  `collect_subject_count` int(11) DEFAULT NULL,
  `collect_topic_count` int(11) DEFAULT NULL,
  `collect_comment_count` int(11) DEFAULT NULL,
  `invite_friend_count` int(11) DEFAULT NULL,
  `recent_order_time` datetime DEFAULT NULL COMMENT '最后一次下订单时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员统计信息';

-- ----------------------------
--  Table structure for `ums_member_tag`
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_tag`;
CREATE TABLE `ums_member_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `finish_order_count` int(11) DEFAULT NULL COMMENT '自动打标签完成订单数量',
  `finish_order_amount` decimal(10,2) DEFAULT NULL COMMENT '自动打标签完成订单金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户标签表';

-- ----------------------------
--  Table structure for `ums_member_task`
-- ----------------------------
DROP TABLE IF EXISTS `ums_member_task`;
CREATE TABLE `ums_member_task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `growth` int(11) DEFAULT NULL COMMENT '赠送成长值',
  `intergration` int(11) DEFAULT NULL COMMENT '赠送积分',
  `type` int(1) DEFAULT NULL COMMENT '任务类型：0->新手任务；1->日常任务',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员任务表';

-- ----------------------------
--  Table structure for `ums_permission`
-- ----------------------------
DROP TABLE IF EXISTS `ums_permission`;
CREATE TABLE `ums_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) DEFAULT NULL COMMENT '父级权限id',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `value` varchar(200) DEFAULT NULL COMMENT '权限值',
  `icon` varchar(500) DEFAULT NULL COMMENT '图标',
  `type` int(1) DEFAULT NULL COMMENT '权限类型：0->目录；1->菜单；2->按钮（接口绑定权限）',
  `uri` varchar(200) DEFAULT NULL COMMENT '前端资源路径',
  `status` int(1) DEFAULT NULL COMMENT '启用状态；0->禁用；1->启用',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='后台用户权限表';

-- ----------------------------
--  Records of `ums_permission`
-- ----------------------------
BEGIN;
INSERT INTO `ums_permission` VALUES ('1', '0', '商品', null, null, '0', null, '1', '2018-09-29 16:15:14', '0'), ('2', '1', '商品列表', 'pms:product:read', null, '1', '/pms/product/index', '1', '2018-09-29 16:17:01', '0'), ('3', '1', '添加商品', 'pms:product:create', null, '1', '/pms/product/add', '1', '2018-09-29 16:18:51', '0'), ('4', '1', '商品分类', 'pms:productCategory:read', null, '1', '/pms/productCate/index', '1', '2018-09-29 16:23:07', '0'), ('5', '1', '商品类型', 'pms:productAttribute:read', null, '1', '/pms/productAttr/index', '1', '2018-09-29 16:24:43', '0'), ('6', '1', '品牌管理', 'pms:brand:read', null, '1', '/pms/brand/index', '1', '2018-09-29 16:25:45', '0'), ('7', '2', '编辑商品', 'pms:product:update', null, '2', '/pms/product/updateProduct', '1', '2018-09-29 16:34:23', '0'), ('8', '2', '删除商品', 'pms:product:delete', null, '2', '/pms/product/delete', '1', '2018-09-29 16:38:33', '0'), ('9', '4', '添加商品分类', 'pms:productCategory:create', null, '2', '/pms/productCate/create', '1', '2018-09-29 16:43:23', '0'), ('10', '4', '修改商品分类', 'pms:productCategory:update', null, '2', '/pms/productCate/update', '1', '2018-09-29 16:43:55', '0'), ('11', '4', '删除商品分类', 'pms:productCategory:delete', null, '2', '/pms/productAttr/delete', '1', '2018-09-29 16:44:38', '0'), ('12', '5', '添加商品类型', 'pms:productAttribute:create', null, '2', '/pms/productAttr/create', '1', '2018-09-29 16:45:25', '0'), ('13', '5', '修改商品类型', 'pms:productAttribute:update', null, '2', '/pms/productAttr/update', '1', '2018-09-29 16:48:08', '0'), ('14', '5', '删除商品类型', 'pms:productAttribute:delete', null, '2', '/pms/productAttr/delete', '1', '2018-09-29 16:48:44', '0'), ('15', '6', '添加品牌', 'pms:brand:create', null, '2', '/pms/brand/add', '1', '2018-09-29 16:49:34', '0'), ('16', '6', '修改品牌', 'pms:brand:update', null, '2', '/pms/brand/update', '1', '2018-09-29 16:50:55', '0'), ('17', '6', '删除品牌', 'pms:brand:delete', null, '2', '/pms/brand/delete', '1', '2018-09-29 16:50:59', '0'), ('18', '0', '首页', null, null, '0', null, '1', '2018-09-29 16:51:57', '0');
COMMIT;

-- ----------------------------
--  Table structure for `ums_role`
-- ----------------------------
DROP TABLE IF EXISTS `ums_role`;
CREATE TABLE `ums_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `admin_count` int(11) DEFAULT NULL COMMENT '后台用户数量',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `status` int(1) DEFAULT '1' COMMENT '启用状态：0->禁用；1->启用',
  `sort` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='后台用户角色表';

-- ----------------------------
--  Records of `ums_role`
-- ----------------------------
BEGIN;
INSERT INTO `ums_role` VALUES ('1', '商品管理员', '商品管理员', '0', '2018-09-30 15:46:11', '1', '0'), ('2', '商品分类管理员', '商品分类管理员', '0', '2018-09-30 15:53:45', '1', '0'), ('3', '商品类型管理员', '商品类型管理员', '0', '2018-09-30 15:53:56', '1', '0'), ('4', '品牌管理员', '品牌管理员', '0', '2018-09-30 15:54:12', '1', '0');
COMMIT;

-- ----------------------------
--  Table structure for `ums_role_permission_relation`
-- ----------------------------
DROP TABLE IF EXISTS `ums_role_permission_relation`;
CREATE TABLE `ums_role_permission_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL,
  `permission_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='后台用户角色和权限关系表';

-- ----------------------------
--  Records of `ums_role_permission_relation`
-- ----------------------------
BEGIN;
INSERT INTO `ums_role_permission_relation` VALUES ('1', '1', '1'), ('2', '1', '2'), ('3', '1', '3'), ('4', '1', '7'), ('5', '1', '8'), ('6', '2', '4'), ('7', '2', '9'), ('8', '2', '10'), ('9', '2', '11'), ('10', '3', '5'), ('11', '3', '12'), ('12', '3', '13'), ('13', '3', '14'), ('14', '4', '6'), ('15', '4', '15'), ('16', '4', '16'), ('17', '4', '17');
COMMIT;

-- ----------------------------
--  View structure for `test`
-- ----------------------------
DROP VIEW IF EXISTS `test`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `test` AS select `t1`.`id` AS `id1`,`t2`.`id` AS `id2`,`t1`.`name` AS `name`,`t1`.`pic` AS `pic`,`t2`.`input_list` AS `input_list`,`t2`.`input_type` AS `input_type`,`t2`.`name` AS `name2` from (`pms_product` `t1` join `pms_product_attribute` `t2`) where (`t1`.`product_attribute_category_id` = `t2`.`product_attribute_category_id`);

SET FOREIGN_KEY_CHECKS = 1;
