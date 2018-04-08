	window.onload=function (){
		var oCon=document.getElementById('content');
		var aUl=oCon.getElementsByTagName('ul');
		var oNav=document.getElementById('nav');
		var nLi=oNav.getElementsByTagName('li');

		for (var i = 0; i < nLi.length; i++) {
			nLi[i].index=i;
			nLi[i].onclick=function (){
				for (var i = 0; i < nLi.length; i++) {
					nLi[i].className = '';
					aUl[i].className='';
				};			
            nLi[this.index].className = 'active';
            aUl[this.index].className = 'show';				
			}
		};

/*		for (var i = 0; i < aUl.length; i++) {
			fn(aUl[i]);
		};
		function fn(a){
			var aLi=a.getElementsByTagName('li');
			for (var i = 0; i < aLi.length; i++) {
				aLi[i].onmouseover=function (){
					this.getElementsByTagName('span')[0].style.display='none';
					this.getElementsByTagName('a')[0].style.display='none';
					this.getElementsByTagName('div')[0].style.display='block';
				};
				aLi[i].onmouseout=function (){
					for (var i = 0; i < aLi.length; i++) {
					this.getElementsByTagName('span')[0].style.display='inline-block';
					this.getElementsByTagName('a')[0].style.display='inline-block';
					this.getElementsByTagName('div')[0].style.display='none';
					};
				}
			}
		}*/
	}