/*
Copyright (c) 2003-2013, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://cksource.com/license/ckfinder
*/

CKFinder.customConfig = function( config )
{
	config.language = 'vi'; // cài đặt ngôn ngữ 
	config.uiColor = '#‎AADC6E‬‬‬‬‬‬'; // cài đặt màu sắc
	config.filebrowserBrowseUrl = '/EndCKeditor/ckfinder/ckfinder.html'; // đường dẫn quan trọng

	config.filebrowserImageBrowseUrl = '/EndCKeditor/ckfinder/ckfinder.html?type=Images';
	config.filebrowserFlashBrowseUrl = '/EndCKeditor/ckfinder/ckfinder.html?type =Flash' ;
	config.filebrowserUploadUrl = '/EndCKeditor/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Files';
	config.filebrowserImageUploadUrl = '/EndCKeditor/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Images';
	config.filebrowserFlashUploadUrl = '/EndCKeditor/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Flash';
	config.image_previewText = ' '; // mặc định là ô trống khi view hình


};
