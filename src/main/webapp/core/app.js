Ext.Loader.setConfig({enabled: true});
Ext.application({
	name : 'CC',
	 paths: {
        'Ext.ux': 'http://172.20.35.51:9080/yunguanshi/js/ext/4.2.1/examples/ux',
        'baseUx':'http://172.20.35.51:9080/yunguanshi/core/ux/base',
        'factory':'http://172.20.35.51:9080/yunguanshi/core/util/factory'
    },
	appFolder : 'core/app',
	controllers : ['MainController'],
	autoCreateViewport: true
});
