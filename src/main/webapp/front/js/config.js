
var projectName = '基于JSP的高校科研项目信息管理系统设计与实现';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.jsp'
}, 
{
	name: '我的地址',
	url: '../shop-address/list.jsp'
},

]


var indexNav = [

{
	name: '项目信息',
	url: './pages/xiangmuxinxi/list.jsp'
}, 

{
	name: '通知公告',
	url: './pages/news/list.jsp'
},
]

var adminurl =  "http://localhost:8080/jspmeb1ly3yq/index.jsp";

var cartFlag = false

var chatFlag = false


chatFlag = true


var menu = [{"backMenu":[{"child":[{"allButtons":["新增","查看","修改","删除","导出"],"appFrontIcon":"cuIcon-pic","buttons":["新增","查看","修改","删除","导出"],"menu":"教务管理员","menuJump":"列表","tableName":"jiaowuguanliyuan"}],"menu":"教务管理员管理"},{"child":[{"allButtons":["新增","查看","修改","删除","导出"],"appFrontIcon":"cuIcon-vipcard","buttons":["新增","查看","修改","删除","导出"],"menu":"老师","menuJump":"列表","tableName":"laoshi"}],"menu":"老师管理"},{"child":[{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-link","buttons":["新增","查看","修改","删除"],"menu":"项目分类","menuJump":"列表","tableName":"xiangmufenlei"}],"menu":"项目分类管理"},{"child":[{"allButtons":["新增","查看","修改","删除","项目分类","项目级别","导出","首页总数","首页统计","申请"],"appFrontIcon":"cuIcon-copy","buttons":["查看","修改","删除","导出","首页总数","首页统计"],"menu":"项目信息","menuJump":"列表","tableName":"xiangmuxinxi"}],"menu":"项目信息管理"},{"child":[{"allButtons":["新增","查看","修改","删除","审核","导出","项目流程"],"appFrontIcon":"cuIcon-cardboard","buttons":["查看","修改","删除","审核","导出"],"menu":"项目申请","menuJump":"列表","tableName":"xiangmushenqing"}],"menu":"项目申请管理"},{"child":[{"allButtons":["新增","查看","修改","删除","导出"],"appFrontIcon":"cuIcon-medal","buttons":["查看","修改","删除"],"menu":"项目流程","menuJump":"列表","tableName":"xiangmuliucheng"}],"menu":"项目流程管理"},{"child":[{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-rank","buttons":["查看","修改"],"menu":"轮播图管理","tableName":"config"},{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除"],"menu":"通知公告","tableName":"news"},{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-service","buttons":["新增","查看","修改","删除"],"menu":"留言建议","tableName":"chat"},{"allButtons":["查看","修改"],"appFrontIcon":"cuIcon-explore","buttons":["查看","修改"],"menu":"关于我们","tableName":"aboutus"},{"allButtons":["查看","修改"],"appFrontIcon":"cuIcon-time","buttons":["查看","修改"],"menu":"系统简介","tableName":"systemintro"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"allButtons":["新增","查看","修改","删除","项目分类","项目级别","导出","首页总数","首页统计","申请"],"appFrontIcon":"cuIcon-pay","buttons":["查看","申请"],"menu":"项目信息列表","menuJump":"列表","tableName":"xiangmuxinxi"}],"menu":"项目信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"allButtons":["新增","查看","修改","删除","项目分类","项目级别","导出","首页总数","首页统计","申请"],"appFrontIcon":"cuIcon-copy","buttons":["新增","查看","修改","删除","导出"],"menu":"项目信息","menuJump":"列表","tableName":"xiangmuxinxi"}],"menu":"项目信息管理"},{"child":[{"allButtons":["新增","查看","修改","删除","审核","导出","项目流程"],"appFrontIcon":"cuIcon-cardboard","buttons":["查看","审核","删除","导出"],"menu":"项目申请","menuJump":"列表","tableName":"xiangmushenqing"}],"menu":"项目申请管理"},{"child":[{"allButtons":["新增","查看","修改","删除","导出"],"appFrontIcon":"cuIcon-medal","buttons":["查看","删除"],"menu":"项目流程","menuJump":"列表","tableName":"xiangmuliucheng"}],"menu":"项目流程管理"}],"frontMenu":[{"child":[{"allButtons":["新增","查看","修改","删除","项目分类","项目级别","导出","首页总数","首页统计","申请"],"appFrontIcon":"cuIcon-pay","buttons":["查看","申请"],"menu":"项目信息列表","menuJump":"列表","tableName":"xiangmuxinxi"}],"menu":"项目信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"教务管理员","tableName":"jiaowuguanliyuan"},{"backMenu":[{"child":[{"allButtons":["新增","查看","修改","删除","审核","导出","项目流程"],"appFrontIcon":"cuIcon-cardboard","buttons":["查看","修改","删除","项目结题","导出","项目进度","项目流程"],"menu":"项目申请","menuJump":"列表","tableName":"xiangmushenqing"}],"menu":"项目申请管理"},{"child":[{"allButtons":["新增","查看","修改","删除","导出"],"appFrontIcon":"cuIcon-medal","buttons":["查看","修改","删除","项目结题","导出"],"menu":"项目流程","menuJump":"列表","tableName":"xiangmuliucheng"}],"menu":"项目流程管理"}],"frontMenu":[{"child":[{"allButtons":["新增","查看","修改","删除","项目分类","项目级别","导出","首页总数","首页统计","申请"],"appFrontIcon":"cuIcon-pay","buttons":["查看","申请"],"menu":"项目信息列表","menuJump":"列表","tableName":"xiangmuxinxi"}],"menu":"项目信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"老师","tableName":"laoshi"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
