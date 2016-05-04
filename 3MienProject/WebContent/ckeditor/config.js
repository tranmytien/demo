/**
 * @license Copyright (c) 2003-2014, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';
	
config.toolbar_Full =

		[

		['Source','-','Save','NewPage','Preview','-','Templates'],

		['Cut','Copy','Paste','PasteText','PasteFromWord','-','Print', 'SpellChecker', 'Scayt'],

		['Undo','Redo','-','Find','Replace','-','SelectAll','RemoveFormat'],

		['Form', 'Checkbox', 'Radio', 'TextField', 'Textarea', 'Select', 'Button', 'ImageButton', 'HiddenField'],

		'/',

		
		['NumberedList','BulletedList','-','Outdent','Indent','Blockquote','CreateDiv'],

		['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],

		['BidiLtr', 'BidiRtl' ],

		['Link','Unlink','Anchor'],
		];
	
	config.language = 'vi';// chỉnh thành tiếng việt
	config.uiColor = '#ff99ff';// chỉnh màu 
	config.filebrowserBrowseUrl ='/3MienProject/ckfinder/ckfinder.html';//tên project/ckfinder/ckfinder.html
	config.filebrowserImageBrowseUrl = '/3MienProject/ckfinder/ckfinder.html?type=Images';/// tên project /ckfinder/ckfinder.html?type=Images
	config.filebrowserFlashBrowseUrl = '/3MienProject/ckfinder/ckfinder.html?type =Flash' ;//tên project /ckfinder/ckfinder.html?type =Flash
	config.filebrowserUploadUrl = '/3MienProject/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Files';// tên project /ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Files'
	config.filebrowserImageUploadUrl = '/3MienProject/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Images';//tên project /ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Images
	config.filebrowserFlashUploadUrl = '/3MienProject/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Flash';// tên project /ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Flash
//	config.image_previewText = ' '; 
};
