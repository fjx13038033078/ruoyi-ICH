<template>
  <div>
    <div id="curtain">
      <h1 data-heading="化">非遗文化展览预约管理系统</h1>
    </div>
    <div>
      <el-carousel :interval="4000" type="card" height="300px">
        <el-carousel-item>
          <a href="https://www.baidu.com" target="_blank">
            <img src="../assets/images/01.jpg" alt="Image 1" style="width: 100%;">
          </a>
        </el-carousel-item>
        <el-carousel-item>
          <a href="https://www.jd.com" target="_blank">
            <img src="../assets/images/02.jpg" alt="Image 2" style="width: 100%;">
          </a>
        </el-carousel-item>
        <el-carousel-item>
          <a href="https://www.taobao.com" target="_blank">
            <img src="../assets/images/03.jpg" alt="Image 3" style="width: 100%;">
          </a>
        </el-carousel-item>
      </el-carousel>
      <!-- 通知公告 -->
      <el-row style="margin-top: 20px;">
        <el-col :span="12">
          <el-card style="margin-right: 20px; height: 420px;">
            <h3 slot="header">通知公告</h3>
            <el-table v-loading="loading" :data="noticeList" @selection-change="handleSelectionChange">
              <el-table-column label="序号" align="center" prop="noticeId" width="100"/>
              <el-table-column
                label="公告标题"
                align="center"
                prop="noticeTitle"
                :show-overflow-tooltip="true"
              >
                <template slot-scope="scope">
                  <span @click="showNoticeContent(scope.row)">{{ scope.row.noticeTitle }}</span>
                </template>
              </el-table-column>
              <el-table-column label="公告类型" align="center" prop="noticeType" width="100">
                <template slot-scope="scope">
                  <dict-tag :options="dict.type.sys_notice_type" :value="scope.row.noticeType"/>
                </template>
              </el-table-column>
              <el-table-column label="创建时间" align="center" prop="createTime" width="100">
                <template slot-scope="scope">
                  <span>{{ parseTime(scope.row.createTime, '{y}-{m}-{d}') }}</span>
                </template>
              </el-table-column>
            </el-table>
          </el-card>
        </el-col>
        <!-- 场馆场地数量 -->
        <el-col :span="12">
          <el-card style="margin-right: 20px; height: 420px;">
            <h3 slot="header">展览数量</h3>
              <div id="cultureExhibitionChart" style="height: 300px;"></div> <!-- echarts 柱状图 -->
          </el-card>
        </el-col>
      </el-row>
      <!-- 弹出的公告内容卡片 -->
      <el-dialog :title="selectedNotice.title" :visible.sync="showNoticeDialog" width="780px" append-to-body>
        <div slot="title" style="text-align: center;">{{ selectedNotice.title }}</div>
        <div v-html="selectedNotice.content" class="notice-content"></div>
      </el-dialog>
    </div>
  </div>
</template>
<script>
import {listNotice, getNotice} from "@/api/system/notice";
import request from '@/utils/request';
import * as echarts from 'echarts'
import {getCultureExhibitionCountMap} from "@/api/culture/exhibition";
import {parseTime} from "../utils/ruoyi";


export default {
  name: "Notice",
  dicts: ['sys_notice_status', 'sys_notice_type'],
  data() {
    return {
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 公告表格数据
      noticeList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      cultureExhibitionCountData: {}, // 存储场馆场地数量映射的数据
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        noticeTitle: undefined,
        createBy: undefined,
        status: undefined
      },
      selectedNotice: {
        title: '',
        content: ''
      },
      showNoticeDialog: false,
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        noticeTitle: [
          {required: true, message: "公告标题不能为空", trigger: "blur"}
        ],
        noticeType: [
          {required: true, message: "公告类型不能为空", trigger: "change"}
        ]
      }
    };
  },
  created() {
    this.getList();
  },
  mounted() {
    this.initCultureExhibitionChart(); // 初始化 echarts 柱状图
  },
  methods: {
    parseTime,
    /** 查询公告列表 */
    getList() {
      this.loading = true;
      listNotice(this.queryParams).then(response => {
        this.noticeList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    showNoticeContent(row) {
      this.loading = true;
      getNotice(row.noticeId).then((response) => {
        this.selectedNotice.title = response.data.noticeTitle;
        this.selectedNotice.content = response.data.noticeContent;
        this.showNoticeDialog = true;
        this.loading = false;
      });
    },
    // 获取场馆场地数量映射的数据并更新到图表中
    fetchCultureExhibitionCountMap() {
      getCultureExhibitionCountMap().then(response => {
        this.cultureExhibitionCountData = response.data;
        this.updateCultureExhibitionChart(); // 获取到数据后更新图表
      });
    },
    // 初始化 echarts 柱状图
    initCultureExhibitionChart() {
      this.cultureExhibitionChart = echarts.init(document.getElementById("cultureExhibitionChart"));
      this.fetchCultureExhibitionCountMap(); // 获取数据并更新图表
    },
    // 更新 echarts 柱状图
    updateCultureExhibitionChart() {
      // 使用获取到的数据更新图表
      const cultureNames = Object.keys(this.cultureExhibitionCountData);
      const exhibitionCounts = Object.values(this.cultureExhibitionCountData);
      const option = {
        // echarts 配置项
        xAxis: {
          type: "category",
          data: cultureNames
        },
        yAxis: {
          type: "value"
        },
        series: [{
          data: exhibitionCounts,
          type: "bar"
        }]
      };
      this.cultureExhibitionChart.setOption(option);
    }
  }
};
</script>

<style scoped lang="scss">
.notice-content::v-deep img {
  max-width: 100%;
  height: auto;
  display: block;
  margin: 0 auto;
}

$h1: rgba(45, 45, 45, 1);
$blue: #98b5cc;
$yellow: #e30f16;
$outline: rgba(#fff, .4);
$shadow: rgba($yellow, .5);

#curtain {
  background: linear-gradient(45deg, rgb(182, 182, 182) 9%, rgb(56, 56, 56) 100%);
  width: 100%;
  height: 200px;
  border-radius: 30px;
  margin-bottom: 15px;
}

h1 {
  font-family: '阿里妈妈东方大楷 Regular', sans-serif;
  font-size: 80px;
  text-align: center;
  line-height: 1;
  margin: 0;
  top: 13%;
  left: 50%;
  transform: translate(-50%, -50%);
  position: absolute;
  color: $h1;
  letter-spacing: 1rem;

  &:before {
    content: attr(data-heading);
    position: absolute;
    overflow: hidden;
    color: $yellow;
    width: 100%;
    z-index: 5;
    text-shadow: none;
    left: 325px;
    text-align: left;
    animation: flicker 3s linear infinite;
  }
}

@keyframes flicker {

  0%,
  19.999%,
  22%,
  62.999%,
  64%,
  64.999%,
  70%,
  100% {
    opacity: .99;
    text-shadow: -1px -1px 0 $outline, 1px -1px 0 $outline,
    -1px 1px 0 $outline, 1px 1px 0 $outline,
    0 -2px 8px, 0 0 2px, 0 0 5px #ff7e00,
    0 0 5px #ff4444, 0 0 2px #ff7e00, 0 2px 3px #000;
  }

  20%,
  21.999%,
  63%,
  63.999%,
  65%,
  69.999% {
    opacity: 0.4;
    text-shadow: none;
  }
}

@font-face {
  font-family: "阿里妈妈东方大楷 Regular";
  font-weight: 400;
  src: url("../assets/fonts/AlimamaDongFangDaKai-Regular.woff2") format("woff2"),
  url("../assets/fonts/AlimamaDongFangDaKai-Regular.woff") format("woff");
  font-display: swap;
}

</style>
