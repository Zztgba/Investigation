window.onload=function (){
	var oTitle=document.getElementById('survey_title');
	var oTitle1=document.getElementsByName('title_1');
	var oH3=oTitle.getElementsByTagName('h3');
	var oUl=oTitle.getElementsByTagName('ul');

	for (var i = 0; i < oTitle1.length; i++) {
		oTitle1[i].index=i;
		oTitle1[i].onclick=function(){
			for (var i = 0; i < oUl.length; i++) {
				oUl[i].style.display='none';
				oH3[i].style.background='none';
			};
			oUl[this.index].style.display='block';
			oH3[this.index].style.background='#cc9a5d';
		};
	};
}