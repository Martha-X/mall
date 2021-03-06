<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品列表</title>
</head>
<body>
	<div class="super-theme-example">
		<div style="height: 350px;">
			<table id="dgTbItem"></table>
		</div>
		<br />
		<br />
		<table id="pg" style="width: 300px"></table>
	</div>
	<script type="text/javascript">
	
		$('#dgTbItem').datagrid({
				url: 'item/getItem',
				fit: true,
				pagination: true,
				fitColumns: true,
				toolbar: [{
					text: '新增',
					iconCls: 'fa fa-plus',
					handler: function() {
						$("#item-add").click();
					}
				}, {
					text: '编辑',
					iconCls: 'fa fa-edit',
					handler: function() {}
				}, {
					text: '保存',
					iconCls: 'fa fa-save',
					handler: function() {}
				},{
					text: '删除',
					iconCls: 'fa fa-remove',
					handler: function() {}
				},'-',{
					text:'上架',
					iconCls:'"fa fa-upload',
					handler:function(){}
				},{
					text:'下架',
					iconCls:'"fa fa-download',
					handler:function(){}
				}],

				height: 400,
				columns: [
					[{
						field: 'id',
						title: '商品ID',
						width: 60,
						align:'center'
					}, {
						field: 'title',
						title: '商品标题',
						width: 200,
						align:'center'
					}, {
						field: 'cid',
						title: '叶子类目',
						width: 100,
						align:'center'
					}, {
						field: 'sellPoint',
						title: '卖点',
						width: 100,
						align:'center'
					}, {
						field: 'price',
						title: '价格',
						width: 70,
						align:'center'
					}, {
						field: 'num',
						title: '库存数量',
						width: 70,
						align:'center'
					}, {
						field: 'barcode',
						title: '条形码',
						width: 100,
						align:'center'
					},{
						field:'status',
						title:'状态',
						width:100,
						formatter:TT.formatItemStatus,
						align:'center'
					},  {
						field: 'image',
						title: '图片',
						width: 100,
						formatter:TT.formatImg,
						align:'center'
					}, {
						field: 'created',
						title: '创建日期',
						width: 130,
						formatter:TT.formatDateTime,
						align:'center'
					}, {
						field: 'updated',
						title: '更新日期',
						width: 130,
						formatter:TT.formatDateTime,
						align:'center'
					}
					]
				]
			});
		</script>
</body>
</html>