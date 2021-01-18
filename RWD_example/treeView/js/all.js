jQuery(function($){
	var sampleData = initiateDemoData();//set sampleData

	//#region variable  tree_data
	var tree_data_2 = { 
		'pictures' : {text: '圖片', type: 'folder', 'icon-class':'red'}	,
		'music' : {text: '音樂', type: 'folder', 'icon-class':'orange'}	,
		'readme' : {text: '<i class="ace-icon fa fa-file-text grey"></i> ReadMe.txt', type: 'item'},
		'manual' : {text: '<i class="ace-icon fa fa-book blue"></i> Manual.html', type: 'item'}
	}
	var tree_data = {
		'for-sale' : {text: '待售', type: 'folder'}	,
		'vehicles' : {text: '汽車', type: 'folder'}	,
		'personals' : {text: '交友', type: 'item'}
	}
	//#endregion 

	//#region set tree_data content
	
	tree_data['for-sale']['additionalParameters'] = {
		'children' : {
			'appliances' : {text: '應用', type: 'item'},
			'arts-crafts' : {text: 'Arts & Crafts', type: 'item'},
			'clothing' : {text: 'Clothing', type: 'item'},
			'computers' : {text: 'Computers', type: 'item'},
			'jewelry' : {text: 'Jewelry', type: 'item'},
			'office-business' : {text: 'Office & Business', type: 'item'},
			'sports-fitness' : {text: 'Sports & Fitness', type: 'item'}
		}
	}
	tree_data['vehicles']['additionalParameters'] = {
		'children' : {
			'cars' : {text: '車種', type: 'folder'},
			'motorcycles' : {text: '摩托車', type: 'item'},
			'boats' : {text: '船', type: 'item'}
		}
	}
	tree_data['vehicles']['additionalParameters']['children']['cars']['additionalParameters'] = {
		'children' : {
			'classics' : {text: 'Classics', type: 'item'},
			'convertibles' : {text: 'Convertibles', type: 'item'},
			'coupes' : {text: 'Coupes', type: 'item'},
			'hatchbacks' : {text: 'Hatchbacks', type: 'item'},
			'hybrids' : {text: 'Hybrids', type: 'item'},
			'suvs' : {text: 'SUVs', type: 'item'},
			'sedans' : {text: 'Sedans', type: 'item'},
			'trucks' : {text: 'Trucks', type: 'item'}
		}
	}
//#endregion
	
	//#region set tree_data_2 content
	tree_data_2['music']['additionalParameters'] = {
		'children' : [
			{text: '<i class="ace-icon fa fa-music blue"></i> song1.ogg', type: 'item'},
			{text: '<i class="ace-icon fa fa-music blue"></i> song2.ogg', type: 'item'},
			{text: '<i class="ace-icon fa fa-music blue"></i> song3.ogg', type: 'item'},
			{text: '<i class="ace-icon fa fa-music blue"></i> song4.ogg', type: 'item'},
			{text: '<i class="ace-icon fa fa-music blue"></i> song5.ogg', type: 'item'}
		]
	}
	tree_data_2['pictures']['additionalParameters'] = {
		'children' : {
			'wallpapers' : {text: 'Wallpapers', type: 'folder', 'icon-class':'pink'},
			'camera' : {text: 'Camera', type: 'folder', 'icon-class':'pink'}
		}
	}
	tree_data_2['pictures']['additionalParameters']['children']['wallpapers']['additionalParameters'] = {
		'children' : [
			{text: '<i class="ace-icon fa fa-picture-o green"></i> wallpaper1.jpg', type: 'item'},
			{text: '<i class="ace-icon fa fa-picture-o green"></i> wallpaper2.jpg', type: 'item'},
			{text: '<i class="ace-icon fa fa-picture-o green"></i> wallpaper3.jpg', type: 'item'},
			{text: '<i class="ace-icon fa fa-picture-o green"></i> wallpaper4.jpg', type: 'item'}
		]
	}
	tree_data_2['pictures']['additionalParameters']['children']['camera']['additionalParameters'] = {
		'children' : [
			{text: '<i class="ace-icon fa fa-picture-o green"></i> photo1.jpg', type: 'item'},
			{text: '<i class="ace-icon fa fa-picture-o green"></i> photo2.jpg', type: 'item'},
			{text: '<i class="ace-icon fa fa-picture-o green"></i> photo3.jpg', type: 'item'},
			{text: '<i class="ace-icon fa fa-picture-o green"></i> photo4.jpg', type: 'item'},
			{text: '<i class="ace-icon fa fa-picture-o green"></i> photo5.jpg', type: 'item'},
			{text: '<i class="ace-icon fa fa-picture-o green"></i> photo6.jpg', type: 'item'}
		]
	}

	//#endregion

	$(document).ready(function(){
		//set ace_tree
		$('#tree1').ace_tree({
			dataSource: sampleData['dataSource1'], //var sampleData[return string name]
			multiSelect: true,
			cacheItems: true,
			'open-icon' : 'ace-icon tree-minus',
			'close-icon' : 'ace-icon tree-plus',
			'itemSelect' : true,
			'folderSelect': false,
			'selected-icon' : 'ace-icon fa fa-check',
			'unselected-icon' : 'ace-icon fa fa-times',
			loadingHTML : '<div class="tree-loading"><i class="ace-icon fa fa-refresh fa-spin blue"></i></div>'
		});
		
		$('#tree2').ace_tree({
			dataSource: sampleData['dataSource2'] ,//var sampleData[return string name]
			loadingHTML:'<div class="tree-loading"><i class="ace-icon fa fa-refresh fa-spin blue"></i></div>',
			'open-icon' : 'ace-icon fa fa-folder-open',
			'close-icon' : 'ace-icon fa fa-folder',
			'itemSelect' : true,
			'folderSelect': true,
			'multiSelect': true,
			'selected-icon' : null,
			'unselected-icon' : null,
			'folder-open-icon' : 'ace-icon tree-plus',
			'folder-close-icon' : 'ace-icon tree-minus'
		});
	});
	
	
	function initiateDemoData(){
		
		var dataSource1 = function(options, callback){
			var $data = null
			if(!("text" in options) && !("type" in options)){
				$data = tree_data;//the root tree
				callback({ data: $data });
				return;
			}
			else if("type" in options && options.type == "folder") {
				if("additionalParameters" in options && "children" in options.additionalParameters)
					$data = options.additionalParameters.children || {};
				else $data = {}//no data
			}
			
			if($data != null)//this setTimeout is only for mimicking some random delay
				setTimeout(function(){callback({ data: $data });} , parseInt(Math.random() * 500) + 200);
		}
	
		var dataSource2 = function(options, callback){
			var $data = null
			if(!("text" in options) && !("type" in options)){
				$data = tree_data_2;//the root tree
				callback({ data: $data });
				return;
			}
			else if("type" in options && options.type == "folder") {
				if("additionalParameters" in options && "children" in options.additionalParameters)
					$data = options.additionalParameters.children || {};
				else $data = {}//no data
			}
			
			if($data != null)//this setTimeout is only for mimicking some random delay
				setTimeout(function(){callback({ data: $data });} , parseInt(Math.random() * 500) + 200);
		}

		return {'dataSource1': dataSource1 , 'dataSource2' : dataSource2}
	}

});
